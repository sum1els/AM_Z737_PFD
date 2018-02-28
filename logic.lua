default_black_bg = canvas_add(0, 0, 800, 800, function()
	_fill("black")
end) visible(default_black_bg,true)

--img_mainPFD =					img_add_fullscreen("main_PFD.png")
img_horz_back = 				img_add("horizon.png", -401.5, -370, 1500, 1500)									visible(img_horz_back,false)
img_mainPFD =					img_add("main_PFD.png", 0, 0, 800, 800)												visible(img_mainPFD,false)

--//FUNCTIONS
function ypos (img_y, img_height)
	ypix = 800 - img_y - img_height
	return ypix
end

function item_value_callback_alt(i)
	return string.format("%d", i * 200 * -1 )
end

function item_value_callback_speed(i)
	return string.format("%d", 0 - (i * 20) )
end

function item_value_callback_inner_alt_minor(i)
	if i == 0 then
		return"00"
	elseif i > 0 then
		return""
	else
		return string.format("%02d", ((0 - i) %5) * 20 )
	end	
end

function item_value_callback_inner_alt_major100(i)
	if i == 0 then
		return"0"
	else
		return string.format("%d", (0 - i) %10)
	end
end

function item_value_callback_inner_alt_major1000(i)
	if i == 0 then
		return"0"
	else
		return"" .. - i
	end	
end

function item_value_callback_inner_speed_one(i)
	if i > 0 then
		return""
	else
		return string.format("%d", (0 - i) % 10 )
	end	
end

function item_value_callback_inner_speed_ten(i)
	if i == 0 then
		return ""
	else
		return string.format("%d", (0 - i) % 10)
	end
end

function item_value_callback_inner_speed_hundred(i)
	if i == 0 then
		return ""
	else
		return string.format("%d", (0 - i) % 10)
	end	
end

-- IMAGES START
running_img_speed =				running_img_add_ver("spd_markers.png",104,89,20,16.2,49.25)
running_img_move_carot(running_img_speed, 0)
	
running_img_alt = 				running_img_add_ver("alt_markers.png",597,40,8,20,344)
running_img_move_carot(running_img_alt, 0)
viewport_rect(running_img_alt, 592, 94.5, 30, 590)

running_text_speed = running_txt_add_ver(-6,-120,10,100,98.5,item_value_callback_speed,"size:20px; font:my737glass.otf; color:white; halign:right;")
running_txt_move_carot(running_text_speed, 0)

running_text_alt = running_txt_add_ver(566,-179,8,130,137,item_value_callback_alt,"size:20px; font:my737glass.otf; color:white; halign:right;")
viewport_rect(running_text_alt, 598, 95, 100, 590)
running_txt_move_carot(running_text_alt, 0)

