draw_sprite_ext(sprite_index,image_index,x+1,y+1,image_xscale,image_yscale,image_angle,c_black,0.5)
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
if current>-1 {
if taken[current]=0 {
draw_set_blend_mode(bm_add)
draw_circle_color(x,y-34+current*16,16,merge_color(c_black,c_dkgray,0.5),c_black,0)
draw_set_blend_mode(bm_normal)
}
}
i=0
repeat (weapons) {
if current=i addy=lengthdir_x(1,dir) else addy=0
if taken[i]=0 {draw_sprite_ext(weapon[i],0,x+1,y-34+i*16+1,1,1,0,c_black,0.5) draw_sprite_ext(weapon[i],0,x,y-34+i*16+addy,1,1,0,c_white,1)}
i+=1
}
dir+=4
