draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
if (state=1 or state=2) and objPlayer.sprite_index=sprNickeWalkUnarmed {
if !instance_exists(objConversation) {
draw_sprite_ext(sprArrow,0,x-25+lengthdir_x(2,dir),y-10,1,1,0,c_white,1)
dir+=4
}
}