--//// track indicator
track_indicator_circle_img = 	img_add("track_indicator_circle_img.png", 107.877, 698.045, 482.399, 482.399)		visible(track_indicator_circle_img,false)
track_pointer_img = 			img_add("track_pointer_img.png", 338.355, 699.245, 21.443, 480)						visible(track_pointer_img,false)
current_heading_pointer_img = 	img_add("current_hdg_pointer_img.png", 336.291, 675.933, 25.571, 525.625)			visible(current_heading_pointer_img,false)
selected_heading_bug_img = 		img_add("selected_hdg_bug_img.png", 331.5765, 681.673, 35, 514.143)					visible(selected_heading_bug_img,false)
--////
img_v_speed_tape = 				img_add("v_speed_tape.png", 726.250, 184.817, 71.644, 400.382)						visible(img_v_speed_tape,false)
img_horz_marks = 				img_add("horizon_marks.png", 248.523, -370, 200, 1500) 								visible(img_horz_marks,false)
viewport_rect(img_horz_marks, 196, 260, 300, 300)
--viewport_rect(img_horz_marks, 170, 220, 320, 340)
--img_bank_indicators_mask =		img_add("bank_indicators_mask_img.png", 159.524, (800 - 112.416 - 501.494), 377.363, 112.416)visible(img_bank_indicators_mask,false)
img_bank_indicators =			img_add("bank_indicators_img.png", 174.205, 183.442, 348.690, 106.585)				visible(img_bank_indicators,false)
img_bank_angle_white =			img_add("bank_angle_triangle_img.png", 330.963, 199.32, 35, 26)						visible(img_bank_angle_white,false)
img_bank_angle_amber =			img_add("bank_angle_triangle_amber_img.png", 330.963, 199.32, 35, 26)				visible(img_bank_angle_amber,false)
img_slip_indicator =			img_add("slip_indicator.png", 330.963, 226.58, 35, 10)								visible(img_slip_indicator,false)
img_slip_indicator_warn =		img_add("slip_indicator_warn.png", 330.963, 226.58, 35, 10)							visible(img_slip_indicator_warn,false)	
--//// markers
i_marker_img = 					img_add("i_marker_img.png", 484, 194.6, 45.4, 45.4)									visible(i_marker_img,false)
m_marker_img = 					img_add("m_marker_img.png", 484, 194.6, 45.4, 45.4)									visible(m_marker_img,false)
o_marker_img = 					img_add("o_marker_img.png", 484, 194.6, 45.4, 45.4)									visible(o_marker_img,false)
--
img_fd_hnav =					img_add("flight_director.png", 238, 377, 222, 4) 									visible(img_fd_hnav,false)
img_fd_vnav = 					img_add("flight_director.png", 348, 267, 4, 222) 									visible(img_fd_vnav,false)
img_ground =					img_add("img_ground.png", 600, 383, 99.643, 46.051) 								visible(img_ground,true)
viewport_rect(img_ground, 600, 95, 100, 590)
img_baro_pointer_green =		img_add("img_baro_pointer_green.png", 575.350,359.573, 125.062, 49.943)	visible(img_baro_pointer_green,false) --sim/cockpit2/gauges/indicators/radio_altimeter_dh_lit_pilot
img_center_box =				img_add("center_box.png",341.077, 375.656, 15, 15)								 	visible(img_center_box, false)
img_alt_bug =					img_add("alt_bug_img.png", 594, 341.5, 38, 86.5) 									visible(img_alt_bug,false)
viewport_rect(img_alt_bug, 590, 95, 50, 590)
img_alt_box_m =					img_add("img_alt_box_m.png", 628.023 , 313.714, 109.084, 28.306) 					visible(img_alt_box_m,false)
img_alt_box =					img_add("alt_box_img.png", 615, 340.02, 122.107, 88.446) 							visible(img_alt_box,false)
img_spd_box =					img_add("spd_box_img.png", 8.477, 340.02, 94.769, 88.446) 							visible(img_spd_box,false)
img_spd_bug =					img_add("speed_bug_img.png", 103.518, 371.4, 44.930, 25.223) 						visible(img_spd_bug,false)
img_vsi_needle =				img_add("vsi_needle.png", 640, 383, 470, 3) 										visible(img_vsi_needle,false)
viewport_rect(img_vsi_needle, 751, 190, 50, 396)
img_grn_marker =				img_add("green_marker.png", 635, 364, 20, 38) 										visible(img_grn_marker,false)
img_aoa_dial =					img_add("img_aoa_dial.png", 464, ypos (620, 101), 101, 101) 						visible(img_aoa_dial,false)
img_aoa_dial_needle =			img_add("img_aoa_dial_needle.png", 513, 82, 3, 94)										visible(img_aoa_dial_needle,false)

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

