function scrDrawLSD(argument0) {
	var add;
	tex=surface_get_texture(surf)
	draw_set_color(c_white)
	draw_primitive_begin_texture(pr_trianglefan, tex)
	//draw_vertex_texture(320+lengthdir_x(32,dir),240+lengthdir_y(32,dir),0.5,0.5)
	if scrMovingPlayerExists() {
	if objPlayer.active=1 {
	add=(point_distance(objPlayer.x,objPlayer.y,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2))*0.1
	if add<1 add=0 else add=add-1
	targetxfactor=objPlayer.xfactor+add
	targetyfactor=objPlayer.yfactor+add
	} else {
	targetxfactor=10
	targetyfactor=10
	}
	} else {
	targetxfactor=10
	targetyfactor=10
	}
	if xfactor<targetxfactor xfactor+=0.2
	if yfactor<targetyfactor yfactor+=0.12
	if xfactor>targetxfactor xfactor-=0.2
	if yfactor>targetyfactor yfactor-=0.12
	posx=__view_get( e__VW.WView, 0 )*0.45+(objPlayer.x-(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2))*(1/xfactor)
	posy=__view_get( e__VW.HView, 0 )*0.45+(objPlayer.y-(__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2))*(1/yfactor)

	alpha=2+lengthdir_x(1.75,dir*0.2)
	if alpha>1 alpha=1
	draw_vertex_texture_color(posx,posy,0.5,0.5,c_white,alpha)
	i=0
	repeat (30) {
	color=make_color_hsv(dir+i*4,255,255)
	multiplier=6+lengthdir_x(6,dir*0.1)
	colamount=-1+lengthdir_x(2,dir+i*multiplier)
	if colamount<0 colamount=0
	draw_vertex_texture_color(myx[i]+abs(lengthdir_x(amount*2,dir+i*20)),myy[i]+abs(lengthdir_y(amount,dir+i*20)),myx[i]*(1/__view_get( e__VW.WView, 0 )),myy[i]*(1/__view_get( e__VW.HView, 0 )),c_white,0)
	i+=1
	}
	i=0
	draw_vertex_texture_color(myx[i]+abs(lengthdir_x(amount*2,dir+i*20)),myy[i]+abs(lengthdir_y(amount,dir+i*20)),myx[i]*(1/__view_get( e__VW.WView, 0 )),myy[i]*(1/__view_get( e__VW.HView, 0 )),c_white,0)
	draw_primitive_end()

	if argument0 {
	texture_set_interpolation(true)
	draw_set_blend_mode(bm_add)
	tex=surface_get_texture(surf)
	draw_set_color(c_white)
	draw_primitive_begin_texture(pr_trianglefan, tex)
	//draw_vertex_texture(320+lengthdir_x(32,dir),240+lengthdir_y(32,dir),0.5,0.5)
	colamount=-0.25+lengthdir_x(0.5,dir*0.321)
	if colamount<0 colamount=0
	color=make_color_hsv((dir*4)*(255/360),random(255),255)
	factor=abs(lengthdir_x(1,dir))
	posx=__view_get( e__VW.WView, 0 )*0.45+(objPlayer.x-(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2))*(1/xfactor)+lengthdir_x((xfactor-1)*factor,dir*0.8)
	posy=__view_get( e__VW.HView, 0 )*0.45+(objPlayer.y-(__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2))*(1/yfactor)+lengthdir_y((xfactor-1)*factor,dir*1.31)
	draw_vertex_texture_color(posx,posy,0.5,0.5,merge_color(c_black,color,colamount),1)
	i=0
	repeat (30) {
	multiplier=2+lengthdir_x(2,dir*0.1)
	color=make_color_hsv((dir+i*4*multiplier)*(255/360),abs(lengthdir_x(255,(dir*8)+i*10)),255)
	colamount=lengthdir_x(2,dir+i*multiplier)
	if colamount>1 colamount=1
	if colamount<0 colamount=0
	//if colamount>0 colamo
	draw_vertex_texture_color(myx[i]+abs(lengthdir_x(amount*2,dir+i*20)),myy[i]+abs(lengthdir_y(amount,dir+i*20)),myx[i]*(1/__view_get( e__VW.WView, 0 )),myy[i]*(1/__view_get( e__VW.HView, 0 )),merge_color(c_black,color,colamount),1)
	i+=1
	}
	i=0
	multiplier=2+lengthdir_x(2,dir*0.1)
	color=make_color_hsv((dir+i*4*multiplier)*(255/360),abs(lengthdir_x(255,(dir*8)+i*10)),255)
	colamount=lengthdir_x(2,dir+i*multiplier)
	if colamount>1 colamount=1
	if colamount<0 colamount=0
	draw_vertex_texture_color(myx[i]+abs(lengthdir_x(amount*2,dir+i*20)),myy[i]+abs(lengthdir_y(amount,dir+i*20)),myx[i]*(1/__view_get( e__VW.WView, 0 )),myy[i]*(1/__view_get( e__VW.HView, 0 )),merge_color(c_black,color,colamount),1)
	draw_primitive_end()
	draw_set_blend_mode(bm_normal)
	texture_set_interpolation(false)
	}
	scrLSDDrawHUD()



}
