function scrDrawPause() {
	myy=-0.5+random(1)
	i=0
	texture_set_interpolation(true)
	repeat (dists) {
	ii=0
	repeat (distheight[i]) {
	draw_surface_general(surf3,0,disty[i]-1+random(2)+ii,surface_get_width(surf3),1,(ii*(ii*0.1)-3+random(6))*factor,myy+disty[i]+ii,1,1,0,merge_color(c_white,make_color_hsv(random(255),random(255),255),factor),merge_color(c_white,make_color_hsv(random(255),random(255),255),factor),merge_color(c_white,make_color_hsv(random(255),random(255),255),factor),merge_color(c_white,make_color_hsv(random(255),random(255),255),factor),1)
	ii+=1
	}
	i+=1
	}

	draw_surface_general(surf3,0,0,surface_get_width(surf3),disty[0],0,myy,1,1,0,merge_color(c_white,make_color_hsv(random(255),100,255),factor),merge_color(c_white,make_color_hsv(random(255),100,255),factor),merge_color(c_white,make_color_hsv(random(255),100,255),factor),merge_color(c_white,make_color_hsv(random(255),100,255),factor),1-random(0.2))
	draw_surface_general(surf3,0,disty[0]+distheight[0],surface_get_width(surf3),disty[1]-(disty[0]+distheight[0]),0,myy+disty[0]+distheight[0],1,1,0,merge_color(c_white,make_color_hsv(random(255),100,255),factor),merge_color(c_white,make_color_hsv(random(255),100,255),factor),merge_color(c_white,make_color_hsv(random(255),100,255),factor),merge_color(c_white,make_color_hsv(random(255),100,255),factor),1-random(0.2)*factor)
	draw_surface_general(surf3,0,disty[1]+distheight[1],surface_get_width(surf3),disty[2]-(disty[1]+distheight[1]),0,myy+disty[1]+distheight[1],1,1,0,merge_color(c_white,make_color_hsv(random(255),100,255),factor),merge_color(c_white,make_color_hsv(random(255),100,255),factor),merge_color(c_white,make_color_hsv(random(255),100,255),factor),merge_color(c_white,make_color_hsv(random(255),100,255),factor),1-random(0.2)*factor)
	draw_surface_general(surf3,0,disty[2]+distheight[2],surface_get_width(surf3),room_height-(disty[2]+distheight[2]),0,myy+disty[2]+distheight[2],1,1,0,merge_color(c_white,make_color_hsv(random(255),100,255),factor),merge_color(c_white,make_color_hsv(random(255),100,255),factor),merge_color(c_white,make_color_hsv(random(255),100,255),factor),merge_color(c_white,make_color_hsv(random(255),100,255),factor),1-random(0.2)*factor)



	draw_surface_ext(surf1,0,0,1,1,0,merge_color(c_white,make_color_hsv(random(255),50,255),factor),0.5)
	draw_sprite_ext(global.sprite,0,0,0,1/3,1/3,0,c_white,1-factor)
	//draw_clear_alpha(c_gray,0.1+random(0.02))
	draw_set_color(c_white)
	height=baseheight+room_height*(0.05+random(0.05))+(1-factor)*100
	if on=0 top+=11
	draw_rectangle(0,top,room_width,top+height,0)
	i=0
	repeat (10) {
	repeat (i*3+3) {
	draw_sprite_ext(sprMediumBlackDistortion,random(2),random(room_width),top+height-40+i*3+random(3),(-1+round(random(1))*2)*random(1+i*0.1),(-1+round(random(1))*2)*random(1+i*0.1),0,merge_color(c_white,make_color_hsv(random(255),random(255),255),factor),1-random(0.25))
	repeat (i*0.5) draw_sprite_ext(sprSmallBlackDistortion,random(3),random(room_width),top+height-9+i,1,1,0,merge_color(c_white,make_color_hsv(random(255),random(255),255),factor),1)
	}
	repeat (40-i*2) draw_sprite_ext(sprSmallWhiteDistortion,random(3),random(room_width),top+height+i,1,1,0,merge_color(c_white,make_color_hsv(random(255),random(255),255),factor),1)
	i+=1
	}
	i=0
	repeat (2) {
	repeat (80-i*40) draw_sprite_ext(sprSmallWhiteDistortion,random(3),random(room_width),top+1-i,1,1,0,merge_color(c_white,make_color_hsv(random(255),random(255),255),factor),1)
	i+=1
	}
	i=0 
	repeat (lines) {
	repeat (20) draw_sprite_ext(sprSmallWhiteDistortion,random(3),random(room_width),liney[i]-2+random(3),1,1,0,merge_color(c_white,make_color_hsv(random(255),random(255),255),factor),random(0.3))
	i+=1
	}

	texture_set_interpolation(false)



}