selected_airspeed_text = 	txt_add(" ", "size:30px; font:my737glass.otf; color: magenta; halign:center;", 16.5, 45, 100, 38)		visible(selected_airspeed_text,	false)
mach_airspeed_text = 		txt_add(" ", "size:34px; font:my737glass.otf; color: white; halign:center;", 16.5, 700, 100, 38)		visible(mach_airspeed_text,		false)
mcp_alt_ten_thou_text = 	txt_add(" ", "size:30px; font:my737glass.otf; color: magenta; halign:right;", 600, 45, 46, 38)			visible(mcp_alt_ten_thou_text,	false)
mcp_alt_thou_text = 		txt_add(" ", "size:28px; font:my737glass.otf; color: magenta; halign:left;", 645, 47, 100, 32)			visible(mcp_alt_thou_text,		false)
selected_hdg_bug_text = 	txt_add(" ", "size:18px; font:my737glass.otf; color: magenta; halign:right;", 270, 770, 40, 20)			visible(selected_hdg_bug_text,	false)
selected_hdg_bug_text1 = 	txt_add(" ", "size:14px; font:my737glass.otf; color: magenta; halign:left;", 309, 773, 20, 16)			visible(selected_hdg_bug_text1,	false)
--
ap_mode_left_top_green = 	txt_add(" ", "size:24px; font:my737glass.otf; color: lime; halign:center;", 132.236, 10, 146, 28)		visible(ap_mode_left_top_green,	false)
ap_mode_left_top_white = 	txt_add(" ", "size:24px; font:my737glass.otf; color: white; halign:center;", 132.236, 10, 146, 28)		visible(ap_mode_left_top_white,	false)
ap_mode_middle_top = 		txt_add(" ", "size:24px; font:my737glass.otf; color: lime; halign:center;", 283.486, 10, 146, 28)		visible(ap_mode_middle_top,		false)
ap_mode_right_top = 		txt_add(" ", "size:24px; font:my737glass.otf; color: lime; halign:center;", 433.844, 10, 146, 28)		visible(ap_mode_right_top,		false)
ap_mode_middle_bottom = 	txt_add(" ", "size:14px; font:my737glass.otf; color: white; halign:center;", 283.486, 43, 146, 18)		visible(ap_mode_middle_bottom,	false)
ap_mode_right_bottom = 		txt_add(" ", "size:14px; font:my737glass.otf; color: white; halign:center;", 433.844, 43, 146, 18)		visible(ap_mode_right_bottom,	false)
--
cmd_fd_text = 				txt_add(" ", "size:32px; font:my737glass.otf; color: lime; halign:center;", 309, 143, 80, 36)			visible(cmd_fd_text,			false)
radio_baro_text = 			txt_add(" ", "size:18px; font:my737glass.otf; color: lime; halign:right;", 450, 650, 80, 22)			visible(radio_baro_text,		false)
radio_baro_text_value = 	txt_add(" ", "size:18px; font:my737glass.otf; color: lime; halign:right;", 450, 670, 80, 22)			visible(radio_baro_text_value,	false)
--
qnh_value_text = 			txt_add(" ", "size:24px; font:my737glass.otf; color: lime; halign:left;", 599.468, 700, 80, 30)			visible(qnh_value_text,			false)
qnh_unit_text = 			txt_add(" ", "size:16px; font:my737glass.otf; color: lime; halign:left;", 686.960, 708.66, 45, 20)		visible(qnh_unit_text,			false)
qnh_value_amber_text = 		txt_add(" ", "size:24px; font:my737glass.otf; color: #FFAE2A; halign:left;", 599.468, 700, 80, 30)		visible(qnh_value_amber_text,	false)
qnh_unit_amber_text = 		txt_add(" ", "size:16px; font:my737glass.otf; color: #FFAE2A; halign:left;", 686.960, 708.66, 45, 20)	visible(qnh_unit_amber_text,	false)
qnh_value_white_text = 		txt_add(" ", "size:14px; font:my737glass.otf; color: white; halign:left;", 610, 733, 50, 18)			visible(qnh_value_white_text,	false)
qnh_unit_white_text = 		txt_add(" ", "size:12px; font:my737glass.otf; color: white; halign:left;", 667, 735, 45, 16)			visible(qnh_unit_white_text,	false)
qnh_std_text = 				txt_add("STD", "size:28px; font:my737glass.otf; color: lime; halign:center;", 610, 696, 84, 32)			visible(qnh_std_text,			false)
qnh_std_amber_text = 		txt_add("STD", "size:28px; font:my737glass.otf; color: #FFAE2A; halign:center;", 610, 700, 80, 32)		visible(qnh_std_amber_text,		false)
--
radio_altimeter_text = 		txt_add(" ", "size:30px; font:my737glass.otf; color: white; halign:center;", 285, 527, 125, 36)			visible(radio_altimeter_text,	false)
mag_tru_indication =		txt_add(" ", "size:14px; font:my737glass.otf; color: lime; halign:left;", 400, 773, 40, 16)				visible(mag_tru_indication,		false)
current_vspeed_pos_text =	txt_add(" ", "size:24px; font:my737glass.otf; color: white; halign:left;", 729, 145, 80, 28)			visible(current_vspeed_pos_text,false)
current_vspeed_neg_text =	txt_add(" ", "size:24px; font:my737glass.otf; color: white; halign:left;", 729, 595, 80, 28)			visible(current_vspeed_neg_text,false)

