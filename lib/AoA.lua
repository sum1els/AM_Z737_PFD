function lib_aoa ()

	function AoA (AoA_angle_degrees, onground, groundspeed)

		visible(img_aoa_dial,true)
		visible(txt_aoa_degress,true)
		visible(img_aoa_dial_needle,true)
		
		if (onground == 1 and groundspeed < 80) then  --When on the ground and ground speed less than 80 knots, the readout is fixed at 0.0 degrees.
			img_rotate(img_aoa_dial_needle, 135) 
			txt_set(txt_aoa_degress, "0.0")
		else
			img_rotate(img_aoa_dial_needle, 135 - (AoA_angle_degrees * 10) )
			txt_set(txt_aoa_degress, string.format("%.1f", AoA_angle_degrees))
		end

	end
	xpl_dataref_subscribe(	"sim/flightmodel2/misc/AoA_angle_degrees", "FLOAT",
							"sim/flightmodel/failures/onground_any", "INT",
							"sim/flightmodel/position/groundspeed", "FLOAT",
							AoA)

end

