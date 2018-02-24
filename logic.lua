default_black_bg = canvas_add(0, 0, 800, 800, function()
	_fill("black")
end) visible(default_black_bg,true)

img_horz_back = 				img_add("horizon.png", -401.5, -370, 1500, 1500)visible(img_horz_back,false)

--img_mainPFD =					img_add_fullscreen("main_PFD.png")

img_mainPFD =					img_add("main_PFD.png", 0, 0, 800, 800)visible(img_mainPFD,false)

function item_value_callback_alt(i)
	return string.format("%d", i * 200 * -1 )
end

running_text_alt = running_txt_add_ver(566,-179,8,130,137,item_value_callback_alt,"size:20px; font:my737glass.otf; color:white; halign:right;")
viewport_rect(running_text_alt, 598, 95, 100, 590)
running_txt_move_carot(running_text_alt, 0)

function item_value_callback_speed(i)
    return string.format("%d", 0 - (i * 20) )
end

running_text_speed = running_txt_add_ver(-6,-120,10,100,98.5,item_value_callback_speed,"size:20px; font:my737glass.otf; color:white; halign:right;")
running_txt_move_carot(running_text_speed, 0)


-- IMAGES START

running_img_alt = 				running_img_add_ver("alt_markers.png",597,40,8,20,344)
running_img_move_carot(running_img_alt, 0)
viewport_rect(running_img_alt, 592, 94.5, 30, 590)

running_img_speed =				running_img_add_ver("spd_markers.png",104,89,20,16.2,49.25)
running_img_move_carot(running_img_speed, 0)


--//// track indicator
track_indicator_circle_img = 	img_add("track_indicator_circle_img.png", 107.877, 698.045, 482.399, 482.399)visible(track_indicator_circle_img,false)
track_pointer_img = 			img_add("track_pointer_img.png", 338.355, 699.245, 21.443, 480)visible(track_pointer_img,false)
current_heading_pointer_img = 	img_add("current_hdg_pointer_img.png", 336.291, 675.933, 25.571, 525.625)visible(current_heading_pointer_img,false)
selected_heading_bug_img = 		img_add("selected_hdg_bug_img.png", 331.5765, 681.673, 35, 514.143)visible(selected_heading_bug_img,false)
--////
img_v_speed_tape = 				img_add("v_speed_tape.png", 726.250, 184.817, 71.644, 400.382)visible(img_v_speed_tape,false)
img_horz_marks = 				img_add("horizon_marks.png", 248.523, -370, 200, 1500) visible(img_horz_marks,false)
viewport_rect(img_horz_marks, 196, 260, 300, 300)
--viewport_rect(img_horz_marks, 170, 220, 320, 340)
--img_bank_indicators_mask =		img_add("bank_indicators_mask_img.png", 159.524, (800 - 112.416 - 501.494), 377.363, 112.416)visible(img_bank_indicators_mask,false)
img_bank_indicators =			img_add("bank_indicators_img.png", 174.205, 183.442, 348.690, 106.585)visible(img_bank_indicators,false)
--//// markers
i_marker_img = 					img_add("i_marker_img.png", 484, 194.6, 45.4, 45.4)visible(i_marker_img,false)
m_marker_img = 					img_add("m_marker_img.png", 484, 194.6, 45.4, 45.4)visible(m_marker_img,false)
o_marker_img = 					img_add("o_marker_img.png", 484, 194.6, 45.4, 45.4)visible(o_marker_img,false)
--
img_fd_hnav =					img_add("flight_director.png", 238, 377, 222, 4) visible(img_fd_hnav,false)
img_fd_vnav = 					img_add("flight_director.png", 348, 267, 4, 222) visible(img_fd_vnav,false)

