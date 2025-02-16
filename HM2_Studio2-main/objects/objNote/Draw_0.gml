draw_sprite_ext(sprite_index,image_index,x+1,y+1,image_xscale,image_yscale,image_angle,c_black,0.5)
if place_meeting(x,y+16,objPlayer) addy=lengthdir_y(1,dir) else addy=0
draw_sprite_ext(sprite_index,image_index,x,y+addy,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
dir+=4
if talked=0 {
draw_sprite_ext(sprArrow,1,x,y+16+lengthdir_x(2,dir),1,1,0,c_white,1)
}
