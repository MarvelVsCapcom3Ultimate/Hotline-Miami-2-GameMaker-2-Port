draw_sprite_ext(sprite_index,image_index,x+1,y+1,image_xscale,image_yscale,image_angle,c_black,0.5)
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)

if on=1 {
if talked=0 {
draw_sprite_ext(sprArrow,3,x,y-16+lengthdir_x(1,dir),1,1,0,c_white,1)
dir+=4
}
}
