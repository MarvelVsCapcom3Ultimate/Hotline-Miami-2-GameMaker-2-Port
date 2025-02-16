draw_sprite_ext(sprite_index,image_index,x+1,y+1,image_xscale,image_yscale,image_angle,c_black,0.5)
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
if talked=0 {
draw_sprite_ext(sprArrow,1,x,y+16+lengthdir_y(2,dir),image_xscale,image_yscale,image_angle,image_blend,image_alpha)
dir+=4
}
