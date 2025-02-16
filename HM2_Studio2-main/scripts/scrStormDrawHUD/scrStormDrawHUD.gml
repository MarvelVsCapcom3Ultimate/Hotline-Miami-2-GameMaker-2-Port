function scrStormDrawHUD() {
	with objEffector {
	d3d_set_projection_ortho(0,0,__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 ),0)

	if instance_exists(objPlayerDead) and !instance_exists(objMaskMenu) and !instance_exists(objDirector) and !instance_exists(objDirectorWalk) {
	if objPlayerDead.visible=1 {
	if text_y<64 text_y+=4
	draw_set_font(fntRestart)
	draw_set_halign(fa_center)
	draw_set_valign(fa_center)
	draw_set_color(c_black)
	draw_rectangle(64+string_width(string_hash_to_newline("PRESS R TO RESTART"))+8,__view_get( e__VW.HView, 0 )+32-text_y-14,56,__view_get( e__VW.HView, 0 )+32-text_y+14,0)
	draw_set_color(merge_color(c_orange,c_maroon,0.5+lengthdir_x(0.5,coldir*2.71)))
	draw_text_transformed(64+string_width(string_hash_to_newline("PRESS R TO RESTART"))*0.5,__view_get( e__VW.HView, 0 )+31-text_y+lengthdir_x(1,coldir*3),string_hash_to_newline("PRESS R TO RESTART"),1,1,lengthdir_x(2,coldir*4-20))
	draw_set_color(merge_color(c_aqua,c_fuchsia,0.5+lengthdir_x(0.5,coldir*3.21)))
	draw_text_transformed(64+string_width(string_hash_to_newline("PRESS R TO RESTART"))*0.5,__view_get( e__VW.HView, 0 )+30-text_y+lengthdir_x(1,coldir*3),string_hash_to_newline("PRESS R TO RESTART"),1,1,lengthdir_x(2,coldir*4))
	}
	}


	draw_set_blend_mode(bm_subtract)
	my_y=random(32)
	my_x=random(32)
	draw_sprite_tiled_ext(sprNoise,0,-my_x,-my_y,1,1,make_color_hsv(random(255),random(255),255),1)

	draw_set_blend_mode(bm_subtract)
	draw_circle_color(__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.HView, 0 )/2,370+random(34),c_black,merge_color(c_gray,merge_color(c_aqua,c_navy,0.1+random(0.4)),0.15+random(0.15)),0)
	draw_set_blend_mode(bm_normal)

	if instance_exists(objNicke) scrNickeDrawAmmo() else scrDrawAmmo()
	scrDrawTutorial()
	scrDrawFloorCleared()
	scrDrawLevelCleared()
	scrDrawConversation()
	scrDrawMaskMenu()
	scrDrawCobraMaskMenu()

	if fade=0 {
	if amount<180 {
	if wait>0 wait-=1 else amount+=5
	color1=merge_color(c_black,merge_color(c_aqua,c_white,0.5+lengthdir_x(0.5,amount)),0.5+lengthdir_x(0.5,amount))
	if amount>90 color2=merge_color(c_black,merge_color(c_fuchsia,c_white,abs(lengthdir_y(1,amount))),abs(lengthdir_y(1,amount))) else color2=c_white
	draw_set_blend_mode(bm_subtract)
	draw_rectangle_color(-10,-10,__view_get( e__VW.WView, 0 )+10,__view_get( e__VW.HView, 0 )+10,color1,color2,color2,color1,0)
	draw_set_blend_mode(bm_normal)
	}
	}

	if fade=1 {
	if newsong=1 or restart=1 {if amount>0 scrSongVolume(amount/180)}
	color1=merge_color(c_black,merge_color(c_aqua,c_white,0.5+lengthdir_x(0.5,amount)),0.5+lengthdir_x(0.5,amount))
	if amount>90 color2=merge_color(c_black,merge_color(c_fuchsia,c_white,abs(lengthdir_y(1,amount))),abs(lengthdir_y(1,amount))) else color2=c_white
	draw_set_blend_mode(bm_subtract)
	draw_rectangle_color(-10,-10,__view_get( e__VW.WView, 0 )+10,__view_get( e__VW.HView, 0 )+10,color2,color1,color1,color2,0)
	draw_set_blend_mode(bm_normal)
	}
	coldir+=1
	if whitealpha>0 {
	draw_set_blend_mode(bm_add)
	draw_set_color(merge_color(c_black,c_white,whitealpha))
	draw_rectangle(-10,-10,__view_get( e__VW.WView, 0 )+10,__view_get( e__VW.HView, 0 )+10,0)
	draw_set_blend_mode(bm_normal)
	whitealpha-=0.1
	}
	scrDrawNoise()
	}



}
