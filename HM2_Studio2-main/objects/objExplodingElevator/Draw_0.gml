draw_sprite_ext(sprElevatorFloor,4,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
if on>0 {
if on=1 {
if amount<1 amount+=0.02 
//if wait>0 wait-=1 else on=2
}
if on=2 {
//if amount>0 amount-=0.001
}
draw_set_blend_mode(bm_subtract)
draw_sprite_ext(sprElevatorSmoke,0,x,y,image_xscale,image_yscale,image_angle,merge_color(merge_color(c_black,c_gray,amount),merge_color(c_black,c_white,amount),0.5+lengthdir_x(0.5,dir)),1)
draw_sprite_ext(sprElevatorSmoke,1,x,y,image_xscale,image_yscale,image_angle,merge_color(merge_color(c_black,c_gray,amount),merge_color(c_black,c_white,amount),0.5+lengthdir_x(0.5,dir*0.6+90)),1)
draw_sprite_ext(sprElevatorSmoke,2,x,y,image_xscale,image_yscale,image_angle,merge_color(merge_color(c_black,c_gray,amount),merge_color(c_black,c_white,amount),0.5+lengthdir_x(0.5,dir*1.2+180)),1)
draw_sprite_ext(sprElevatorSmoke,3,x,y,image_xscale,image_yscale,image_angle,merge_color(merge_color(c_black,c_gray,amount),merge_color(c_black,c_white,amount),0.5+lengthdir_x(0.5,dir*0.8+270)),1)
draw_set_blend_mode(bm_normal)
dir+=2

if index<20 {
if index>=3 and index<=20 draw_sprite_ext(sprElevatorExplosion,index-2,x,y,image_xscale,image_yscale,image_angle,merge_color(c_orange,c_maroon,amount),1)
if index>=2 and index<=19 draw_sprite_ext(sprElevatorExplosion,index-1,x,y,image_xscale,image_yscale,image_angle,merge_color(c_yellow,c_orange,amount),1)
if index<=18 draw_sprite_ext(sprElevatorExplosion,index,x,y,image_xscale,image_yscale,image_angle,merge_color(c_white,c_yellow,amount),1)
index+=0.33 
}
if global.shake<(20-index)*2 global.shake=(20-index)*2
}
draw_sprite_ext(sprite_index,image_index,x+1,y+1,image_xscale,image_yscale,image_angle,c_black,0.5)
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
