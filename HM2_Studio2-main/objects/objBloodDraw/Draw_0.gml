

draw_rectangle_color(-20,-20,room_width+20,room_height+20,merge_color(c_black,c_dkgray,0.15+lengthdir_x(0.15,dir*0.25)),merge_color(c_black,c_dkgray,0.15+lengthdir_x(0.15,dir*0.25+45)),merge_color(c_white,c_teal,0.75+lengthdir_x(0.24,dir*0.5+30)),merge_color(c_white,c_teal,0.75+lengthdir_x(0.24,dir*0.5)),0)
draw_set_blend_mode(bm_add)
draw_circle_color(room_width/2,room_height/3,180+lengthdir_x(40,dir*0.25),c_teal,c_black,0)
draw_sprite_general(sprMoon,0,0,0,160,160,room_width/2-40,room_height/4-40,0.5,0.5,-__view_get( e__VW.Angle, 0 ),c_maroon,c_maroon,merge_color(c_orange,c_red,0.5+lengthdir_x(0.5,dir)),merge_color(c_orange,c_red,0.5+lengthdir_x(0.5,dir)),1)
draw_set_blend_mode(bm_normal) 
with objSkyline1 {
draw_sprite_ext(sprite_index,0,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
draw_sprite_general(sprite_index,1,0,0,160,64,x,y,image_xscale,image_yscale,image_angle,merge_color(c_orange,c_aqua,0.5+lengthdir_x(0.5,dir*0.7)),merge_color(c_orange,c_aqua,0.5+lengthdir_x(0.5,dir+110)),merge_color(c_olive,c_teal,0.5+lengthdir_x(0.5,dir*0.8)),merge_color(c_olive,c_teal,0.5+lengthdir_x(0.5,dir*0.8+110)),image_alpha)
draw_sprite_general(sprite_index,2,0,0,160,64,x,y,image_xscale,image_yscale,image_angle,merge_color(c_aqua,c_white,0.5+lengthdir_x(0.5,dir*0.7)),merge_color(c_aqua,c_white,0.5+lengthdir_x(0.5,dir+110)),merge_color(c_fuchsia,c_aqua,0.5+lengthdir_x(0.5,dir*0.8)),merge_color(c_fuchsia,c_aqua,0.5+lengthdir_x(0.5,dir*0.8+110)),image_alpha)
dir+=2
if x>-160 x-=0.15 else x+=room_width+160
}
with objSkyline2 {
draw_sprite_ext(sprite_index,0,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
draw_sprite_general(sprite_index,1,0,0,160,64,x,y,image_xscale,image_yscale,image_angle,merge_color(c_orange,c_aqua,0.5+lengthdir_x(0.5,dir*0.7)),merge_color(c_orange,c_aqua,0.5+lengthdir_x(0.5,dir+110)),merge_color(c_olive,c_teal,0.5+lengthdir_x(0.5,dir*0.8)),merge_color(c_olive,c_teal,0.5+lengthdir_x(0.5,dir*0.8+110)),image_alpha)
draw_sprite_general(sprite_index,2,0,0,160,64,x,y,image_xscale,image_yscale,image_angle,merge_color(c_aqua,c_white,0.5+lengthdir_x(0.5,dir*0.7)),merge_color(c_aqua,c_white,0.5+lengthdir_x(0.5,dir+110)),merge_color(c_fuchsia,c_aqua,0.5+lengthdir_x(0.5,dir*0.8)),merge_color(c_fuchsia,c_aqua,0.5+lengthdir_x(0.5,dir*0.8+110)),image_alpha)
draw_set_blend_mode(bm_add)
i=0 
repeat (31) {
draw_sprite_general(sprite_index,2,0,i*2,160,i*2+1,x+lengthdir_x(1,dir+i*25),y+96-i,image_xscale,-0.5,image_angle,merge_color(c_aqua,c_white,0.5+lengthdir_x(0.5,dir*0.7)),merge_color(c_aqua,c_white,0.5+lengthdir_x(0.5,dir+110)),merge_color(c_fuchsia,c_aqua,0.5+lengthdir_x(0.5,dir*0.8)),merge_color(c_fuchsia,c_aqua,0.5+lengthdir_x(0.5,dir*0.8+110)),image_alpha)
i+=1
}
draw_set_blend_mode(bm_normal)
dir+=2
if x>-160 x-=0.2 else x+=room_width+160
}
draw_set_blend_mode(bm_add)
draw_rectangle_color(0,room_height/2,room_width,room_height/2+32,c_gray,c_gray,c_black,c_black,0)
with objSeaGlimmer draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,merge_color(c_gray,merge_color(c_orange,c_red,random(1)),random(1)),1)
/*i=0
repeat (ceil((room_width+96)/96)) {
if index1<28.15 color=merge_color(c_black,c_teal,(index1+1)/30) else color=merge_color(c_teal,c_black,((index1+1)-28)*0.065)
draw_sprite_ext(sprSea,index1,seax1+i*96,room_height/2,1,1,0,color,0.25)
if index1<28.15 color=merge_color(c_black,c_navy,(index1+1)/30) else color=merge_color(c_navy,c_black,((index1+1)-28)*0.065)
draw_sprite_ext(sprSea,index1-1,seax1+i*96,room_height/2,1,1,0,color,0.25)
if index2<28.15 color=merge_color(c_black,c_teal,(index2+1)/30) else color=merge_color(c_teal,c_black,((index2+1)-28)*0.065)
draw_sprite_ext(sprSea,index2,seax2+i*96,room_height/2,1,1,0,color,0.25)
if index2<28.15 color=merge_color(c_black,c_navy,(index2+1)/30) else color=merge_color(c_navy,c_black,((index2+1)-28)*0.065)
draw_sprite_ext(sprSea,index2-1,seax2+i*96,room_height/2,1,1,0,color,0.25)
i+=1
}
if index1<44 index1+=0.2 else index1=0
if index2<44 index2+=0.2 else index2=0
if seax1>-96 seax1-=1+index1*0.03 else seax1+=96
if seax2>-96 seax2-=1+index2*0.03 else seax2+=96*/
draw_set_blend_mode(bm_normal)
with objPalmTrees {
//draw_sprite_general(sprPalmTrees,image_index,0,0,64,160,x,room_height/5,1,1,0,merge_color(c_teal,c_dkgray,0.5+lengthdir_x(0.5,dir)),merge_color(c_teal,c_dkgray,0.5+lengthdir_x(0.5,dir)),c_black,c_black,1)
draw_sprite_general(sprPalmTrees,image_index,0,0,64,160,x,room_height/5,1,1,0,merge_color(c_white,c_aqua,0.5+lengthdir_x(0.5,dir)),merge_color(c_white,c_aqua,0.5+lengthdir_x(0.5,dir)),c_teal,c_teal,0.7)
}
if myx>-128 myx-=8 else myx=0
draw_set_blend_mode(bm_normal)
draw_surface_general(surf1,0,0,672,340,-16-1-lengthdir_x(1,dir+90),-50-1-lengthdir_y(1,dir+90),1,1,0,c_maroon,c_black,merge_color(c_green,c_orange,0.5+lengthdir_x(0.5,dir)),merge_color(c_yellow,c_red,0.5+lengthdir_x(0.5,dir)),0.6)
draw_surface_general(surf1,0,0,672,340,-16+lengthdir_x(1,dir),-50+lengthdir_y(1,dir),1,1,0,merge_color(c_red,c_maroon,0.5+lengthdir_x(0.5,dir)),merge_color(c_red,c_maroon,0.5+lengthdir_x(0.5,dir+30)),merge_color(c_maroon,c_black,0.15+lengthdir_x(0.15,dir)),merge_color(c_maroon,c_black,0.25+lengthdir_x(0.25,dir)),0.7+lengthdir_x(0.1,dir*0.7))
draw_set_blend_mode(bm_add)
draw_surface_general(surf2,0,0,672,340,-16+-lengthdir_x(1,dir),-50-lengthdir_y(1,dir),1,1,0,c_black,c_maroon,merge_color(c_teal,c_maroon,0.5+lengthdir_x(0.5,dir)),merge_color(c_aqua,c_fuchsia,0.5+lengthdir_x(0.5,dir)),1)
draw_set_blend_mode(bm_normal)
dir+=4
__view_set( e__VW.Angle, 0, lengthdir_x(2,dir*0.3) )

/*draw_set_blend_mode(bm_add)
i=0
repeat (10) {
draw_sprite_general(sprPalmTrees,0,0,0,64,160,i*64,room_height/5,1,1,0,merge_color(c_teal,c_black,0.25+lengthdir_x(0.25,dir+i*20)),merge_color(c_teal,c_black,0.25+lengthdir_x(0.25,dir+30+i*20)),c_black,c_black,1)
i+=1
}
draw_set_blend_mode(bm_normal)*/
draw_surface_ext(surf3,-1,-1,1,1,0,c_black,1)
draw_surface_ext(surf3,1,1,1,1,0,c_black,1)
draw_surface_ext(surf3,-1,1,1,1,0,c_black,1)
draw_surface_ext(surf3,1,-1,1,1,0,c_black,1)
draw_surface_ext(surf3,0,0,1,1,0,c_white,1)


if fade=0 {
if c_amount<180 {
c_amount+=5
color1=merge_color(c_black,merge_color(c_aqua,c_white,0.5+lengthdir_x(0.5,c_amount)),0.5+lengthdir_x(0.5,c_amount))
if c_amount>90 color2=merge_color(c_black,merge_color(c_fuchsia,c_white,abs(lengthdir_y(1,c_amount))),abs(lengthdir_y(1,c_amount))) else color2=c_white
draw_set_blend_mode(bm_subtract)
draw_rectangle_color(__view_get( e__VW.XView, 0 )-20,__view_get( e__VW.YView, 0 )-20,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )+20,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )+20,color1,color2,color2,color1,0)
draw_set_blend_mode(bm_normal)
}
}

if fade=1 {
if c_amount>0  {
c_amount-=5
color1=merge_color(c_black,merge_color(c_aqua,c_white,0.5+lengthdir_x(0.5,c_amount)),0.5+lengthdir_x(0.5,c_amount))
if c_amount>90 color2=merge_color(c_black,merge_color(c_fuchsia,c_white,abs(lengthdir_y(1,c_amount))),abs(lengthdir_y(1,c_amount))) else color2=c_white
draw_set_blend_mode(bm_subtract)
draw_rectangle_color(__view_get( e__VW.XView, 0 )-20,__view_get( e__VW.YView, 0 )-20,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )+20,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )+20,color2,color1,color1,color2,0)
draw_set_blend_mode(bm_normal)
} else {room_goto(global.level)}
}

draw_set_blend_mode(bm_subtract)
my_y=random(32)
my_x=random(32)
draw_sprite_tiled_ext(sprNoise,0,-my_x,-my_y,1,1,c_white,1)
draw_circle_color(room_width/2,room_height/2,room_width*0.8+random(10),c_black,c_lime,0)
draw_set_blend_mode(bm_normal)


/* */
/*  */
