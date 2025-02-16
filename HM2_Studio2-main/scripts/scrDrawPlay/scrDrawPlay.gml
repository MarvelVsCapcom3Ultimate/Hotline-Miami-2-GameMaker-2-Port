function scrDrawPlay() {

	draw_surface_ext(surf1,0,0,1,1,0,make_color_hsv(random(255),random(50),100),1)
	draw_clear_alpha(c_gray,0.1+random(0.02))
	draw_set_color(c_white)
	if round(random(30))=2 top=room_height*0.1+random(room_height*0.2)
	if round(random(30))=2 baseheight=room_height*0.3+random(room_height*0.2)
	if round(random(60))=2 {
	i=0
	lines=floor(random(4)) 
	repeat (lines) {
	liney[i]=random(room_height)
	i+=1
	}
	}
	height=baseheight+room_height*random(0.1)
	draw_rectangle(0,top,room_width,top+height,0)
	top-=0.25
	if baseheight>45 baseheight-=0.5
	i=0
	repeat (10) {
	repeat (i*3+3) {
	draw_sprite_ext(sprMediumBlackDistortion,random(2),random(room_width),top+height-40+i*3+random(3),(-1+round(random(1))*2)*random(1+i*0.1),(-1+round(random(1))*2)*random(1+i*0.1),0,c_white,1-random(0.25))
	repeat (i*0.5) draw_sprite_ext(sprSmallBlackDistortion,random(3),random(room_width),top+height-9+i,1,1,0,c_white,1)
	}
	repeat (40-i*2) draw_sprite_ext(sprSmallWhiteDistortion,random(3),random(room_width),top+height+i,1,1,0,c_white,1)
	i+=1
	}
	i=0
	repeat (2) {
	repeat (80-i*40) draw_sprite_ext(sprSmallWhiteDistortion,random(3),random(room_width),top+1-i,1,1,0,c_white,1)
	i+=1
	}


	i=0 
	repeat (lines) {
	repeat (20) draw_sprite_ext(sprSmallWhiteDistortion,random(3),random(room_width),liney[i]-2+random(3),1,1,0,c_white,random(0.3))
	i+=1
	}




}
