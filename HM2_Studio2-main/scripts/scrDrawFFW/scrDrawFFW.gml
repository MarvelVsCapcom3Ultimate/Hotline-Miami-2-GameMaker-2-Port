function scrDrawFFW() {

	draw_surface_ext(surf1,0,0,1,1,0,make_color_hsv(random(255),random(50),100),1)
	draw_clear_alpha(c_blue,0.5-rewline*0.005+random(0.02))
	if round(random(60))=2 {
	i=0
	lines=5+floor(random(4)) 
	repeat (lines) {
	liney[i]=random(room_height)
	i+=1
	}
	}
	i=0 
	repeat (lines) {
	repeat (20) draw_sprite_ext(sprSmallWhiteDistortion,random(3),random(room_width),liney[i]-2+random(3),1,1,0,c_white,random(0.3))
	i+=1
	}

	i=0
	repeat (8) {
	repeat (24-i*3) {
	draw_sprite_ext(sprSmallWhiteDistortion,random(3),random(room_width),rewline-i*2-random(i*0.3),1,1,0,c_white,1-random(0.2))
	draw_sprite_ext(sprSmallWhiteDistortion,random(3),random(room_width),room_height-rewline+i*2+random(i*0.3),1,1,0,c_white,1-random(0.2))
	}
	i+=1
	}

	repeat (16) {
	draw_sprite_ext(sprMediumWhiteDistortion,random(2),random(room_width),rewline-random(3),1,1,0,c_white,1-random(0.2))
	draw_sprite_ext(sprMediumWhiteDistortion,random(2),random(room_width),room_height-rewline+random(3),1,1,0,c_white,1-random(0.2))
	 }








}