img_center_box =				img_add("center_box.png",341.077, 375.656, 15, 15) visible(img_center_box, false)
img_alt_bug =					img_add("alt_bug_img.png", 594, 341.5, 38, 86.5) visible(img_alt_bug,false)
viewport_rect(img_alt_bug, 590, 95, 50, 590)
img_alt_box_m =					img_add("img_alt_box_m.png", 615 + (122.107 - 109.084) , (340.02 - 28.306) + 2, 109.084, 28.306) visible(img_alt_box_m,false)
img_alt_box =					img_add("alt_box_img.png", 615, 340.02, 122.107, 88.446) visible(img_alt_box,false)
img_spd_box =					img_add("spd_box_img.png", 8.477, 340.02, 94.769, 88.446) visible(img_spd_box,false)
img_spd_bug =					img_add("speed_bug_img.png", 103.518, 371.4, 44.930, 25.223) visible(img_spd_bug,false)
img_vsi_needle =				img_add("vsi_needle.png", 640, 383, 470, 3) visible(img_vsi_needle,false)
viewport_rect(img_vsi_needle, 751, 190, 50, 396)
img_grn_marker =				img_add("green_marker.png", 635, 364, 20, 38) visible(img_grn_marker,false)



-- DRAWINGS START

ap_mode_top_left_rect = canvas_add(0, 0, 800, 800, function() -- pfd_spd_mode
	_rect(135, 8.727, 140, 30, 1)
	_stroke("lime", 2)
end) visible(ap_mode_top_left_rect,false)

ap_mode_top_left_white_rect = canvas_add(0, 0, 800, 800, function() --pfd_spd_mode
	_rect(135, 8.727, 140, 30, 1)
	_stroke("white", 2)
end) visible(ap_mode_top_left_white_rect,false)

ap_mode_top_middle_rect = canvas_add(0, 0, 800, 800, function() -- pfd_hdg_mode
	_rect(286, 8.727, 140, 30, 1)
	_stroke("lime", 2)
end) visible(ap_mode_top_middle_rect,false)

ap_mode_top_right_rect = canvas_add(0, 0, 800, 800, function() --pfd_alt_mode
	_rect(437, 8.727, 140, 30, 1)
	_stroke("lime", 2)
end) visible(ap_mode_top_right_rect,false)

cmd_fd_rect = canvas_add(0, 0, 800, 800, function()
	_rect(278.5, 145, 140, 34, 1)
	_stroke("lime", 2)
end) visible(cmd_fd_rect,false)

qnh_amber_rect = canvas_add(0, 0, 800, 800, function()
	_rect(595, 697, 128, 34, 1)
	_stroke("#FFAE2A", 2)
end) visible(qnh_amber_rect,false)

qnh_std_amber_rect = canvas_add(0, 0, 800, 800, function()
	_rect(600, 697, 105, 34, 1)
	_stroke("#FFAE2A", 2)
end) visible(qnh_std_amber_rect,false)

radio_alt_box = canvas_add(0, 0, 800, 800, function()
	_rect(285, 520, 125, 50, 0)
	--_stroke("#FFAE2A", 2)
	_fill("black")
end) visible(radio_alt_box,false)

alt_alert_rec = canvas_add(0, 0, 800, 800, function()
	_rect(600, 43, 105, 38, 1)
	_stroke("magenta", 3)
end) visible(alt_alert_rec,false)

vspeed_bug = canvas_add(750, 381, 18, 8, function()
	_move_to(0,2)
	_line_to(18,2)
	_stroke("magenta", 2)
	_move_to(0,6)
	_line_to(18,6)
	_stroke("magenta", 2)
end) visible(vspeed_bug,false)





-- DRAWINGS STOP

-- TEXT STYLES START

