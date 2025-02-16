color1=merge_color(c_maroon,fuchsia,0.35+lengthdir_x(0.25,dir))
color2=merge_color(c_black,color1,0.35+lengthdir_x(0.25,dir*0.3))
color3=merge_color(merge_color(c_red,fuchsia,0.5-lengthdir_x(0.25,dir*0.7)),c_maroon,0.5)
draw_rectangle_color(-10,-10,room_width+10,room_height+10,color2,color2,color1,color1,0)

draw_set_blend_mode(bm_add) 
draw_circle_color(0,room_height*0.5,350+lengthdir_x(40,dir),merge_color(c_orange,c_black,0.45+lengthdir_x(0.15,dir*2)-random(0.05)),c_black,0)
draw_circle_color(room_width*0.5,room_height*0.63,22+lengthdir_x(4,dir),color3,c_black,0)
draw_sprite_general(sprCitySun,0,0,0,64,64,room_width/2-16,room_height*0.63-16,0.5,0.5,0,c_orange,c_orange,color3,color3,1)
draw_set_blend_mode(bm_normal)



dir+=0.25
i=0
repeat (2) {
draw_sprite_ext(sprCityScape,1,addx2+i*480,room_height/2,1,1,0,merge_color(color3,color2,0.5),1)
i+=1
}
i=0
repeat (2) {
draw_sprite_ext(sprCityScape,0,addx1+i*480,room_height/2,1,1,0,merge_color(color3,color2,0.6),1)
i+=1
}

if addx1>-480 addx1-=0.25 else addx1=0
if addx2>-480 addx2-=0.15 else addx2=0
draw_rectangle_color(0,room_height/2+46,room_width,room_height,merge_color(color3,color2,0.6),merge_color(color3,color2,0.6),c_black,c_black,0)
color4=merge_color(merge_color(c_maroon,fuchsia,0.5+lengthdir_x(0.5,dir*0.57)),c_orange,0.25+lengthdir_x(0.15,dir*1.37))
draw_rectangle_color(0,room_height/2+54,room_width,room_height,color3,color3,color4,color4,0)

draw_set_blend_mode(bm_subtract)
draw_circle_color(room_width/2,room_height/2,300,c_black,c_gray,0)
draw_set_blend_mode(bm_normal)

draw_set_blend_mode(bm_add) 
draw_circle_color(0,room_height*0.5,160+lengthdir_x(20,dir*0.5),merge_color(c_white,c_yellow,0.45+lengthdir_x(0.15,dir*2)-random(0.05)),c_black,0)
draw_set_blend_mode(bm_normal)

draw_set_blend_mode(bm_subtract)
draw_rectangle_color(0,0,room_width,room_height,c_black,c_black,c_green,c_green,0)
draw_set_blend_mode(bm_normal)

draw_set_blend_mode(bm_subtract)
i=0
repeat (6) {
draw_line_width_color(0,10+i*4,room_width,8+i*4,2,c_black,merge_color(c_dkgray,c_black,0.5+lengthdir_x(0.5,amount)))
i+=1
}
i=0
repeat (10) {
draw_line_width_color(0,room_height*0.7-1+i*4,room_width,room_height*0.7-1+i*4,2,c_black,merge_color(c_dkgray,c_black,0.5+lengthdir_x(0.5,amount)))
i+=1
}
if fade=0 {if amount<180 amount+=10}
if fade=1 {if amount>0 amount-=10}
draw_set_blend_mode(bm_normal)


draw_surface_ext(surf,-1,0,1,1,0,c_black,1)
draw_surface_ext(surf,1,0,1,1,0,c_black,1)
draw_surface_ext(surf,0,-1,1,1,0,c_black,1)
draw_surface_ext(surf,0,1,1,1,0,c_black,1)
draw_surface_ext(surf,0,0,1,1,0,c_white,1)

if current=8 addcurrent=-3 else addcurrent=0
if current=0 index=0 else index=1+(current-1)*4+box[current].select+addcurrent
draw_set_font(fntVHSMusic)
if removex>0 {
if current=0 draw_sprite_ext(sprMusicCassette,index,room_width/2-string_width(string_hash_to_newline(song[0,0]))*0.5,room_height*0.9+8+48*(1-removex)+box[current].addx*0.2,1,1,0,c_white,1) else draw_sprite_ext(sprMusicCassette,index,room_width/2-string_width(string_hash_to_newline(song[current,box[current].select]))*0.5,room_height*0.9+8+48-(box[current].dist)*1.5+box[current].addx*0.2,1,1,0,c_white,1)
}
