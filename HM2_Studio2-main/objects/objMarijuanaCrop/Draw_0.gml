draw_sprite_ext(sprite_index,0,x+1,y+1,image_xscale,image_yscale,image_angle,c_black,0.5)
draw_sprite_ext(sprite_index,0,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
draw_set_blend_mode(bm_add)
i=0
repeat (3) {
draw_circle_color(x-52+i*52,y,36+random(1),merge_color(merge_color(c_yellow,c_orange,random(1)),c_white,random(0.2)),c_black,0)
i+=1
}
draw_set_blend_mode(bm_normal)
draw_sprite_ext(sprite_index,1,x+1,y+1,image_xscale,image_yscale,image_angle,c_black,0.5)
draw_sprite_ext(sprite_index,1,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
