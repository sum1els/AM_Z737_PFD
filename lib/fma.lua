function lib_fma()


	function FMA(pfd_spd_mode,pfd_hdg_mode, pfd_hdg_mode_arm,pfd_alt_mode, pfd_alt_mode_arm,rec_thr_modes, rec_thr2_modes, rec_hdg_modes, rec_alt_modes, rec_cmd_modes)
	
		if pfd_spd_mode 		== 1 then
			txt_set(ap_mode_left_top_white, 	"ARM")
		elseif pfd_spd_mode 	== 2 then
			txt_set(ap_mode_left_top_green, 	"N1")
		elseif pfd_spd_mode 	== 3 then
			txt_set(ap_mode_left_top_green, 	"MCP SPD")
		elseif pfd_spd_mode 	== 4 then
			txt_set(ap_mode_left_top_green, 	"FMC SPD")
		elseif pfd_spd_mode 	== 5 then
			txt_set(ap_mode_left_top_green, 	"GA")
		elseif pfd_spd_mode 	== 6 then
			txt_set(ap_mode_left_top_green, 	"THR HLD")
		elseif pfd_spd_mode 	== 7 then
			txt_set(ap_mode_left_top_green, 	"RETARD")
		else
			txt_set(ap_mode_left_top_green, 	" ")
		end
		visible(ap_mode_left_top_green, 		pfd_spd_mode > 1)
		visible(ap_mode_left_top_white, 		pfd_spd_mode == 1)
		
		if pfd_hdg_mode 		== 1 then
			txt_set(ap_mode_middle_top, 		"HDL SEL")
		elseif pfd_hdg_mode 	== 2 then
			txt_set(ap_mode_middle_top, 		"VOR/LOC")
		elseif pfd_hdg_mode 	== 3 then
			txt_set(ap_mode_middle_top, 		"LNAV")
		elseif pfd_hdg_mode 	== 4 then
			txt_set(ap_mode_middle_top, 		"ROLLOUT")
		elseif pfd_hdg_mode 	== 5 then
			txt_set(ap_mode_middle_top, 		"FAC")
		else
			txt_set(ap_mode_middle_top, 		" ")	
		end
		visible(ap_mode_middle_top,				pfd_hdg_mode > 0)
		
		if pfd_hdg_mode_arm 	== 1 then
			txt_set(ap_mode_middle_bottom, 		"VOR/LOC")
		elseif pfd_hdg_mode_arm == 2 then
			txt_set(ap_mode_middle_bottom, 		"ROLLOUT")
		elseif pfd_hdg_mode_arm == 3 then
			txt_set(ap_mode_middle_bottom, 		"LNAV")
		elseif pfd_hdg_mode_arm == 4 then
			txt_set(ap_mode_middle_bottom, 		"FAC")
		else
			txt_set(ap_mode_middle_bottom, 		" ")
		end
		visible(ap_mode_middle_bottom,			pfd_hdg_mode_arm > 0)
	
		if pfd_alt_mode 			== 1 then
			txt_set(ap_mode_right_top, 			"V/S")
		elseif pfd_alt_mode 		== 2 then
			txt_set(ap_mode_right_top,			"MCP SPD")
		elseif pfd_alt_mode 		== 3 then
			txt_set(ap_mode_right_top, 			"ALT/ACQ")
		elseif pfd_alt_mode 		== 4 then
			txt_set(ap_mode_right_top, 			"ALT HOLD")
		elseif pfd_alt_mode 		== 5 then
			txt_set(ap_mode_right_top, 			"G/S")
		elseif pfd_alt_mode 		== 6 then
			txt_set(ap_mode_right_top, 			"FLARE")
		elseif pfd_alt_mode 		== 7 then
			txt_set(ap_mode_right_top, 			"G/P")
		elseif pfd_alt_mode 		== 8 then
			txt_set(ap_mode_right_top, 			"VNAV SPD")
		elseif pfd_alt_mode 		== 9 then
			txt_set(ap_mode_right_top, 			"VNAV PTH")
		elseif pfd_alt_mode 		== 10 then
			txt_set(ap_mode_right_top, 			"VNAV ALT")
		elseif pfd_alt_mode 		== 11 then
			txt_set(ap_mode_right_top, 			"TO/GA")
		else
			txt_set(ap_mode_right_top, 			" ")
		end
		visible(ap_mode_right_top,				pfd_alt_mode > 0)
		
		if pfd_alt_mode_arm 		== 1 then
			txt_set(ap_mode_right_bottom, 		"G/S")
		elseif pfd_alt_mode_arm 	== 2 then
			txt_set(ap_mode_right_bottom, 		"V/S")
		elseif pfd_alt_mode_arm 	== 3 then
			txt_set(ap_mode_right_bottom, 		"FLARE")
		elseif pfd_alt_mode_arm 	== 4 then
			txt_set(ap_mode_right_bottom, 		"G/P")
		elseif pfd_alt_mode_arm 	== 5 then
			txt_set(ap_mode_right_bottom, 		"VNAV")
		else
			txt_set(ap_mode_right_bottom, 		" ")
		end
		--txt_set(ap_mode_right_bottom, "G/S V/S")
		visible(ap_mode_right_bottom,			pfd_alt_mode_arm > 0)
		
		--boxes
		visible(ap_mode_top_left_rect,			rec_thr_modes == 1)
		visible(ap_mode_top_left_white_rect,	rec_thr2_modes == 1)
		visible(ap_mode_top_middle_rect,		rec_hdg_modes == 1)
		visible(ap_mode_top_right_rect,			rec_alt_modes == 1)
		visible(cmd_fd_rect,					rec_cmd_modes == 1)
	end
	xpl_dataref_subscribe(	"laminar/B738/autopilot/pfd_spd_mode", "INT",
							"laminar/B738/autopilot/pfd_hdg_mode", "INT",
							"laminar/B738/autopilot/pfd_hdg_mode_arm", "INT",
							"laminar/B738/autopilot/pfd_alt_mode", "INT", 
							"laminar/B738/autopilot/pfd_alt_mode_arm", "INT",
							"laminar/B738/autopilot/rec_thr_modes", "INT",
							"laminar/B738/autopilot/rec_thr2_modes", "INT",
							"laminar/B738/autopilot/rec_hdg_modes", "INT",
							"laminar/B738/autopilot/rec_alt_modes", "INT",
							"laminar/B738/autopilot/rec_cmd_modes", "INT",
							FMA)




end