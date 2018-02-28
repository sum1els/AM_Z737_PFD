function lib_altitude ()

--/// altitude text ends 10, 100 and 1000
	
	gbl_stored_baro_alt = 0

	function altitude_callback(alt_disagree, ias_disagree, baro_in_hpa, baro_pilot, baro_set_std_pilot, trans_lvl, altitude_ft_pilot, radio_altimeter_height, gear_force, mcp_alt_dial, rec_alt_alert, minimums, dh_pilot, dh_lit_pilot, irs_mode)

		visible(alt_alert_rec,							rec_alt_alert == 1)
		
		if mcp_alt_dial >= 10000 then
			txt_set(mcp_alt_ten_thou_text,				string.sub(mcp_alt_dial, 0,2))
		elseif mcp_alt_dial >= 1000 then
			txt_set(mcp_alt_ten_thou_text,				string.sub(mcp_alt_dial, 0,1))
		end
			txt_set(mcp_alt_thou_text,					string.sub(mcp_alt_dial, -3))
		
		visible(mcp_alt_ten_thou_text,	mcp_alt_dial >= 1000)
		visible(mcp_alt_thou_text,true)

		altitude_ft_pilot = var_cap(altitude_ft_pilot, 0, 90400)
		
		visible(img_alt_bug, mcp_alt_dial >= 1)
		move(img_alt_bug, nil, var_cap(341.5 - (344 / 500 * (mcp_alt_dial - altitude_ft_pilot)), 38, 655), nil, nil)

		running_txt_move_carot(running_text_alt, (altitude_ft_pilot / 200) * -1)
		running_img_move_carot(running_img_alt, (altitude_ft_pilot / 200) * -0.4)
		
		running_txt_move_carot(running_text_inner_alt_minor_id, (altitude_ft_pilot / 20) * -1)
		
		if altitude_ft_pilot % 100 > 90 then
			running_txt_move_carot(running_text_inner_alt_major100_id, ( altitude_ft_pilot - 90 - (math.floor(altitude_ft_pilot / 100) * 90) ) * -0.1 )
		else
			running_txt_move_carot(running_text_inner_alt_major100_id, math.floor(altitude_ft_pilot / 100) * -1)
		end
		
		if (altitude_ft_pilot % 1000) > 990 then
			running_txt_move_carot(running_text_inner_alt_major1000_id, (( altitude_ft_pilot - 990 - (math.floor(altitude_ft_pilot / 1000) * 990) ) * -0.1))
		else
			running_txt_move_carot(running_text_inner_alt_major1000_id, math.floor( altitude_ft_pilot / 1000 ) * -1)
		end 

		--running_img_move_carot(running_img_1000marker, (altitude_ft_pilot / 1000) * -1)
		

		if radio_altimeter_height > 5 then
			off_the_ground = 1
		else
			off_the_ground = 0
		end

		visible(qnh_value_text, 		baro_set_std_pilot == 0 and altitude_ft_pilot < trans_lvl)
		visible(qnh_unit_text, 			baro_set_std_pilot == 0 and altitude_ft_pilot < trans_lvl)
		
		visible(qnh_value_amber_text,	baro_set_std_pilot == 0 and altitude_ft_pilot > trans_lvl)
		visible(qnh_unit_amber_text, 	baro_set_std_pilot == 0 and altitude_ft_pilot > trans_lvl)
		visible(qnh_amber_rect,			baro_set_std_pilot == 0 and altitude_ft_pilot > trans_lvl)
		
		visible(alt_disagree_img, alt_disagree == 1)
		visible(ias_disagree_img, ias_disagree == 1)
		
		visible(qnh_std_text, 			baro_set_std_pilot == 1 and ((altitude_ft_pilot > trans_lvl and off_the_ground == 1) or (altitude_ft_pilot < trans_lvl and off_the_ground == 0)))
		visible(qnh_std_amber_text, 	baro_set_std_pilot == 1 and altitude_ft_pilot < trans_lvl and off_the_ground == 1)
		visible(qnh_std_amber_rect,		baro_set_std_pilot == 1 and altitude_ft_pilot < trans_lvl and off_the_ground == 1)
		
		visible(qnh_value_white_text, 	baro_set_std_pilot == 1)
		visible(qnh_unit_white_text, 	baro_set_std_pilot == 1)
		
		visible(radio_alt_box,			radio_altimeter_height < 2500 and irs_mode == 2)
		visible(radio_altimeter_text,	radio_altimeter_height < 2500 and irs_mode == 2)
		
		visible(img_grn_marker,			var_round(altitude_ft_pilot) < 10000)
		
		if gear_force > 0 then
			txt_set(radio_altimeter_text, 	"-4") -- altimeter to display -4 when at the gate. need to calibrate to display 0 at touchdown. http://www.airliners.net/forum/viewtopic.php?t=776215 
		else
			--txt_set(radio_altimeter_text, 	string.format("%d", var_round(radio_altimeter_height, -1)))
			txt_set(radio_altimeter_text, 	string.format("%d", var_round(radio_altimeter_height / 20) * 20))
			 
		end
			
		--////
		if baro_in_hpa == 0 then
			txt_set(qnh_unit_text, "IN.")
			txt_set(qnh_unit_white_text, "IN.")
			txt_set(qnh_unit_amber_text, "IN.")
			txt_set(qnh_value_text, string.format("%.2f",baro_pilot))
			txt_set(qnh_value_white_text, string.format("%.2f",baro_pilot))
			txt_set(qnh_value_amber_text, string.format("%.2f",baro_pilot))

		else
			txt_set(qnh_unit_text, "HPA")
			txt_set(qnh_unit_white_text, "HPA")
			txt_set(qnh_unit_amber_text, "HPA")
			txt_set(qnh_value_text, var_round(baro_pilot * 33.86389))
			txt_set(qnh_value_white_text, var_round(baro_pilot * 33.86389))
			txt_set(qnh_value_amber_text, var_round(baro_pilot * 33.86389))

		end
		
		if dh_pilot < 10 then
			txt_set(radio_baro_text_value, string.format("0%.f", dh_pilot))
		else
			txt_set(radio_baro_text_value, var_round(dh_pilot))
		end
		if minimums == 0 then txt_set(radio_baro_text, "RADIO") else txt_set(radio_baro_text, "BARO") end
		
		visible(radio_baro_text,			dh_pilot > 0)
		visible(radio_baro_text_value,		dh_pilot > 0)

		
		visible(img_baro_pointer_green,		dh_lit_pilot == 1)
		move(img_baro_pointer_green, nil, 359.573 - (344 / 500 * dh_pilot), nil, nil) --just added on the ground, not yet tested in flight.
		
		move(img_ground, nil, 383 + (344 / 500 * radio_altimeter_height), nil, nil)


	end
	xpl_dataref_subscribe(	"laminar/B738/autopilot/alt_disagree", "INT",
							"laminar/B738/autopilot/ias_disagree", "INT",
							"laminar/B738/EFIS_control/capt/baro_in_hpa", "INT",
							"laminar/B738/EFIS/baro_sel_in_hg_pilot", "FLOAT", 
							"laminar/B738/EFIS/baro_set_std_pilot", "INT",
							"laminar/B738/FMS/fmc_trans_lvl", "INT",
							"sim/cockpit2/gauges/indicators/altitude_ft_pilot", "FLOAT", 
							"sim/cockpit2/gauges/indicators/radio_altimeter_height_ft_pilot", "FLOAT", 
							"sim/flightmodel/forces/fnrml_gear", "FLOAT", 
							"laminar/B738/autopilot/mcp_alt_dial", "INT", 
							"laminar/B738/autopilot/rec_alt_alert", "INT",
							"laminar/B738/EFIS_control/cpt/minimums", "INT", -- 0 radio, 1 baro
							"laminar/B738/pfd/dh_pilot", "INT",
							"sim/cockpit2/gauges/indicators/radio_altimeter_dh_lit_pilot", "INT",
							"laminar/B738/irs/irs_mode", "INT",
							altitude_callback)

end