function lib_roll_pitch ()

	function roll_pitch_callback(roll, pitch, slip, pfd_fd_cmd, cmd_a_status, fd_pitch, fd_roll, nose_gear_force)

		roll = roll * -1
		
		visible(img_slip_indicator, math.abs(roll) < 35 and math.abs(slip) < 25)
		visible(img_slip_indicator_warn, math.abs(roll) >= 35 or math.abs(slip) >= 25)
		visible(img_bank_angle_white, math.abs(roll) < 35)
		visible(img_bank_angle_amber, math.abs(roll) >= 35)
		
		xbank, ybank = geo_rotate_coordinates(roll, 168)
		img_rotate(img_bank_angle_white, roll)
		img_rotate(img_bank_angle_amber, roll)
		move(img_bank_angle_white, xbank + 330.963, 199 + 168 + ybank, nil, nil)
		move(img_bank_angle_amber, xbank + 330.963, 199 + 168 + ybank, nil, nil)

		xslip, yslip = geo_rotate_coordinates(roll, 148)
		roll_rad = math.rad(roll)

		local x = slip * math.cos(roll_rad)
		local y = slip * math.sin(roll_rad)

		img_rotate(img_slip_indicator, roll)
		move(img_slip_indicator, xslip + x + 330.963, 205 + 170 + y + yslip, nil, nil)
		img_rotate(img_slip_indicator_warn, roll)
		move(img_slip_indicator_warn, xslip + x + 330.963, 205 + 170 + y + yslip, nil, nil)

		pitch = var_cap(pitch, -40, 40)
		radial = math.rad(roll)
			
		x = -(math.sin(radial) * pitch * 8.1)
		y = (math.cos(radial) * pitch * 8.1)

		move(img_horz_back, x - 401.5, y - 370, nil, nil)
		move(img_horz_marks, x + 248.523, y - 370, nil, nil)

		img_rotate(img_horz_back,roll)
		img_rotate(img_horz_marks, roll)
		
		if pfd_fd_cmd == 1 and cmd_a_status == 0 then
			txt_set(cmd_fd_text, "FD")
		elseif pfd_fd_cmd == 1 and cmd_a_status == 1 then
			txt_set(cmd_fd_text, "CMD")
		else
			txt_set(cmd_fd_text, " ")
		end
		visible(cmd_fd_text,					pfd_fd_cmd > 0)
		
			-- Move flight director bank
		visible(img_fd_vnav, pfd_fd_cmd == 1 and nose_gear_force == 0)
		move(img_fd_vnav, 347 + ((roll + fd_roll) * 3.05), nil, nil, nil)
		
		-- Move flight director pitch
		visible(img_fd_hnav, pfd_fd_cmd == 1 and nose_gear_force == 0)
		move(img_fd_hnav, nil, 381 + (fd_pitch * -10.5), nil, nil)
		
	end
	xpl_dataref_subscribe("sim/cockpit2/gauges/indicators/roll_AHARS_deg_pilot", "FLOAT", 
						  "sim/cockpit2/gauges/indicators/pitch_AHARS_deg_pilot", "FLOAT", 
						  "sim/cockpit2/gauges/indicators/slip_deg", "FLOAT",
						  "laminar/B738/autopilot/pfd_fd_cmd", "INT", 
						  "laminar/B738/autopilot/cmd_a_status", "INT", 
						  "laminar/B738/pfd/flight_director_pitch_pilot", "FLOAT", 
						  "sim/cockpit/autopilot/flight_director_roll", "FLOAT", 
						  "sim/flightmodel/forces/fnrml_gear", "FLOAT", roll_pitch_callback)

end