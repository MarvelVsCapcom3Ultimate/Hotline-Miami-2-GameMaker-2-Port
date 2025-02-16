draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_black,0.5)
draw_sprite_ext(sprite_index,image_index,x,y-1+lengthdir_y(1,dir*0.5),image_xscale,image_yscale,image_angle,image_blend,image_alpha)
if on {
draw_sprite_ext(sprArrow,2,x+12+lengthdir_x(2,dir),y,1,1,0,c_white,1)
dir+=6
}
