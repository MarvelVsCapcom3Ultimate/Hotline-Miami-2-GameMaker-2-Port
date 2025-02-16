//if amount>0 color1=merge_color(c_black,c_maroon,amount*(0.8+random(0.2))) else color1=merge_color(c_black,c_dkgray,0.1+random(0.15))
//if amount>0 color2=merge_color(c_black,c_maroon,amount*(0.8+random(0.2))) else color2=merge_color(c_black,c_dkgray,0.1+random(0.15))
if on=0 addy=-creditx*0.5 else addy=0
color1=merge_color(c_black,merge_color(c_dkgray,c_maroon,amount*0.5),0.1+random(0.15)+amount*0.25)
color2=merge_color(c_black,merge_color(c_dkgray,c_maroon,amount*0.5),0.1+random(0.15)+amount*0.25)
draw_rectangle_color(0,0,room_width,room_height,color1,color2,c_black,c_black,0)
draw_set_blend_mode(bm_add)
i=0 repeat (72) {
draw_circle_color(starx[i],stary[i],starsize[i],merge_color(merge_color(c_aqua,c_navy,random(1)),c_white,random(starintensity[i])),c_black,0)
i+=1
}
draw_circle_color(room_width*0.37,room_height/3.5+addy*0.5,480,merge_color(c_black,c_red,random(amount)),c_black,0)
draw_circle_color(room_width*0.37,room_height/3.5+addy*0.5,32+random(3),merge_color(c_navy,c_purple,flash),c_black,0)
draw_circle_color(room_width*0.37,room_height/3.5+addy*0.5,28+random(2),c_white,c_black,0)
draw_set_blend_mode(bm_normal)
dir+=4
color1=merge_color(c_white,c_orange,0.5+amount*0.5)
color2=merge_color(c_black,merge_color(c_aqua,c_fuchsia,flash),0.2+amount*0.8)
draw_sprite_general(sprMidnightMoon,0,0,0,96,96,room_width*0.37-24-textx,room_height/3.5-24-texty+addy*0.5,0.5,0.5,0,color1,color1,color2,color2,1)
color1=merge_color(c_black,c_aqua,0.5+random(amount*0.5)) //else color1=c_black
draw_background_general(bgSkyline2,0,0,640,320,texty,1+textx+addy*0.75,1,1,0,color1,color1,c_black,c_black,1)
draw_set_blend_mode(bm_add)
color2=merge_color(merge_color(c_aqua,c_purple,flash),merge_color(c_black,c_white,amount),0.5+lengthdir_x(0.25,dir))
draw_sprite_general(sprHouseLight,1,0,0,640,320,textx,1+texty+addy*0.75,1,1,0,color2,color2,c_black,c_black,1)
draw_sprite_general(sprHouseLight,0,0,0,640,320,textx,1+texty+addy,1,1,0,color2,color2,c_black,c_black,1)
draw_set_blend_mode(bm_normal)
draw_background_general(bgSkyline1,0,0,640,320,textx,1+texty+addy,1,1,0,color1,color1,c_black,c_black,1)
if on=0 {
draw_set_color(c_black)
draw_rectangle(0,320+addy,room_width,room_height,0)
}
if current>=2 {
draw_set_color(c_black)
//draw_text_transformed(320+textx+creditx,room_height*0.4+texty,"ANIMAL",0.5,0.5,0.1)
draw_text_transformed(240+textx+creditx,room_height*0.4+texty,string_hash_to_newline("ANIMAL"),0.5,0.5,0.1)
}
draw_set_blend_mode(bm_add)
draw_surface_ext(surf,1,1,1,1,0,merge_color(c_red,c_ltgray,0.5+lengthdir_x(0.5,dir)),1)
draw_surface_ext(surf,0,0,1,1,0,c_white,1)
draw_set_blend_mode(bm_normal)
textx+=0.15-random(0.3)
texty+=0.15-random(0.3)

if round(random(20))=2 textx=0
if round(random(20))=2 texty=0

draw_set_blend_mode(bm_subtract)
my_y=random(32)
my_x=random(32)
draw_sprite_tiled(sprNoise,0,-my_x,-my_y)

draw_set_blend_mode(bm_subtract)
draw_circle_color(__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.HView, 0 )/2,370+random(34),c_black,merge_color(c_gray,merge_color(c_aqua,c_navy,0.1+random(0.4)),0.15+random(0.15)),0)
draw_set_blend_mode(bm_normal)
