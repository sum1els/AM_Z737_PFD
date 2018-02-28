function lib_aoa ()

	function AoA (AoA_angle_degrees)
	
		txt_set(txt_aoa_degress, string.format("%.1f", AoA_angle_degrees))
		visible(img_aoa_dial,true)
		visible(txt_aoa_degress,true)
		visible(img_aoa_dial_needle,true)
		img_rotate(img_aoa_dial_needle, 135 - (AoA_angle_degrees * 10) )

	
	end
	xpl_dataref_subscribe(	"sim/flightmodel2/misc/AoA_angle_degrees", "FLOAT",
							AoA)

end