txt_aoa_degress =			txt_add(" ", "size:18px; font:my737glass.otf; color: white; halign:right;", 460, ypos (650, 16), 40, 18)visible(txt_aoa_degress,false)
--

---//// failure flags goes above everything else
img_vert_fail = 			img_add("vert_fail_img.png", 752.928, 325.114, 31, 118.25)												visible(img_vert_fail,			false)
img_ldg_alt_fail = 			img_add("ldg_alt_fail_img.png", 712, ypos (103.827, 36.013), 37, 36.013)								visible(img_ldg_alt_fail,		false)
no_vspd_img = 				img_add("no_vspd_img.png", 128, 212, 26.7, 131.644)														visible(no_vspd_img,			false)
alt_disagree_img = 			img_add("alt_disagree_img.png", 608.302, 635, 86.706, 35.013)											visible(alt_disagree_img,		false)
ias_disagree_img = 			img_add("ias_disagree_img.png", 22.652, 635, 86.328, 35.231)											visible(ias_disagree_img,		false)

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


running_text_inner_speed_one_id = running_txt_add_ver(65,270,6,22,32, item_value_callback_inner_speed_one, "size:32px; font:my737glass.otf; color:white; halign:right")
running_txt_move_carot(running_text_inner_speed_one_id, 0)
viewport_rect(running_text_inner_speed_one_id,65,343,22,79)

running_text_inner_speed_ten_id = running_txt_add_ver(42,301,3,22,64, item_value_callback_inner_speed_ten, "size:32px; font:my737glass.otf; color:white; halign:right")
running_txt_move_carot(running_text_inner_speed_ten_id, 0)
viewport_rect(running_text_inner_speed_ten_id,42,343,22,79)

running_text_inner_speed_hundred_id = running_txt_add_ver(19,300,3,22,64, item_value_callback_inner_speed_hundred, "size:32px; font:my737glass.otf; color:white; halign:right")
running_txt_move_carot(running_text_inner_speed_hundred_id, 0)
viewport_rect(running_text_inner_speed_hundred_id,20,343,22,79)

--running_text_inner_alt_minor_id = running_txt_add_ver(690,280,5,45,42, item_value_callback_inner_alt_minor, "size:32px; font:my737glass.otf; color:white; halign:right")
running_text_inner_alt_minor_id = running_txt_add_ver(690,269,6,45,32, item_value_callback_inner_alt_minor, "size:28px; font:my737glass.otf; color:white; halign:right")
running_txt_move_carot(running_text_inner_alt_minor_id, 0)
viewport_rect(running_text_inner_alt_minor_id,632,343,104,82)

