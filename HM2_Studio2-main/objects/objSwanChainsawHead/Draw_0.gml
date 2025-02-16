
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
if blink<8 {
draw_sprite_ext(sprSwanEyesBlink,blink,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
blink+=0.5
}

if image_xscale>1 {
draw_set_blend_mode(bm_add)
d3d_set_fog(1,merge_color(c_black,c_white,(image_xscale-1)*2),0,0)
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
d3d_set_fog(0,0,0,0)
draw_set_blend_mode(bm_normal)
image_yscale-=0.025
image_xscale-=0.025
}
