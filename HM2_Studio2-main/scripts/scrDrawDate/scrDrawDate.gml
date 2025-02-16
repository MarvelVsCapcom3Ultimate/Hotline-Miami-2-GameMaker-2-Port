function scrDrawDate() {
	surface_set_target(surf)
	draw_clear_alpha(c_black,0)
	draw_set_halign(fa_center)
	draw_set_valign(fa_center)
	date=string_upper(months[month])+" "+string(floor(day))+string_upper(ending[floor(day-1)])+", "+string(year)+"#"+global.location
	draw_set_font(fntDate)
	draw_set_color(merge_color(c_gray,c_dkgray,random(1)))
	draw_text(__view_get( e__VW.WView, 0 )/2+1,__view_get( e__VW.HView, 0 )-(__view_get( e__VW.HView, 0 )*0.45)*factor-1,string_hash_to_newline(date))
	draw_set_color(merge_color(c_white,c_ltgray,random(0.2)))
	draw_text(__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.HView, 0 )-(__view_get( e__VW.HView, 0 )*0.45)*factor,string_hash_to_newline(date))



	if hour<10 time="0"+string(hour) else time=string(hour)
	time+=":"
	if minute<10 time+="0"+string(minute) else time+=string(minute)
	draw_set_font(fntTime)
	draw_set_color(merge_color(c_maroon,c_dkgray,random(1)))
	draw_text(__view_get( e__VW.WView, 0 )/2+1,(__view_get( e__VW.HView, 0 )*0.42)*factor+1,string_hash_to_newline(time))
	draw_set_color(merge_color(c_red,c_white,random(0.2)))
	draw_text(__view_get( e__VW.WView, 0 )/2,(__view_get( e__VW.HView, 0 )*0.42)*factor,string_hash_to_newline(time))

	draw_sprite_ext(sprLine,0,__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.HView, 0 )/2-2,string_width(string_hash_to_newline(time))*0.5*factor,1,0,merge_color(c_white,c_ltgray,random(0.2)),1)
	draw_sprite_ext(sprLine,0,__view_get( e__VW.WView, 0 )/2+1,__view_get( e__VW.HView, 0 )/2-2+1,string_width(string_hash_to_newline(time))*0.5*factor,1,0,merge_color(c_gray,c_dkgray,random(0.2)),1)

	surface_reset_target()

	d3d_set_projection_ortho(0,0,__view_get( e__VW.WPort, 0 ),__view_get( e__VW.HPort, 0 ),0)
	draw_clear_alpha(merge_color(c_black,c_dkgray,random(0.07)),1)
	draw_surface_ext(surf,-1,0,3,3,0,c_black,1)
	draw_surface_ext(surf,1,0,3,3,0,c_black,1)
	draw_surface_ext(surf,0,1,3,3,0,c_black,1)
	draw_surface_ext(surf,0,-1,3,3,0,c_black,1)
	draw_surface_ext(surf,0,0,3,3,0,c_white,1)


	if scratch>0 {
	d3d_set_projection_ortho(0,0,__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 ),0)
	draw_set_blend_mode(bm_add)
	repeat (scratch) {
	draw_sprite_ext(sprSmallWhiteDistortion,random(4),random(__view_get( e__VW.WView, 0 )),random(__view_get( e__VW.HView, 0 )),1,1,0,merge_color(c_black,c_gray,random(1)),1)
	}
	repeat (30) {
	draw_sprite_ext(sprMediumWhiteDistortion,random(4),random(__view_get( e__VW.WView, 0 )),__view_get( e__VW.HView, 0 )+20-random(6)-abs(scratch)*0.5,1+random(2),1,0,merge_color(c_black,c_gray,random(1)),1)
	}
	repeat (30) {
	draw_sprite_ext(sprMediumWhiteDistortion,random(4),random(__view_get( e__VW.WView, 0 )),__view_get( e__VW.HView, 0 )+40-random(6)-abs(scratch)*0.6,1+random(2),1,0,merge_color(c_black,c_gray,random(1)),1)
	}
	my_y=random(32)
	my_x=random(32)
	draw_sprite_tiled_ext(sprNoise,0,-my_x,-my_y,1,1,merge_color(c_black,c_white,scratch*0.01),1)
	my_y=random(32)
	my_x=random(32)
	draw_sprite_tiled_ext(sprNoise,0,-my_x,-my_y,1,1,merge_color(c_black,c_white,scratch*0.01),1)
	draw_set_blend_mode(bm_normal)
	scratch-=2
	}



}
