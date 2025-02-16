function scrDrawConversationLSD() {
	if !sprite_exists(lastsprite) lastsprite=sprite
	if instance_exists(objConversation) and lastsprite=sprite {
	conversationwait=1
	index=objConversation.index
	if instance_exists(objConversation) {
	if blackx<42.5 blackx+=2.5 else blackx=45
	if blackx>15 {
	if phonex<180 phonex+=10
	}
	} else {
	if blackx>0 blackx-=2.5
	if phonex>0 phonex-=10
	if blackx<=0 and phonex<=0 lastsprite=sprite
	if blackx<0 blackx=0
	}
	phonecolor1=merge_color(c_aqua,c_fuchsia,0.5+lengthdir_x(0.5,global.dir*2))
	phonecolor2=c_black//merge_color(c_teal,c_purple,0.5+lengthdir_x(0.5,global.dir*2))


	draw_triangle_color(__view_get( e__VW.WView, 0 )-phonex,0,__view_get( e__VW.WView, 0 ),0,__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 ),phonecolor1,phonecolor1,phonecolor2,0)
	draw_triangle_color(__view_get( e__VW.WView, 0 )-phonex,0,__view_get( e__VW.WView, 0 )-phonex+70,__view_get( e__VW.HView, 0 ),__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 ),phonecolor1,phonecolor2,phonecolor2,0)
	draw_sprite_ext(sprPhoneLine,0,__view_get( e__VW.WView, 0 )-phonex,0,1,2,15,c_white,1)
	draw_set_color(c_black)
	draw_rectangle(0,0,__view_get( e__VW.WView, 0 ),blackx,0)
	draw_sprite_ext(sprPhoneLine,0,0,blackx,1,2,90,c_white,1)
	draw_rectangle(0,__view_get( e__VW.HView, 0 ),__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 )-blackx*1.5,0)
	draw_sprite_ext(sprPhoneLine,0,0,__view_get( e__VW.HView, 0 )-blackx*1.5,1,2,90,c_white,1)
	draw_sprite_ext(sprite,index,__view_get( e__VW.WView, 0 )-phonex+106+2,__view_get( e__VW.HView, 0 )/2+3,image_xscale,image_yscale,0,c_black,0.5)
	draw_sprite_ext(sprite,index,__view_get( e__VW.WView, 0 )-phonex+106,__view_get( e__VW.HView, 0 )/2,image_xscale,image_yscale,0,c_white,1)
	if sprite=sprFaceSonGate {
	with objMoney {
	if x<__view_get( e__VW.WView, 0 )-objEffector.phonex+112 draw_sprite_ext(sprite_index,image_index,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),image_xscale,image_yscale,image_angle,image_blend,image_alpha)
	}
	with objSonSuckedIn {
	if x<__view_get( e__VW.WView, 0 )-objEffector.phonex+112 draw_sprite_ext(sprite_index,image_index,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),image_xscale,image_yscale,image_angle,image_blend,image_alpha)
	}
	with objSpeedLine {
	if x<__view_get( e__VW.WView, 0 )-objEffector.phonex+112 draw_sprite_ext(sprite_index,image_index,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),image_xscale,image_yscale,image_angle,image_blend,image_alpha)
	}
	if index>=7 draw_sprite_ext(sprFaceSonGateCover,index,__view_get( e__VW.WView, 0 )-phonex+106,__view_get( e__VW.HView, 0 )/2,image_xscale,image_yscale,0,c_white,1)
	}
	if blackx=45 {
	textcolor1=merge_color(merge_color(c_fuchsia,c_teal,0.5+lengthdir_x(0.5,global.dir)),c_black,objConversation.reload*0.1)
	textcolor2=merge_color(merge_color(c_white,c_aqua,0.25-lengthdir_x(0.25,global.dir)),c_black,objConversation.reload*0.1)
	draw_set_color(textcolor1)
	draw_set_halign(fa_left)
	draw_set_valign(fa_top)
	draw_set_font(fntConversation)
	draw_text(27,__view_get( e__VW.HView, 0 )-57,string_hash_to_newline(string_upper(objConversation.line1[objConversation.current])))
	draw_text(27,__view_get( e__VW.HView, 0 )-39,string_hash_to_newline(string_upper(objConversation.line2[objConversation.current])))
	draw_set_color(textcolor2)
	draw_text(25.5-lengthdir_x(0.5,global.dir*4),__view_get( e__VW.HView, 0 )-58.5-lengthdir_x(0.5,global.dir*4),string_hash_to_newline(string_upper(objConversation.line1[objConversation.current])))
	draw_text(25.5-lengthdir_x(0.5,global.dir*4),__view_get( e__VW.HView, 0 )-40.5-lengthdir_x(0.5,global.dir*4),string_hash_to_newline(string_upper(objConversation.line2[objConversation.current])))
	}
	} else {
	if !instance_exists(objConversation) {
	if blackx>0 or phonex>0 {
	if phonex>0 phonex-=10
	if conversationwait>0 conversationwait-=1 else {
	if blackx>0 blackx-=2.5
	if blackx<0 blackx=0
	} 
	} else lastsprite=sprite
	} else {
	if phonex>0 phonex-=10 else lastsprite=sprite
	}
	if blackx>0 {
	if phonex>0 {
	phonecolor1=merge_color(c_aqua,c_fuchsia,0.5+lengthdir_x(0.5,global.dir*2))
	phonecolor2=c_black//merge_color(c_teal,c_purple,0.5+lengthdir_x(0.5,global.dir*2))
	draw_triangle_color(__view_get( e__VW.WView, 0 )-phonex,0,__view_get( e__VW.WView, 0 ),0,__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 ),phonecolor1,phonecolor1,phonecolor2,0)
	draw_triangle_color(__view_get( e__VW.WView, 0 )-phonex,0,__view_get( e__VW.WView, 0 )-phonex+70,__view_get( e__VW.HView, 0 ),__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 ),phonecolor1,phonecolor2,phonecolor2,0)
	draw_sprite_ext(sprPhoneLine,0,__view_get( e__VW.WView, 0 )-phonex,0,1,2,12,c_white,1)
	}
	draw_set_color(c_black)
	draw_rectangle(0,0,__view_get( e__VW.WView, 0 ),blackx,0)
	draw_sprite_ext(sprPhoneLine,0,0,blackx,1,2,90,c_white,1)
	draw_rectangle(0,__view_get( e__VW.HView, 0 ),__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 )-blackx*1.5,0)
	draw_sprite_ext(sprPhoneLine,0,0,__view_get( e__VW.HView, 0 )-blackx*1.5,1,2,90,c_white,1)
	if phonex>0 {
	draw_sprite_ext(lastsprite,index,__view_get( e__VW.WView, 0 )-phonex+106+2,__view_get( e__VW.HView, 0 )/2+3,image_xscale,image_yscale,lengthdir_x(4,global.dir*1.67),c_black,0.5)
	draw_sprite_ext(lastsprite,index,__view_get( e__VW.WView, 0 )-phonex+106,__view_get( e__VW.HView, 0 )/2,image_xscale,image_yscale,lengthdir_x(4,global.dir*1.67),c_white,1)
	} 
	}
	}



}
