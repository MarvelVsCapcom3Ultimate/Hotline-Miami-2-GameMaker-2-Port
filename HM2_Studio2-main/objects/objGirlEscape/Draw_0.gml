if myspeed>1 {
draw_sprite_ext(sprGirlLegs,legindex,x+1,y+1,image_xscale,image_yscale,image_angle,c_black,0.5)
draw_sprite_ext(sprGirlLegs,legindex,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
legindex+=0.35
}
draw_sprite_ext(sprite_index,image_index,x+1,y+1,image_xscale,image_yscale,image_angle,c_black,0.5)
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
