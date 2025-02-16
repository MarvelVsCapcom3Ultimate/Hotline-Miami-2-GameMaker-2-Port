if sprite_index=sprSquadJacketWalkUnarmed draw_sprite_ext(sprSoldierLegs,legindex,x,y,image_xscale,image_yscale,image_angle,c_black,0.5)
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_black,0.5)
if sprite_index=sprSquadJacketWalkUnarmed draw_sprite_ext(sprSoldierLegs,legindex,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)

if objPlayer.active=1 {
if sprite_index=sprSquadJacketCallForHelp {
draw_sprite_ext(sprArrow,3,x,y-16+lengthdir_x(2,dir),1,1,0,c_white,1)
dir+=4
}
}
