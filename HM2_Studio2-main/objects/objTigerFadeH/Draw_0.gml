i=0
repeat (16) {
draw_sprite_ext(sprite_index,image_index,x,y+add*4*i,image_xscale,image_yscale,image_angle,image_blend,1)
i+=1
}
repeat (16) {
draw_sprite_ext(sprite_index,image_index,x,y+add*4*i,image_xscale,image_yscale,image_angle,image_blend,image_alpha-((i-16)*(1/16)))
i+=1
}
