if talked=0 {
draw_sprite_ext(sprArrow,2,x+64+lengthdir_x(2,dir),y,1,1,0,c_white,1)
dir+=4
}
draw_sprite_ext(sprite_index,image_index,x+1,y+1,image_xscale,image_yscale,image_angle,c_black,0.5)
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)