selected_airspeed_text = 	txt_add(" ", "size:30px; font:my737glass.otf; color: magenta; halign:center;", 16.5, 45, 100, 38)visible(selected_airspeed_text,false)
mach_airspeed_text = 		txt_add(" ", "size:34px; font:my737glass.otf; color: white; halign:center;", 16.5, 700, 100, 38)visible(mach_airspeed_text,false)
mcp_alt_ten_thou_text = 	txt_add(" ", "size:30px; font:my737glass.otf; color: magenta; halign:right;", 600, 45, 46, 38)visible(mcp_alt_ten_thou_text,false)
mcp_alt_thou_text = 		txt_add(" ", "size:28px; font:my737glass.otf; color: magenta; halign:left;", 645, 47, 100, 32)visible(mcp_alt_thou_text,false)
selected_hdg_bug_text = 	txt_add(" ", "size:18px; font:my737glass.otf; color: magenta; halign:right;", 270, 770, 40, 20)visible(selected_hdg_bug_text,false)
selected_hdg_bug_text1 = 	txt_add(" ", "size:14px; font:my737glass.otf; color: magenta; halign:left;", 309, 773, 20, 16)visible(selected_hdg_bug_text1,false)
--
ap_mode_left_top_green = 	txt_add(" ", "size:24px; font:my737glass.otf; color: lime; halign:center;", 132.236, 10, 146, 28)visible(ap_mode_left_top_green,false)
ap_mode_left_top_white = 	txt_add(" ", "size:24px; font:my737glass.otf; color: white; halign:center;", 132.236, 10, 146, 28)visible(ap_mode_left_top_white,false)
ap_mode_middle_top = 		txt_add(" ", "size:24px; font:my737glass.otf; color: lime; halign:center;", 283.486, 10, 146, 28)visible(ap_mode_middle_top,false)
ap_mode_right_top = 		txt_add(" ", "size:24px; font:my737glass.otf; color: lime; halign:center;", 433.844, 10, 146, 28)visible(ap_mode_right_top,false)
ap_mode_middle_bottom = 	txt_add(" ", "size:14px; font:my737glass.otf; color: white; halign:center;", 283.486, 43, 146, 18)visible(ap_mode_middle_bottom,false)
ap_mode_right_bottom = 		txt_add(" ", "size:14px; font:my737glass.otf; color: white; halign:center;", 433.844, 43, 146, 18)visible(ap_mode_right_bottom,false)
--
cmd_fd_text = 				txt_add(" ", "size:32px; font:my737glass.otf; color: lime; halign:center;", 309, 143, 80, 36)visible(cmd_fd_text,false)
radio_baro_text = 			txt_add(" ", "size:18px; font:my737glass.otf; color: lime; halign:left;", 483.949, 593.3, 80, 22)visible(radio_baro_text,false)
--
qnh_value_text = 			txt_add(" ", "size:24px; font:my737glass.otf; color: lime; halign:left;", 599.468, 700, 80, 30)visible(qnh_value_text,false)
qnh_unit_text = 			txt_add(" ", "size:16px; font:my737glass.otf; color: lime; halign:left;", 686.960, 708.66, 45, 20)visible(qnh_unit_text,false)
qnh_value_amber_text = 		txt_add(" ", "size:24px; font:my737glass.otf; color: #FFAE2A; halign:left;", 599.468, 700, 80, 30)visible(qnh_value_amber_text,false)
qnh_unit_amber_text = 		txt_add(" ", "size:16px; font:my737glass.otf; color: #FFAE2A; halign:left;", 686.960, 708.66, 45, 20)visible(qnh_unit_amber_text,false)
qnh_value_white_text = 		txt_add(" ", "size:14px; font:my737glass.otf; color: white; halign:left;", 610, 733, 50, 18)visible(qnh_value_white_text,false)
qnh_unit_white_text = 		txt_add(" ", "size:12px; font:my737glass.otf; color: white; halign:left;", 667, 735, 45, 16)visible(qnh_unit_white_text,false)
qnh_std_text = 				txt_add(" ", "size:28px; font:my737glass.otf; color: lime; halign:center;", 610, 696, 84, 32)visible(qnh_std_text,false)
qnh_std_amber_text = 		txt_add(" ", "size:28px; font:my737glass.otf; color: #FFAE2A; halign:center;", 610, 700, 80, 32)visible(qnh_std_amber_text,false)
--
radio_altimeter_text = 		txt_add(" ", "size:30px; font:my737glass.otf; color: white; halign:center;", 285, 527, 125, 36)visible(radio_altimeter_text,false)
mag_tru_indication =		txt_add(" ", "size:14px; font:my737glass.otf; color: lime; halign:left;", 400, 773, 40, 16)visible(mag_tru_indication,false)
current_vspeed_pos_text =	txt_add(" ", "size:24px; font:my737glass.otf; color: white; halign:left;", 729, 145, 80, 28)visible(current_vspeed_pos_text,false)
current_vspeed_neg_text =	txt_add(" ", "size:24px; font:my737glass.otf; color: white; halign:left;", 729, 595, 80, 28)visible(current_vspeed_neg_text,false)
--

