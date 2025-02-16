function scrDrawAmmoOld() {
	if room=rmTutorialFloor1 or room=rmTutorialFloor2 or room=rmTutorialFloor2MovieSet or room=rmFansHeadQuarters or room=rmTalkShow or room=rmCourt or room=rmHighway nothing=1 else {
	scrGetAmmoDraw()
	if global.ammo>0 ammostring=string(global.ammo)+"/"+string(global.maxammo)+"rnds" else ammostring="Empty"
	if global.ammo<0 ammostring="No Gun"
	if global.done=1 ammostring="Go To Car"
	if global.drawscore<global.myscore {
	if global.drawscore+50<global.myscore global.drawscore+=50 else global.drawscore=global.myscore
	}
	if global.combotime>0 global.combotime-=1 else {
	if global.combotime=0 {
	if global.combo>1 {
	with (instance_create(objPlayer.x, objPlayer.y - 24, objPoints))
		objPoints.str=string(global.combo - 1) + "xCOMBO";
	global.myscore+=round(((global.combo-1)*(global.combo*0.25)*1000)*(1/50))*50
	}
	global.combotime=-100
	global.combo=0
	}
	}

	draw_set_blend_mode(bm_subtract)
	i=0
	repeat (7) {
	draw_rectangle_color(0,11+i*5,120+combox+lengthdir_x(8,dir+i*45),14+i*5,c_dkgray,c_black,c_black,c_dkgray,0)
	i+=1
	}

	i=0
	repeat (6) {
	draw_rectangle_color(__view_get( e__VW.WView, 0 )-120+scorex,11+i*5,__view_get( e__VW.WView, 0 ),14+i*5,c_black,c_dkgray,c_dkgray,c_black,0)
	draw_rectangle_color(0,217+i*5,120+ammox+lengthdir_x(8,dir+i*45),220+i*5,c_dkgray,c_black,c_black,c_dkgray,0)
	i+=1
	}
	draw_set_blend_mode(bm_normal)

	draw_set_font(fntAmmo)
	draw_set_color(c_black)
	draw_set_halign(fa_right)
	draw_set_valign(fa_top)
	draw_text(__view_get( e__VW.WView, 0 )-21+scorex,17,string_hash_to_newline(string(global.drawscore)+"pts"))
	draw_text(__view_get( e__VW.WView, 0 )-25+scorex+lengthdir_x(0.5,dir-180),13+lengthdir_x(0.5,dir-180),string_hash_to_newline(string(global.drawscore)+"pts"))
	draw_set_halign(fa_left)
	draw_set_font(fntCombo)
	draw_text(23+combox,-7,string_hash_to_newline(string(global.combo)+"x"))
	draw_text(26+combox,-4,string_hash_to_newline(string(global.combo)+"x"))
	draw_set_font(fntAmmo)
	draw_text(23+ammox+lengthdir_x(0.5,dir),219+lengthdir_x(0.5,dir),string_hash_to_newline(ammostring))
	draw_text(27+ammox,223,string_hash_to_newline(ammostring))
	draw_text_color(26+ammox,222,string_hash_to_newline(ammostring),merge_color(c_fuchsia,c_purple,0.5+lengthdir_x(0.5,dir)),merge_color(c_fuchsia,c_purple,0.5+lengthdir_x(0.5,dir)),merge_color(c_red,c_maroon,0.5+lengthdir_x(0.5,dir)),merge_color(c_red,c_maroon,0.5+lengthdir_x(0.5,dir)),1)
	draw_text_color(24+ammox+lengthdir_x(0.5,dir),220+lengthdir_x(0.5,dir),string_hash_to_newline(ammostring),c_white,c_white,c_aqua,c_aqua,1)
	draw_set_font(fntCombo)
	draw_text_color(25+combox,-5,string_hash_to_newline(string(global.combo)+"x"),merge_color(c_red,c_fuchsia,0.5+lengthdir_x(0.5,dir+90)),merge_color(c_red,c_fuchsia,0.5+lengthdir_x(0.5,dir+90)),merge_color(c_maroon,c_red,0.5+lengthdir_x(0.5,dir+90)),merge_color(c_maroon,c_red,0.5+lengthdir_x(0.5,dir+90)),1)
	draw_text_color(24+combox,-6,string_hash_to_newline(string(global.combo)+"x"),merge_color(c_red,c_fuchsia,0.5+lengthdir_x(0.5,dir)),merge_color(c_red,c_fuchsia,0.5+lengthdir_x(0.5,dir)),merge_color(c_maroon,c_red,0.5+lengthdir_x(0.5,dir)),merge_color(c_maroon,c_red,0.5+lengthdir_x(0.5,dir)),1)
	draw_set_font(fntAmmo)
	draw_set_halign(fa_right)
	draw_set_valign(fa_top)
	draw_text_color(__view_get( e__VW.WView, 0 )-22+scorex,16,string_hash_to_newline(string(global.drawscore)+"pts"),merge_color(c_fuchsia,c_purple,0.5+lengthdir_x(0.5,dir)),merge_color(c_fuchsia,c_purple,0.5+lengthdir_x(0.5,dir)),merge_color(c_red,c_maroon,0.5+lengthdir_x(0.5,dir)),merge_color(c_red,c_maroon,0.5+lengthdir_x(0.5,dir)),1)
	draw_text_color(__view_get( e__VW.WView, 0 )-24+scorex+lengthdir_x(0.5,dir-180),14+lengthdir_x(0.5,dir-180),string_hash_to_newline(string(global.drawscore)+"pts"),c_white,c_white,c_aqua,c_aqua,1)
	dir+=4
	if global.ammo>-1 or global.done=1 {
	if ammox<0 ammox+=8
	} else {
	if ammox>-160 ammox-=8
	}
	if scorex>0 scorex-=8
	if global.combo>1 {if combox<0 combox+=8} else {if combox>-160 combox-=8}
	}




}
