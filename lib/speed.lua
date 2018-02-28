function lib_speed ()

	function speed_callback(airspeed_kts_pilot, mcp_speed, mcp_speed_mach, vvi_fpm_pilot, machno)

		airspeed_kts_pilot = var_cap(airspeed_kts_pilot, 45, 999)
		
		txt_set(mach_airspeed_text,					"." ..string.sub(string.format("%.3f", machno), -3))
		
		if mcp_speed_mach < 1 then
			txt_set(selected_airspeed_text,			"." ..string.sub(string.format("%.2f", mcp_speed_mach), -2))
		else
			txt_set(selected_airspeed_text,			var_round(mcp_speed_mach))
		end
		
		
		visible(img_spd_bug, mcp_speed > 0)
		move(img_spd_bug, nil, var_cap(371.4 - (49 / 10 * (mcp_speed - airspeed_kts_pilot)), 82, 672), nil, nil)

		running_txt_move_carot(running_text_inner_speed_one_id, (airspeed_kts_pilot / 1) * -1)
		
		if airspeed_kts_pilot % 10 > 9 then
			running_txt_move_carot(running_text_inner_speed_ten_id, ( airspeed_kts_pilot - 9 - (math.floor(airspeed_kts_pilot / 10) * 9) ) * -1 )
		else
			running_txt_move_carot(running_text_inner_speed_ten_id, math.floor(airspeed_kts_pilot / 10) * -1)
		end
		
		if airspeed_kts_pilot % 100 > 99 then
			running_txt_move_carot(running_text_inner_speed_hundred_id, ( airspeed_kts_pilot / 10 - 9.9 - (math.floor(airspeed_kts_pilot / 100) * 9.9) ) * -10 )
		else
			running_txt_move_carot(running_text_inner_speed_hundred_id, math.floor(airspeed_kts_pilot / 100) * -1)
		end

		running_txt_move_carot(running_text_speed, (airspeed_kts_pilot / 20) * -1)
		running_img_move_carot(running_img_speed, (airspeed_kts_pilot / 20) * -2)
		
			-- Adjust the moving viewport for the speed tape
		tape_height = var_cap(284 / 65 * (airspeed_kts_pilot - 30) + 306, 306, 590)
		viewport_rect(running_text_speed, 16.223, 95, 100, tape_height)
		viewport_rect(running_img_speed, 99.4, 94.5, 30, tape_height)
		

		visible(selected_airspeed_text,			true)
		visible(mach_airspeed_text,				machno > 0.4)


	end
	xpl_dataref_subscribe("sim/cockpit2/gauges/indicators/airspeed_kts_pilot", "FLOAT",
						  "laminar/B738/autopilot/mcp_speed_dial_kts", "INT",
						  "laminar/B738/autopilot/mcp_speed_dial_kts_mach", "FLOAT",
						  "sim/cockpit2/gauges/indicators/vvi_fpm_pilot", "FLOAT",
						  "sim/flightmodel/misc/machno", "FLOAT", speed_callback)					  
end