---//// failure flags goes above everything else
img_vert_fail = 			img_add("vert_fail_img.png", 752.928, 325.114, 31, 118.25)visible(img_vert_fail,false)
img_ldg_alt_fail = 			img_add("ldg_alt_fail_img.png", 712, 658.67, 37, 36.330)visible(img_ldg_alt_fail,false)
no_vspd_img = 				img_add("no_vspd_img.png", 128, 212, 26.7, 131.644)visible(no_vspd_img,false)
alt_disagree_img = 			img_add("alt_disagree_img.png", 608.302, 635, 86.706, 35.013)visible(alt_disagree_img,false)
ias_disagree_img = 			img_add("ias_disagree_img.png", 22.652, 635, 86.328, 35.231)visible(ias_disagree_img,false)

att_failure_flag_box = canvas_add(0, 0, 800, 800, function()
	_rect(320, 313, 52, 34)
	_stroke("#FFAE2A", 3)
end)visible(att_failure_flag_box,false)

hdg_failure_flag_box = canvas_add(0, 0, 800, 800, function()
	_rect(320, 752, 52, 34)
	_stroke("#FFAE2A", 3)
end)visible(hdg_failure_flag_box,false)
txt_att_failure_flag =				txt_add("ATT", "size:22px; font:my737glass.otf; color: #FFAE2A; halign:center;", 296, 317, 100, 50) visible(txt_att_failure_flag,false)
txt_hdg_failure_flag =				txt_add("HDG", "size:22px; font:my737glass.otf; color: #FFAE2A; halign:center;", 296, 756, 100, 50) visible(txt_hdg_failure_flag,false)


-- TEXT STYLES SOPS

--[[
function fd_cmd_box_callback()
    fd_cmd_timeout = fd_cmd_timeout + 1
	visible(cmd_fd_rect,true)
	if fd_cmd_timeout == 10 then
		visible(cmd_fd_rect,false)
		timer_stop(fd_cmd_box)
	end
end
function pfd_spd_mode_box_callback()
    pfd_spd_mode_timeout = pfd_spd_mode_timeout + 1
	visible(ap_mode_top_left_rect,true)
	if pfd_spd_mode_timeout == 10 then
		visible(ap_mode_top_left_rect,false)
		timer_stop(pfd_spd_mode_box)
	end
end
function pfd_spd_mode_white_box_callback()
    pfd_spd_mode_timeout = pfd_spd_mode_timeout + 1
	visible(ap_mode_top_left_white_rect,true)
	if pfd_spd_mode_timeout == 10 then
		visible(ap_mode_top_left_white_rect,false)
		timer_stop(pfd_spd_mode_box)
	end
end
function pfd_hdg_mode_box_callback()
	if pfd_hdg_mode_timeout <= 10 then
		pfd_hdg_mode_timeout = pfd_hdg_mode_timeout + 1
		visible(ap_mode_top_middle_rect,true)
		print("timer pfd_hdg_mode running: " .. pfd_hdg_mode_timeout)
	else
		visible(ap_mode_top_middle_rect,false)
		timer_stop(pfd_hdg_mode_box)
	end
end
function pfd_alt_mode_box_callback()
	if pfd_alt_mode_timeout <= 10 then
		pfd_alt_mode_timeout = pfd_alt_mode_timeout + 1
		visible(ap_mode_top_right_rect,true)
		print("timer pfd_alt_mode running: " .. pfd_alt_mode_timeout)
	else
		visible(ap_mode_top_right_rect,false)
		timer_stop(pfd_alt_mode_box)
	end
end --]]

--/// altitude text starts 10, 100 and 1000

function item_value_callback_inner_alt_minor(i)

	if i == 0 then
		return"00"
	elseif i > 0 then
		return""
	else
		return string.format("%02d", ((0 - i) %5) * 20 )
	end
	
end

--running_text_inner_alt_minor_id = running_txt_add_ver(690,280,5,45,42, item_value_callback_inner_alt_minor, "size:32px; font:my737glass.otf; color:white; halign:right")
running_text_inner_alt_minor_id = running_txt_add_ver(690,269,6,45,32, item_value_callback_inner_alt_minor, "size:28px; font:my737glass.otf; color:white; halign:right")
running_txt_move_carot(running_text_inner_alt_minor_id, 0)
viewport_rect(running_text_inner_alt_minor_id,632,343,104,82)

