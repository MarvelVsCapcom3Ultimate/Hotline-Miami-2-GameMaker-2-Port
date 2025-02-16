image_yscale=image_xscale
draw_sprite_ext(sprNickeLegs,legindex,x+1,y+1,image_xscale,image_yscale,image_angle,c_black,0.5)
draw_sprite_ext(sprite_index,image_index,x+1,y+1,image_xscale,image_yscale,image_angle,c_black,0.5)
draw_sprite_ext(sprNickeLegs,legindex,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
if image_xscale>1 {
d3d_set_fog(1,c_white,0,0)
draw_sprite_ext(sprNickeLegs,legindex,x,y,image_xscale,image_yscale,image_angle,image_blend,(image_xscale-1)*2)
d3d_set_fog(0,0,0,0)
}
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)

if image_xscale>1 {
d3d_set_fog(1,c_white,0,0)
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,(image_xscale-1)*2)
d3d_set_fog(0,0,0,0)
image_xscale-=0.05
} else image_xscale=1
