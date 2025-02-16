if speed>maxspeed maxspeed=speed
alpha=0.5+speed*(1/maxspeed)
if alpha>1 alpha=1
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,merge_color(c_white,c_ltgray,alpha),1)
if speed>0 {
draw_set_alpha(speed*(1/maxspeed))
d3d_set_fog(1,c_white,0,0)
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,speed*(1/maxspeed))
draw_set_alpha(1)
d3d_set_fog(0,0,0,0)
}