function item_value_callback_inner_alt_major100(i)
    
	if i == 0 then
		return"0"
	else
		return string.format("%d", (0 - i) %10)
	end

end

running_text_inner_alt_major100_id = running_txt_add_ver(678,311,3,20,54, item_value_callback_inner_alt_major100, "size:28px; font:my737glass.otf; color:white; halign:right")
running_txt_move_carot(running_text_inner_alt_major100_id, 0)
viewport_rect(running_text_inner_alt_major100_id,671,354,32,57)


function item_value_callback_inner_alt_major1000(i)

	if i == 0 then
		return"0"
	else
		return"" .. - i
	end
	
end

--running_text_inner_alt_major1000_id = running_txt_add_ver(628,294,3,50,65, item_value_callback_inner_alt_major1000, "size:38px; font:my737glass.otf; color:white; halign:right")
running_text_inner_alt_major1000_id = running_txt_add_ver(628,310,3,50,54, item_value_callback_inner_alt_major1000, "size:30px; font:my737glass.otf; color:white; halign:right")
running_txt_move_carot(running_text_inner_alt_major1000_id, 0)
viewport_rect(running_text_inner_alt_major1000_id,640,367,35,38)

--/// altitude text ends 10, 100 and 1000

function item_value_callback_inner_speed_one(i)
    
	if i > 0 then
		return""
	else
		return string.format("%d", (0 - i) % 10 )
	end
	
end

running_text_inner_speed_one_id = running_txt_add_ver(65,270,6,22,32, item_value_callback_inner_speed_one, "size:32px; font:my737glass.otf; color:white; halign:right")
running_txt_move_carot(running_text_inner_speed_one_id, 0)

viewport_rect(running_text_inner_speed_one_id,65,343,22,79)

function item_value_callback_inner_speed_ten(i)
    
	if i == 0 then
		return ""
	else
		return string.format("%d", (0 - i) % 10)
	end
	
end

running_text_inner_speed_ten_id = running_txt_add_ver(42,301,3,22,64, item_value_callback_inner_speed_ten, "size:32px; font:my737glass.otf; color:white; halign:right")
running_txt_move_carot(running_text_inner_speed_ten_id, 0)

viewport_rect(running_text_inner_speed_ten_id,42,343,22,79)

function item_value_callback_inner_speed_hundred(i)
    
	if i == 0 then
		return ""
	else
		return string.format("%d", (0 - i) % 10)
	end
	
end

running_text_inner_speed_hundred_id = running_txt_add_ver(19,300,3,22,64, item_value_callback_inner_speed_hundred, "size:32px; font:my737glass.otf; color:white; halign:right")
running_txt_move_carot(running_text_inner_speed_hundred_id, 0)

viewport_rect(running_text_inner_speed_hundred_id,20,343,22,79)

-- TEXT END




txt_set(radio_baro_text, "BARO")
txt_set(radio_baro_text, "RADIO")

txt_set(qnh_std_text, "STD")
txt_set(qnh_std_amber_text, "STD")

--/// Functions

--/// Global variables

function global_callback(irs_mode)

	if irs_mode == 2 then
		display_altimeter = true
	else
		display_altimeter = false
	end
end
xpl_dataref_subscribe("laminar/B738/irs/irs_mode", "INT", global_callback)


function first_FMA(pfd_spd_mode)
	
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
end
xpl_dataref_subscribe("laminar/B738/autopilot/pfd_spd_mode", "INT", first_FMA)

function second_FMA(pfd_hdg_mode, pfd_hdg_mode_arm)
	
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
end
xpl_dataref_subscribe("laminar/B738/autopilot/pfd_hdg_mode", "INT", 
					  "laminar/B738/autopilot/pfd_hdg_mode_arm", "INT", second_FMA)
					  
function third_FMA(pfd_alt_mode, pfd_alt_mode_arm)
	
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
end
xpl_dataref_subscribe("laminar/B738/autopilot/pfd_alt_mode", "INT", 
					  "laminar/B738/autopilot/pfd_alt_mode_arm", "INT", third_FMA)
					  
