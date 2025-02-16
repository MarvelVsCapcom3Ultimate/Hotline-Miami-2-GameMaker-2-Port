color=merge_color(merge_color(merge_color(c_fuchsia,c_red,0.5),c_aqua,0.5+lengthdir_x(0.5,dir*0.1)),c_black,0.5)
palmtreecolor=merge_color(c_fuchsia,c_aqua,0.5-lengthdir_x(0.5,dir*0.1))
draw_rectangle_color(-16,-16,room_width+16,room_height+16,color,color,c_black,c_black,0)
with objLevelPalmTree {
myx+=(x-240)*0.04
xscale=0.1+abs(x-240)*0.005+abs(myx)*0.002
yscale=0.1+abs(x-240)*0.007+abs(myx)*0.002
if xscale-0.5<0.5 alpha=xscale*2-0.225 else alpha=1
draw_set_blend_mode(bm_add)
draw_sprite_general(sprite_index,image_index,0,0,128,280,x+myx-64*xscale*image_xscale,y-140*yscale,xscale*image_xscale,yscale,image_angle,objLevelSelect.palmtreecolor,objLevelSelect.palmtreecolor,c_black,c_black,alpha)
draw_set_blend_mode(bm_normal)
}
draw_surface_ext(surf,-1,0,1,1,0,c_black,1)
draw_surface_ext(surf,1,0,1,1,0,c_black,1)
draw_surface_ext(surf,0,-1,1,1,0,c_black,1)
draw_surface_ext(surf,0,1,1,1,0,c_black,1)
draw_surface_ext(surf,0,0,1,1,0,c_white,1)
if introquery=1 {
if introalpha<1 introalpha+=0.05
draw_set_color(c_black)
draw_set_blend_mode(bm_subtract)
color1=merge_color(c_black,c_gray,introalpha)
color2=merge_color(c_black,c_white,introalpha)
draw_rectangle_color(-16,-16,room_width+16,room_width/2,color1,color1,color2,color2,0)
draw_rectangle_color(-16,room_width/2,room_width+16,room_width+16,color2,color2,color1,color1,0)
draw_set_blend_mode(bm_normal)
draw_set_font(fntLevel)
draw_text(room_width/2-1,room_height/3,string_hash_to_newline("SKIP INTRO"))
draw_text(room_width/2+1,room_height/3,string_hash_to_newline("SKIP INTRO"))
draw_text(room_width/2,room_height/3-1,string_hash_to_newline("SKIP INTRO"))
draw_text(room_width/2,room_height/3+1,string_hash_to_newline("SKIP INTRO"))
draw_text_color(room_width/2,room_height/3,string_hash_to_newline("SKIP INTRO"),c_white,c_white,c_yellow,c_yellow,1)
draw_set_font(fntLevelClear)
if intro=0 {color1=c_red color2=c_maroon} else {color1=c_maroon color2=c_black} 
draw_text(room_width/2-63,room_height/2,string_hash_to_newline("YES"))
draw_text(room_width/2-65,room_height/2,string_hash_to_newline("YES"))
draw_text(room_width/2-64,room_height/2-1,string_hash_to_newline("YES"))
draw_text(room_width/2-64,room_height/2+1,string_hash_to_newline("YES"))
draw_text_color(room_width/2-64,room_height/2,string_hash_to_newline("YES"),color1,color1,color2,color2,1)
if intro=1 {color1=c_red color2=c_maroon} else {color1=c_maroon color2=c_black} 
draw_text(room_width/2+63,room_height/2,string_hash_to_newline("NO"))
draw_text(room_width/2+65,room_height/2,string_hash_to_newline("NO"))
draw_text(room_width/2+64,room_height/2-1,string_hash_to_newline("NO"))
draw_text(room_width/2+64,room_height/2+1,string_hash_to_newline("NO"))
draw_text_color(room_width/2+64,room_height/2,string_hash_to_newline("NO"),color1,color1,color2,color2,1)
}


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
scrSongVolume(c_amount*(1/180))
color1=merge_color(c_black,merge_color(c_aqua,c_white,0.5+lengthdir_x(0.5,c_amount)),0.5+lengthdir_x(0.5,c_amount))
if c_amount>90 color2=merge_color(c_black,merge_color(c_fuchsia,c_white,abs(lengthdir_y(1,c_amount))),abs(lengthdir_y(1,c_amount))) else color2=c_white
draw_set_blend_mode(bm_subtract)
draw_rectangle_color(__view_get( e__VW.XView, 0 )-20,__view_get( e__VW.YView, 0 )-20,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )+20,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )+20,color2,color1,color1,color2,0)
draw_set_blend_mode(bm_normal)
} else {scrStopSong() if global.song="" nothing=1 else scrPlaySong(global.song) room_goto(global.next)}
}

draw_set_blend_mode(bm_subtract)
my_y=random(32)
my_x=random(32)
draw_sprite_tiled_ext(sprNoise,0,-my_x,-my_y,1,1,c_white,1)
draw_circle_color(room_width/2,room_height/2,room_width*0.8+random(10),c_black,c_aqua,0)
draw_set_blend_mode(bm_normal)
