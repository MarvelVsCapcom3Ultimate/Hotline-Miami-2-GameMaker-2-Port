/*color=make_color_hsv(dir,255,255)
draw_rectangle_color(-10,-10,room_width+10,room_height*0.5,merge_color(c_black,color,blend),merge_color(c_black,color,blend),c_black,c_black,0)
blend=abs(lengthdir_y(0.25,dir*0.125))*/
draw_circle_color(room_width/2,room_height/2-10,100,merge_color(c_black,c_maroon,sunalpha*0.5),c_black,0)
draw_set_blend_mode(bm_add)
draw_circle_color(room_width/2,room_height/2-10,32,merge_color(c_black,merge_color(c_red,c_yellow,0.5+lengthdir_x(0.5,dir)),sunshine),c_black,0)
draw_set_blend_mode(bm_normal)
draw_sprite_general(sprSun,0,0,0,160,160,room_width/2-26.66,room_height/2-26.66-sunalpha*10,0.33,0.33,0,c_orange,c_orange,c_maroon,c_maroon,sunalpha)
with objBird draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_black,1)
draw_surface_ext(surf,-1,0,1,1,0,c_black,1)
draw_surface_ext(surf,1,0,1,1,0,c_black,1)
draw_surface_ext(surf,0,-1,1,1,0,c_black,1)
draw_surface_ext(surf,0,1,1,1,0,c_black,1)
draw_surface(surf,0,0)
if sunalpha>=1 {if sunshine<1 sunshine+=0.05}

if fade=0 {
if amount<180 {
if wait>0 wait-=1 else amount+=5
color1=merge_color(c_black,merge_color(c_aqua,c_white,0.5+lengthdir_x(0.5,amount)),0.5+lengthdir_x(0.5,amount))
if amount>90 color2=merge_color(c_black,merge_color(c_fuchsia,c_white,abs(lengthdir_y(1,amount))),abs(lengthdir_y(1,amount))) else color2=c_white
draw_set_blend_mode(bm_subtract)
draw_rectangle_color(-10,-10,__view_get( e__VW.WView, 0 )+10,__view_get( e__VW.HView, 0 )+10,color1,color2,color2,color1,0)
draw_set_blend_mode(bm_normal)
}
}

if fade=1 {
//if newsong=1 or restart=1 {if amount>0 scrSongVolume(amount/180)}
if amount>0 amount-=5 else room_goto(global.nextlevel)
color1=merge_color(c_black,merge_color(c_aqua,c_white,0.5+lengthdir_x(0.5,amount)),0.5+lengthdir_x(0.5,amount))
if amount>90 color2=merge_color(c_black,merge_color(c_fuchsia,c_white,abs(lengthdir_y(1,amount))),abs(lengthdir_y(1,amount))) else color2=c_white
draw_set_blend_mode(bm_subtract)
draw_rectangle_color(-10,-10,__view_get( e__VW.WView, 0 )+10,__view_get( e__VW.HView, 0 )+10,color2,color1,color1,color2,0)
draw_set_blend_mode(bm_normal)
}
draw_set_blend_mode(bm_subtract)
my_y=random(32)
my_x=random(32)
draw_sprite_tiled_ext(sprNoise,0,-my_x,-my_y,1,1,c_white,1)
draw_circle_color(room_width/2,room_height/2,room_width*0.8+random(10),c_black,c_lime,0)
draw_set_blend_mode(bm_normal)

/* */
/*  */