function boxes_FMA(rec_thr_modes, rec_thr2_modes, rec_hdg_modes, rec_alt_modes, rec_cmd_modes)

	--boxes
	visible(ap_mode_top_left_rect,			rec_thr_modes == 1)
	visible(ap_mode_top_left_white_rect,	rec_thr2_modes == 1)
	visible(ap_mode_top_middle_rect,		rec_hdg_modes == 1)
	visible(ap_mode_top_right_rect,			rec_alt_modes == 1)
	visible(cmd_fd_rect,					rec_cmd_modes == 1)
	
		-- OLD WAY WITH TIMER CALL BACKS
--[[ 	if pfd_hdg_mode ~= old_pfd_hdg_mode then
		if timer_running(pfd_hdg_mode_box) then
			timer_stop(pfd_hdg_mode_box)
		end
		pfd_hdg_mode_timeout = 0
		pfd_hdg_mode_box = timer_start(0,1000,pfd_hdg_mode_box_callback)
		old_pfd_hdg_mode = pfd_hdg_mode
	else
		print("pfd_hdg_mode has not changed")
	end --]]

	-- OLD WAY WITH TIMER CALL BACKS
--[[ 	
	if pfd_alt_mode ~= old_pfd_alt_mode then
		if timer_running(pfd_alt_mode_box) then
			timer_stop(pfd_alt_mode_box)
		end
		pfd_alt_mode_timeout = 0
		pfd_alt_mode_box = timer_start(0,1000,pfd_alt_mode_box_callback)
		old_pfd_alt_mode = pfd_alt_mode
	else
		print("pfd_alt_mode has not changed")
	end --]]

end
xpl_dataref_subscribe("laminar/B738/autopilot/rec_thr_modes", "INT",
					  "laminar/B738/autopilot/rec_thr2_modes", "INT",
					  "laminar/B738/autopilot/rec_hdg_modes", "INT",
					  "laminar/B738/autopilot/rec_alt_modes", "INT",
					  "laminar/B738/autopilot/rec_cmd_modes", "INT", boxes_FMA)

--[[ function ap_status_callback(pfd_fd_cmd, cmd_a_status)

	if pfd_fd_cmd == 1 and cmd_a_status == 0 then
		txt_set(cmd_fd_text, "FD")
	elseif pfd_fd_cmd == 1 and cmd_a_status == 1 then
		txt_set(cmd_fd_text, "CMD")
	else
		txt_set(cmd_fd_text, " ")
	end
	visible(cmd_fd_text,					pfd_fd_cmd > 0)
end

xpl_dataref_subscribe("laminar/B738/autopilot/pfd_fd_cmd", "INT",  
					  "laminar/B738/autopilot/cmd_a_status", "INT", ap_status_callback) --]]

function roll_pitch_callback(roll, pitch, pfd_fd_cmd, cmd_a_status, fd_pitch, fd_roll, nose_gear_force)

	roll = roll * -1
	

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
					  "laminar/B738/autopilot/pfd_fd_cmd", "INT", 
					  "laminar/B738/autopilot/cmd_a_status", "INT", 
					  "laminar/B738/pfd/flight_director_pitch_pilot", "FLOAT", 
					  "sim/cockpit/autopilot/flight_director_roll", "FLOAT", 
					  "sim/flightmodel/forces/fnrml_gear", "FLOAT", roll_pitch_callback)
					  

function altitude_callback(alt_disagree, ias_disagree, baro_in_hpa, baro_pilot, baro_set_std_pilot, trans_lvl, altitude_ft_pilot, radio_altimeter_height, gear_force, mcp_alt_dial, rec_alt_alert)

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
	
	visible(radio_alt_box,			radio_altimeter_height < 2500 and display_altimeter)
	visible(radio_altimeter_text,	radio_altimeter_height < 2500 and display_altimeter)
	
	visible(img_grn_marker,			altitude_ft_pilot < 10000)
	
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