running_text_inner_alt_major100_id = running_txt_add_ver(678,311,3,20,54, item_value_callback_inner_alt_major100, "size:28px; font:my737glass.otf; color:white; halign:right")
running_txt_move_carot(running_text_inner_alt_major100_id, 0)
viewport_rect(running_text_inner_alt_major100_id,671,354,40,57)

--running_text_inner_alt_major1000_id = running_txt_add_ver(628,294,3,50,65, item_value_callback_inner_alt_major1000, "size:38px; font:my737glass.otf; color:white; halign:right")
running_text_inner_alt_major1000_id = running_txt_add_ver(628,310,3,50,54, item_value_callback_inner_alt_major1000, "size:30px; font:my737glass.otf; color:white; halign:right")
running_txt_move_carot(running_text_inner_alt_major1000_id, 0)
viewport_rect(running_text_inner_alt_major1000_id,640,367,40,38)

-- GROUPS

show_when_irs_aligned = group_add(selected_hdg_bug_text,
								  selected_hdg_bug_text1,
								  mag_tru_indication,
								  track_indicator_circle_img,
								  track_pointer_img,
								  current_heading_pointer_img,
								  selected_heading_bug_img,
								  img_v_speed_tape,
								  img_bank_indicators,
								  img_bank_angle_white,
								  --img_bank_angle_amber,
								  img_slip_indicator,
								  --img_slip_indicator_warn,
								  --img_bank_indicators_mask,
								  img_horz_back,
								  img_horz_marks,
								  img_center_box,
								  img_vsi_needle)


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
			  
lib_altitude ()					  
lib_speed ()
lib_fma ()
lib_roll_pitch ()				  
lib_vspeed()
lib_aoa ()

								  
function pfd_callback(vr_set, irs_align_light, alignment_left_remain, radio_altimeter_height_ft_pilot, fmc_irs_mode, i_marker, m_marker, o_marker)


	visible(no_vspd_img, 					vr_set == 0 and radio_altimeter_height_ft_pilot < 20) --V1 (decision speed) or VR (rotation speed) has not been entered or is invalid, also goes away on takeoff.
	visible(hdg_failure_flag_box,			(irs_align_light == 0 and alignment_left_remain == -1) or fmc_irs_mode ~= 2)
	visible(txt_hdg_failure_flag,			(irs_align_light == 0 and alignment_left_remain == -1) or fmc_irs_mode ~= 2)
	visible(att_failure_flag_box,			(irs_align_light == 0 and alignment_left_remain == -1) or fmc_irs_mode ~= 2)
	visible(txt_att_failure_flag,			(irs_align_light == 0 and alignment_left_remain == -1) or fmc_irs_mode ~= 2)

	group_visible(show_when_irs_aligned,	irs_align_light == 0 and fmc_irs_mode == 2)
	
	visible(img_vert_fail, 					irs_align_light == 1 or fmc_irs_mode ~= 2)

	visible(i_marker_img,					i_marker == 1)
	visible(m_marker_img,					m_marker == 1)
	visible(o_marker_img,					o_marker == 1)


end
xpl_dataref_subscribe("laminar/B738/FMS/vr_set", "INT",
					  "laminar/B738/annunciator/irs_align_left", "INT",
					  "laminar/B738/irs/alignment_left_remain", "INT",
					  "sim/cockpit2/gauges/indicators/radio_altimeter_height_ft_pilot", "FLOAT",
					  "laminar/B738/irs/irs_mode", "INT", 
					  "sim/cockpit/misc/inner_marker_lit", "INT",
					  "sim/cockpit/misc/middle_marker_lit", "INT",
					  "sim/cockpit/misc/outer_marker_lit", "INT", pfd_callback)
				  			  
black_bg_no_power = canvas_add(0, 0, 800, 800, function()
	_fill("black")
end)visible(black_bg_no_power,false) -- blackout if no power

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
--BARO Minimums Pointer (green) and  Minimums Reference/Altitude (green) 
--vref v1 v2 vr
--ILS DME Approach Reference
--1000 alt markings
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