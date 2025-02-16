legsprite=sprNickeLegs
draw_sprite_ext(legsprite,legindex,x+1,y+1,image_xscale,image_yscale,image_angle,c_black,0.5)
draw_sprite_ext(sprite_index,image_index,x+1,y+1,image_xscale,image_yscale,image_angle,c_black,0.5)
draw_sprite_ext(legsprite,legindex,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)

if sprite_index=sprHoboPutOnMask {
draw_sprite_ext(sprPutOnRooster,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
}
if sprite_index=sprHoboTakeOffMask {
draw_sprite_ext(sprTakeOffRooster,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
}

