draw_sprite_ext(sprite_index,image_index,x+1,y+1,image_xscale,image_yscale,image_angle,c_black,0.5)
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
if on=1 {
draw_sprite_ext(sprite_index,3,x,y,image_xscale,image_yscale,image_angle,image_blend,random(blink)*0.5)
if blink>0 blink-=0.1
}
