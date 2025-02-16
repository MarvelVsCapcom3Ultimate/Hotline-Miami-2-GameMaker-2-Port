function scrDrawCredits() {
	if on=1 {
	if blacky<40 blacky+=1/3 else {
	d3d_set_projection_ortho(0,0,__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 ),0)
	draw_set_halign(fa_center)
	draw_set_valign(fa_center)
	textalpha=1-(abs(textx)*(1/(__view_get( e__VW.WView, 0 )*0.75)))
	draw_set_font(fntCreditsSmall)
	color1=merge_color(c_green,c_lime,0.5+lengthdir_x(0.3,dir))
	color2=merge_color(merge_color(c_green,c_black,0.5),c_green,0.5+lengthdir_x(0.3,dir))
	draw_text_transformed_color(__view_get( e__VW.WView, 0 )/2+1,__view_get( e__VW.HView, 0 )/2-20+1+textx*0.01,string_hash_to_newline(title[current]),0.5,0.5,0,color1,color1,color2,color2,textalpha)
	color1=merge_color(c_yellow,c_white,0.5+lengthdir_x(0.3,dir))
	color2=merge_color(c_orange,c_yellow,0.5+lengthdir_x(0.3,dir))
	draw_text_transformed_color(__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.HView, 0 )/2-20+textx*0.01,string_hash_to_newline(title[current]),0.5,0.5,0,color1,color1,color2,color2,textalpha)


	draw_set_font(fntCreditsBig)
	color1=merge_color(c_red,c_white,0.5+lengthdir_x(0.3,dir))
	color2=merge_color(c_red,c_fuchsia,0.5+lengthdir_x(0.3,dir))
	draw_text_transformed_color(__view_get( e__VW.WView, 0 )/2+2,__view_get( e__VW.HView, 0 )/2+2+textx*0.01,string_hash_to_newline(credit[current]),0.5,0.5,0,color1,color1,color2,color2,textalpha)
	color2=merge_color(c_red,c_white,0.5+lengthdir_x(0.3,dir))
	color1=merge_color(c_red,c_fuchsia,0.5+lengthdir_x(0.3,dir))
	draw_set_font(fntCreditsOutline)
	draw_text_transformed_color(__view_get( e__VW.WView, 0 )/2+2,__view_get( e__VW.HView, 0 )/2+2+textx*0.01,string_hash_to_newline(credit[current]),0.5,0.5,0,color1,color1,color2,color2,textalpha)
	draw_set_font(fntCreditsBig)
	color1=merge_color(merge_color(c_aqua,c_white,0.5+lengthdir_x(0.2,dir)),c_white,whitealpha)
	color2=merge_color(merge_color(c_aqua,c_blue,0.3-lengthdir_x(0.3,dir)),c_white,whitealpha)
	draw_text_transformed_color(__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.HView, 0 )/2+textx*0.01,string_hash_to_newline(credit[current]),0.5,0.5,0,color1,color1,color2,color2,textalpha)
	color2=merge_color(merge_color(c_aqua,c_white,0.5+lengthdir_x(0.2,dir)),c_white,random(whitealpha))
	color1=merge_color(merge_color(c_aqua,c_blue,0.3-lengthdir_x(0.3,dir)),c_white,random(whitealpha))
	draw_set_font(fntCreditsOutline)
	draw_text_transformed_color(__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.HView, 0 )/2+textx*0.01,string_hash_to_newline(credit[current]),0.5,0.5,0,color1,color1,color2,color2,textalpha)

	dir+=2
	if whitealpha>0 whitealpha-=0.01
	if next=0 {
	if textx>12 textx-=6 else {if textx>0 whitealpha=1 textx=0}
	if creditswait>0 creditswait-=1 else {if current<6 next=1}
	} else {
	if textx>-__view_get( e__VW.WView, 0 )*0.75 {creditswait=40 textx-=6} else {textx=-__view_get( e__VW.WView, 0 )*0.75 if creditswait>0 creditswait-=1 else {creditswait=480 current+=1 next=0 textx=abs(textx)}}
	}
	}
	draw_set_blend_mode(bm_subtract)
	my_y=random(32)
	my_x=random(32)
	draw_sprite_tiled_ext(sprNoise,0,-my_x,-my_y,1,1,merge_color(c_black,c_white,blacky*(1/40)),1)

	draw_set_blend_mode(bm_subtract)
	draw_circle_color(__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.HView, 0 )/2,370+random(34),c_black,merge_color(c_black,merge_color(c_gray,merge_color(c_aqua,c_navy,0.1+random(0.4)),0.15+random(0.15)),blacky*(1/40)),0)
	draw_set_blend_mode(bm_normal)

	draw_set_color(c_black)
	draw_rectangle(-10,-10,__view_get( e__VW.WView, 0 )+10,blacky,0)
	draw_rectangle(-10,__view_get( e__VW.HView, 0 )-blacky,__view_get( e__VW.WView, 0 )+10,__view_get( e__VW.HView, 0 )+10,0)
	}



}
