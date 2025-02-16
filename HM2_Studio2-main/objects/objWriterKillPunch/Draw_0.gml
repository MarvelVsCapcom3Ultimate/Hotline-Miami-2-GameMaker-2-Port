if sprite_index=sprWriterKillPunch {index=floor(hits*0.5)*8+image_index}
if sprite_index=sprWriterCpr2 {
index=image_index
sprite=sprEMafiaDeadCpr
}
draw_sprite_ext(sprite,index,x+1,y+1,image_xscale,image_yscale,image_angle,c_black,0.5)
draw_sprite_ext(sprite_index,image_index,x+1,y+1,image_xscale,image_yscale,image_angle,c_black,0.5)
draw_sprite_ext(sprite,index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
