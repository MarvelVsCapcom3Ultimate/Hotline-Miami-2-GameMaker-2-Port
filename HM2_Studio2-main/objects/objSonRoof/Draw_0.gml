if sprite_index=sprSonWalkMagnum or sprite_index=sprSonWalkRoofLSD {
draw_sprite_ext(sprEMafiaLegs,image_index*2,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
}
draw_sprite_ext(sprite_index,image_index,x+1,y+1,image_xscale,image_yscale,image_angle,c_black,0.5)
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
