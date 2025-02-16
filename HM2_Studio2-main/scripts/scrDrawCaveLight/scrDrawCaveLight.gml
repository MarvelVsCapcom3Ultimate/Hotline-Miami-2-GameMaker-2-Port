function scrDrawCaveLight() {
	var color1,color2,amount;
	if room=rmPowerPlantCave1 or room=rmPowerPlantCave2 {
	amount=objPlayer.y*(1/room_height)
	if amount>1 amount=1
	if amount<0 amount=0
	if room=rmPowerPlantCave1 amount=1
	draw_set_blend_mode(bm_subtract)
	color1=merge_color(c_black,c_ltgray,(0.5+lengthdir_x(0.25,global.dir*2.7))*amount)
	color2=merge_color(c_black,c_ltgray,(0.5-lengthdir_x(0.25,global.dir*2.7))*amount)
	draw_rectangle_color(-10,-10,__view_get( e__VW.WView, 0 )+10,__view_get( e__VW.HView, 0 )+10,color1,color1,color2,color2,0)
	draw_circle_color(__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.HView, 0 )/2,__view_get( e__VW.WView, 0 )*0.76+random(24),merge_color(c_black,merge_color(merge_color(c_black,c_white,0.5+0.5*amount),merge_color(c_aqua,c_gray,0.2+random(0.2)),0.4+lengthdir_x(0.4,global.dir*4))+0.2*amount,1),merge_color(c_black,c_white,0.5+amount*0.5),0)
	draw_set_blend_mode(bm_normal)
	}
	with objCaveOpening {
	d3d_set_projection_ortho(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 ),__view_get( e__VW.Angle, 0 ))
	draw_set_blend_mode(bm_add)
	draw_ellipse_color(x-50,y-72,x+58,y+72,merge_color(merge_color(c_yellow,c_orange,0.5+lengthdir_x(0.5,dir)),merge_color(c_white,c_black,0.5),0.5),c_black,0)
	draw_rectangle_color(x-24,y,x+30,y+96+random(10),c_dkgray,c_dkgray,c_black,c_black,0)
	draw_set_blend_mode(bm_normal)
	d3d_set_projection_ortho(0,0,__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 ),0)
	}



}
