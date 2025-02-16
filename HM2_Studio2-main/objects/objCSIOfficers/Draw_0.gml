draw_sprite_ext(sprite_index,image_index,x+1,y+1,image_xscale,image_yscale,image_angle,c_black,0.5)
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)

if image_index=0 {
if on=0 {
draw_sprite(sprArrow,3,x,y-24+lengthdir_x(2,dir))
dir+=4
}
}
