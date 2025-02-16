draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
if state=0 {
draw_sprite_ext(sprArrow,0,x-24+lengthdir_x(2,dir),y,1,1,0,c_white,1)
dir+=2
}
