function lib_vspeed ()

	function vertical_speed_callback(vspeed, mcp_vspeed)

		if vspeed > 0 then
			txt_set(current_vspeed_pos_text, string.format("%d", var_round(vspeed / 50) * 50))
		else
			neg_vspeed = vspeed * -1
			txt_set(current_vspeed_neg_text, string.format("%d",var_round(neg_vspeed / 50) * 50))
		end
		
		-- Vertical speed needle
		-- Cap the speed at 6000 fpm for the needle

		vspeed = var_cap(vspeed, -6000, 6000)
		
		
		if vspeed > 2000 then
			img_rotate(img_vsi_needle, 6.5 / 4000 * (vspeed - 2000) + 49)
		elseif vspeed > 1500 then
			img_rotate(img_vsi_needle, 6.5 / 500 * (vspeed - 1500) + 42.5)
		elseif vspeed > 1000 then
			img_rotate(img_vsi_needle, 8.5 / 500 * (vspeed - 1000) + 34)
		elseif vspeed > 500 then
			img_rotate(img_vsi_needle, 15 / 500 * (vspeed - 500) + 19)
		elseif vspeed >= 0 then
			img_rotate(img_vsi_needle, 19 / 500 * vspeed)
		elseif vspeed < -2000 then
			img_rotate(img_vsi_needle, 6.5 / 4000 * (vspeed + 2000) - 49)
		elseif vspeed < -1500 then
			img_rotate(img_vsi_needle, 6.5 / 500 * (vspeed + 1500) - 42.5)
		elseif vspeed < -1000 then
			img_rotate(img_vsi_needle, 8.5 / 500 * (vspeed + 1000) - 34)
		elseif vspeed < -500 then
			img_rotate(img_vsi_needle, 15 / 500 * (vspeed + 500) - 19)
		elseif vspeed < 0 then
			img_rotate(img_vsi_needle, 19 / 500 * vspeed)
		end
		
		
		-- Move the vertical speed bug
		
		mcp_vspeed = var_cap(mcp_vspeed, -6000, 6000)

		if mcp_vspeed >= 2000 then
			move(vspeed_bug, nil, 233 - 40 / 4000 * (mcp_vspeed - 2000), nil, nil)
		elseif mcp_vspeed >= 1000 then
			move(vspeed_bug, nil, 293 - 60 / 1000 * (mcp_vspeed - 1000), nil, nil)
		elseif mcp_vspeed >= 0 then
			move(vspeed_bug, nil, 381 - 88 / 1000 * mcp_vspeed, nil, nil)
		elseif mcp_vspeed <= -4000 then
			move(vspeed_bug, nil, 40 / 4000 * math.abs(mcp_vspeed + 2000) + 529, nil, nil)
		elseif mcp_vspeed <= -1000 then
			move(vspeed_bug, nil, 60 / 1000 * math.abs(mcp_vspeed + 1000) + 469, nil, nil)
		elseif mcp_vspeed < 0 then
			move(vspeed_bug, nil, 88 / 1000 * math.abs(mcp_vspeed) + 381, nil, nil)
		end
		
		visible(current_vspeed_pos_text,		vspeed >= 400) -- Displays vertical speed when greater than 400 feet per minute.
		visible(current_vspeed_neg_text,		vspeed <= -400) -- Displays vertical speed when greater than 400 feet per minute.
		visible(vspeed_bug, 					mcp_vspeed > 10 or mcp_vspeed < -10)
		--visible(img_vsi_needle, 				vspeed > 20 or vspeed < -20)

	end

	-- Variable subscribe
	xpl_dataref_subscribe("sim/cockpit2/gauges/indicators/vvi_fpm_pilot", "FLOAT", 
						  "sim/cockpit/autopilot/vertical_velocity", "FLOAT", vertical_speed_callback)


end

