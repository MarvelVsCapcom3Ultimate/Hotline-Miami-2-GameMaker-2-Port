if sprite_index=sprEMafiaWalkUnarmed draw_sprite_ext(sprEMafiaLegs,legindex,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)

if image_xscale>1 {
image_xscale-=0.05
image_yscale-=0.05
d3d_set_fog(true,c_white,0,0)
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,(image_xscale-1)*2)
d3d_set_fog(0,0,0,0)
} else on=1