end
xpl_dataref_subscribe("laminar/B738/autopilot/alt_disagree", "INT",
					  "laminar/B738/autopilot/ias_disagree", "INT",
					  "laminar/B738/EFIS_control/capt/baro_in_hpa", "INT",
					  "laminar/B738/EFIS/baro_sel_in_hg_pilot", "FLOAT", 
					  "laminar/B738/EFIS/baro_set_std_pilot", "INT",
					  "laminar/B738/FMS/fmc_trans_lvl", "INT",
					  "sim/cockpit2/gauges/indicators/altitude_ft_pilot", "FLOAT", 
					  "sim/cockpit2/gauges/indicators/radio_altimeter_height_ft_pilot", "FLOAT", 
					  "sim/flightmodel/forces/fnrml_gear", "FLOAT", 
					  "laminar/B738/autopilot/mcp_alt_dial", "INT", 
					  "laminar/B738/autopilot/rec_alt_alert", "INT", altitude_callback)



function headings_callback(current_track, selected_hdg_on_mcp, current_heading)


	current_heading = current_heading * -1
	current_track = current_track * -1
	img_rotate(track_indicator_circle_img, current_heading) -- need to indicate current heading
	img_rotate(track_pointer_img, current_heading  - current_track) --needs to indicate current track
	img_rotate(selected_heading_bug_img, selected_hdg_on_mcp + current_heading) --needs to indicate heading selected on MCP
	txt_set(selected_hdg_bug_text, 			string.format("%03d", var_round(selected_hdg_on_mcp))) --needs to indicate heading selected on MCP
	txt_set(selected_hdg_bug_text1, 		"H")
	txt_set(mag_tru_indication,				"MAG")
end
xpl_dataref_subscribe("sim/cockpit2/gauges/indicators/ground_track_mag_pilot", "FLOAT",
					  "laminar/B738/autopilot/mcp_hdg_dial", "FLOAT",
					  "sim/cockpit2/gauges/indicators/heading_AHARS_deg_mag_pilot", "FLOAT", headings_callback)
					  
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
					  
show_when_irs_aligned = group_add(selected_hdg_bug_text,
								  selected_hdg_bug_text1,
								  mag_tru_indication,
								  track_indicator_circle_img,
								  track_pointer_img,
								  current_heading_pointer_img,
								  selected_heading_bug_img,
								  img_v_speed_tape,
								  img_bank_indicators,
								  --img_bank_indicators_mask,
								  img_horz_back,
								  img_horz_marks,
								  img_center_box,
								  img_vsi_needle)

function pfd_callback(vr_set, irs_align_light, alignment_left_remain, radio_altimeter_height_ft_pilot, fmc_irs_mode, i_marker, m_marker, o_marker)


	visible(no_vspd_img, 					vr_set == 0 and radio_altimeter_height_ft_pilot < 20) --V1 (decision speed) or VR (rotation speed) has not been entered or is invalid, also goes away on takeoff.
	visible(hdg_failure_flag_box,			(irs_align_light == 0 and alignment_left_remain == -1) or fmc_irs_mode ~= 2)
	visible(txt_hdg_failure_flag,			(irs_align_light == 0 and alignment_left_remain == -1) or fmc_irs_mode ~= 2)
	visible(att_failure_flag_box,			(irs_align_light == 0 and alignment_left_remain == -1) or fmc_irs_mode ~= 2)
	visible(txt_att_failure_flag,			(irs_align_light == 0 and alignment_left_remain == -1) or fmc_irs_mode ~= 2)

	
--[[ 	visible(selected_hdg_bug_text, 			irs_align_light == 0 and fmc_irs_mode == 2)
	visible(selected_hdg_bug_text1,			irs_align_light == 0 and fmc_irs_mode == 2)
	visible(mag_tru_indication,				irs_align_light == 0 and fmc_irs_mode == 2)
	visible(track_indicator_circle_img,		irs_align_light == 0 and fmc_irs_mode == 2)
	visible(track_pointer_img, 				irs_align_light == 0 and fmc_irs_mode == 2)
	visible(current_heading_pointer_img, 	irs_align_light == 0 and fmc_irs_mode == 2)
	visible(selected_heading_bug_img, 		irs_align_light == 0 and fmc_irs_mode == 2)
	visible(img_v_speed_tape, 				irs_align_light == 0 and fmc_irs_mode == 2)
	visible(img_bank_indicators, 			irs_align_light == 0 and fmc_irs_mode == 2)
	visible(img_horz_back, 					irs_align_light == 0 and fmc_irs_mode == 2)
	visible(img_horz_marks, 				irs_align_light == 0 and fmc_irs_mode == 2) --]]
	group_visible(show_when_irs_aligned,	irs_align_light == 0 and fmc_irs_mode == 2)
	
	visible(img_vert_fail, 					irs_align_light == 1 or fmc_irs_mode ~= 2)

	visible(i_marker_img,					i_marker == 1)
	visible(m_marker_img,					m_marker == 1)
	visible(o_marker_img,					o_marker == 1)
	
