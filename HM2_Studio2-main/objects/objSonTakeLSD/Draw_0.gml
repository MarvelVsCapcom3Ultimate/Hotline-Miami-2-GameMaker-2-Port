draw_sprite_ext(sprite_index,image_index,x+1,y+1,image_xscale,image_yscale,image_angle,c_black,0.5)
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)

if wait=0 and pills<4 and image_speed=0 {
if !instance_exists(objConversation) {
with objSonCouchLSD {
draw_sprite(sprArrow,3,x,y+lengthdir_x(4,dir))
dir+=4
}
}
}
