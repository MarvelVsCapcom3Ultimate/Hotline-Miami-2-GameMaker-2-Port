draw_rectangle_color(0,room_height/4,room_width,room_height/2,c_black,c_black,c_maroon,c_maroon,0)
with objSmallPalmTree {
color=merge_color(c_black,c_maroon,0.75+lengthdir_x(0.25,x*4+objScoreScreen.dir))
draw_sprite_general(sprite_index,image_index,0,0,21,53,x-5.5,y-25.4+lengthdir_x(0.6,x+objScoreScreen.dir*2),0.5,0.5,0,color,color,c_red,c_red,image_alpha)
}
draw_set_blend_mode(bm_add)
draw_circle_color(room_width/2,room_height/2-24,70-lengthdir_x(3,dir),merge_color(c_orange,c_red,0.5+lengthdir_x(0.5,dir)),c_black,0)
color=merge_color(c_maroon,c_black,0.25+lengthdir_x(0.25,dir))
draw_rectangle_color(0,room_height/2-6,room_width,room_height/2,c_black,c_black,color,color,0)
draw_set_blend_mode(bm_normal)
color1=merge_color(c_yellow,c_orange,0.5+lengthdir_x(0.5,dir))
color2=merge_color(merge_color(c_orange,c_red,0.5),c_red,0.5+lengthdir_x(0.5,dir))
draw_sprite_general(sprBigMoon,0,0,0,276,212,x-138/3,y-212/3,1/3,1/3,0,color1,color1,color2,color2,1)
draw_rectangle_color(0,room_height/2,room_width,room_height,c_black,c_black,merge_color(c_maroon,c_red,-lengthdir_x(0.5,dir)+0.5),merge_color(c_maroon,c_red,-lengthdir_x(0.5,dir)+0.5),0)
i=0 
if wait>0 wait-=1 else wait=4
draw_set_blend_mode(bm_add)
repeat (138) {
addx=lengthdir_x(i*0.08,dir+i*3)
if wait=0 vobblex[i]=-0.5+random(1)-random(i*0.01)+random(i*0.02)
color=merge_color(merge_color(c_red,c_maroon,0.5+lengthdir_x(0.5,dir)),merge_color(c_fuchsia,c_red,0.5+lengthdir_x(0.5,dir)),i*(1/138))
draw_sprite_general(sprBigMoon,0,0,138+i,276,1,x-138/3+addx+vobblex[i],y+(i*2)/3,1/3,2/3,0,color,color,color,color,0.95+lengthdir_x(0.05,mydir[i]))
mydir[i]+=4
if mydir[i]>360 mydir[i]-=360
i+=1
}
draw_set_blend_mode(bm_normal)
dir+=1

draw_surface_ext(surf,-1,0,1,1,0,c_black,1)
draw_surface_ext(surf,1,0,1,1,0,c_black,1)
draw_surface_ext(surf,0,-1,1,1,0,c_black,1)
draw_surface_ext(surf,0,1,1,1,0,c_black,1)
draw_surface_ext(surf,0,0,1,1,0,c_white,1)


draw_set_blend_mode(bm_subtract)
my_y=random(32)
my_x=random(32)
draw_sprite_tiled(sprNoise,0,-my_x,-my_y)

draw_set_blend_mode(bm_subtract)
draw_circle_color(__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.HView, 0 )/2,370+random(34),c_black,merge_color(c_gray,merge_color(c_aqua,c_navy,0.1+random(0.4)),0.15+random(0.15)),0)
draw_set_blend_mode(bm_normal)

if fade=0 {
if amount<180 {
amount+=5
color1=merge_color(c_black,merge_color(c_aqua,c_white,0.5+lengthdir_x(0.5,amount)),0.5+lengthdir_x(0.5,amount))
if amount>90 color2=merge_color(c_black,merge_color(c_fuchsia,c_white,abs(lengthdir_y(1,amount))),abs(lengthdir_y(1,amount))) else color2=c_white
draw_set_blend_mode(bm_subtract)
draw_rectangle_color(-10,-10,__view_get( e__VW.WView, 0 )+10,__view_get( e__VW.HView, 0 )+10,color1,color2,color2,color1,0)
draw_set_blend_mode(bm_normal)
}
}

if fade=1 {
if amount>0 scrSongVolume(amount/180)
color1=merge_color(c_black,merge_color(c_aqua,c_white,0.5+lengthdir_x(0.5,amount)),0.5+lengthdir_x(0.5,amount))
if amount>90 color2=merge_color(c_black,merge_color(c_fuchsia,c_white,abs(lengthdir_y(1,amount))),abs(lengthdir_y(1,amount))) else color2=c_white
draw_set_blend_mode(bm_subtract)
draw_rectangle_color(-10,-10,__view_get( e__VW.WView, 0 )+10,__view_get( e__VW.HView, 0 )+10,color2,color1,color1,color2,0)
draw_set_blend_mode(bm_normal)
}
