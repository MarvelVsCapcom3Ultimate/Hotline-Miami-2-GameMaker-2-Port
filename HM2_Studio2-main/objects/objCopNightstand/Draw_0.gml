draw_sprite_ext(sprite_index,image_index,x+1,y+1,image_xscale,image_yscale,image_angle,c_black,0.5)
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)

if room=rmCopApartment3Floor2Part3 {
if done=0 {
if scrMovingPlayerExists() draw_sprite(sprArrow,1,x,y+24+lengthdir_x(2,dir))
dir+=4
}
}