--[[ 	if fmc_irs_mode == 2 and irs_align_light == 0 and alignment_left_remain == 0 then
		irs_is_aligned = true
		print("irs is aligned " .. fmc_irs_mode .. irs_align_light .. alignment_left_remain)
	else
		irs_is_aligned = false
		print("irs is not yet aligned " ..fmc_irs_mode .. irs_align_light .. alignment_left_remain)
	end --]]

end
xpl_dataref_subscribe("laminar/B738/FMS/vr_set", "INT",
					  "laminar/B738/annunciator/irs_align_left", "INT",
					  "laminar/B738/irs/alignment_left_remain", "INT",
					  "sim/cockpit2/gauges/indicators/radio_altimeter_height_ft_pilot", "FLOAT",
					  "laminar/B738/irs/irs_mode", "INT", 
					  "sim/cockpit/misc/inner_marker_lit", "INT",
					  "sim/cockpit/misc/middle_marker_lit", "INT",
					  "sim/cockpit/misc/outer_marker_lit", "INT", pfd_callback)
					  

--[[ function flight_director (fd_pitch, fd_roll)

	-- Move flight director bank
	--visible(img_fd_vnav, MCP_FDSw == 1)
	--move(img_fd_vnav, 346 + ((AC_bank - FD_bank) * 1.05), nil, nil, nil)
	
	-- Move flight director pitch
	--visible(img_fd_hnav, MCP_FDSw == 1)
	move(img_fd_hnav, nil, 381 + (fd_pitch * -10.5), nil, nil)

end
xpl_dataref_subscribe("laminar/B738/pfd/flight_director_pitch_pilot", "FLOAT",
					  "sim/cockpit/autopilot/flight_director_roll", "FLOAT", flight_director) --]]
					  
black_bg_no_power = canvas_add(0, 0, 800, 800, function()
	_fill("black")
end) -- blackout if no power

fade = canvas_add(0, 0, 800, 800, function() --black canvas for fading instrument
	_fill("black")
end)visible(fade,true)
					  
function pwr_callback(instrument_brightness, batbus_status)

	visible(black_bg_no_power, 	batbus_status == 0)
	visible(img_mainPFD, 		batbus_status == 1)
	visible(img_alt_box,		batbus_status == 1)
	visible(img_spd_box,		batbus_status == 1)
	local x = 1 - instrument_brightness[1] -- fades the PFD
	opacity(fade, x)
end
xpl_dataref_subscribe(	"laminar/B738/electric/instrument_brightness", "FLOAT[16]",
						"laminar/B738/electric/batbus_status", "INT", pwr_callback)		

--TO DOs
--AoA
--bank indicator
--BARO Minimums Pointer (green) and  Minimums Reference/Altitude (green) 
--vref v1 v2 vr
--ILS DME Approach Reference
--1000 alt markings
--adjust boxes
--Landing Altitude Reference Bar
--Landing Altitude Indication (amber)
--Glide Slope Pointer and Deviation Scale
--Rising Runway (green with magenta stem)
--Scale ID Annunciation (white)
--Flight Path Vector (FPV) Indication (white)
--Speed Trend Vector (green)
-- laminar/B738/pfd/max_speed  Maximum Speed (red and black)
-- laminar/B738/pfd/max_maneuver_speed  laminar/B738/pfd/max_maneuver_speed_show Maximum Maneuvering Speed (amber)
-- laminar/B738/pfd/min_speed  laminar/B738/pfd/min_speed_show Minimum Speed (red and black)
-- laminar/B738/pfd/min_maneuver_speed laminar/B738/pfd/min_maneuver_speed_show Minimum Maneuver Speed (amber)
-- any many more ...