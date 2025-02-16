if sprite_index=sprLSDSinkOverflowing draw_sprite_ext(sprLSDSinkWater,0,x,y,image_xscale,image_yscale,image_angle,image_blend,0.5)
draw_sprite_ext(sprite_index,image_index,x+1,y+1,image_xscale,image_yscale,image_angle,c_black,0.5)
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)

if on=1 {
draw_sprite(sprArrow,1,x,y+18+lengthdir_x(2,dir))
dir+=4
}
