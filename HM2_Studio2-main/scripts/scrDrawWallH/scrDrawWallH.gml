function scrDrawWallH() {
	i=0
	repeat ceil((sprite_get_width(mask_index))*(1/32)) {
	draw_sprite_ext(sprite_index,image_index,x+3+i*32,y+3,image_xscale,image_yscale,image_angle,c_black,0.5)
	draw_sprite(sprite_index,image_index,x+i*32,y)
	i+=1
	}



}
