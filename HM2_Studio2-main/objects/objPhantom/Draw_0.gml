if sprite_index=sprPhantomWalk {
legsprite=sprPhantomLegs
dir=image_angle
draw_sprite_ext(legsprite,legindex,x+1,y+1,image_xscale,image_yscale,direction,c_black,0.5)
draw_sprite_ext(sprite_index,image_index,x+1,y+1,image_xscale,image_yscale,dir,c_black,0.5)
draw_sprite_ext(legsprite,legindex,x,y,image_xscale,image_yscale,direction,image_blend,image_alpha)
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,dir,image_blend,image_alpha)
} else {
draw_sprite_ext(sprite_index,image_index,x+1,y+1,image_xscale,image_yscale,image_angle,c_black,0.5)
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
}

