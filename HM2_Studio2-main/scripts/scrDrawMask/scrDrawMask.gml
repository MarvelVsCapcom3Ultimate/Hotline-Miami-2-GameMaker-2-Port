function scrDrawMask() {
	var addx, addy, maskdir, maskdist;
	maskdir=point_direction(0,0,maskx[round(image_index)],masky[round(image_index)]*left)+dir
	maskdist=point_distance(0,0,maskx[round(image_index)],masky[round(image_index)])
	addx=lengthdir_x(maskdist,maskdir)
	addy=lengthdir_y(maskdist,maskdir)
	draw_sprite_ext(sprCobraMasks,global.maskindex,x+addx+1,y+addy+1,image_xscale,image_yscale*left,dir,c_black,0.25)
	draw_sprite_ext(sprCobraMasks,global.maskindex,x+addx,y+addy,image_xscale,image_yscale*left,dir,image_blend,image_alpha)



}
