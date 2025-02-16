function scrDrawWallV() {
	i=0
	repeat ceil((sprite_get_height(mask_index))*(1/32)) {
	draw_sprite_ext(sprite_index,image_index,x+3,y+3+i*32,image_xscale,image_yscale,image_angle,c_black,0.5)
	draw_sprite(sprite_index,image_index,x,y+i*32)
	i+=1
	}



}
