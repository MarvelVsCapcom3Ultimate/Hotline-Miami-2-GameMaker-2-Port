if reload>0 reload-=1 else {
if round(random(120))=2 {reload=10 instance_create(room_width+32,276-random(20),objPalmTree)}
}
if reload2>0 reload2-=1 else {
if round(random(180))=2 {instance_create(room_width,0,objHouses) reload2=300}
}


if !surface_exists(surf2) surf2=surface_create(room_width,room_height) else {

surface_set_target(surf2)
draw_clear_alpha(c_black,0)
draw_set_alpha(1)

draw_set_halign(fa_center)
draw_set_valign(fa_center)
draw_set_font(fntSubtitle)
draw_set_color(merge_color(merge_color(c_aqua,c_white,0.35+lengthdir_x(0.35,dir*2)),c_teal,0.5+lengthdir_x(0.5,dir)))
draw_text_transformed(__view_get( e__VW.WView, 0 )/2-11,__view_get( e__VW.HView, 0 )/2.3-9,string_hash_to_newline("W R O N G  N U M B E R"),1,1,-lengthdir_x(3,dir*0.1))
draw_set_color(merge_color(merge_color(c_aqua,c_white,0.35+lengthdir_x(0.35,dir*2+45)),c_teal,0.5+lengthdir_x(0.5,dir+45)))
draw_text_transformed(__view_get( e__VW.WView, 0 )/2-12,__view_get( e__VW.HView, 0 )/2.3-8,string_hash_to_newline("W R O N G  N U M B E R"),1,1,-lengthdir_x(3,dir*0.1))
draw_set_color(merge_color(merge_color(c_aqua,c_white,0.35+lengthdir_x(0.35,dir*2+90)),c_teal,0.5+lengthdir_x(0.5,dir+90)))
draw_text_transformed(__view_get( e__VW.WView, 0 )/2-13,__view_get( e__VW.HView, 0 )/2.3-7,string_hash_to_newline("W R O N G  N U M B E R"),1,1,-lengthdir_x(3,dir*0.1))
draw_set_font(fntTitle)
i=10
repeat (10) {
draw_set_color(merge_color(merge_color(c_yellow,c_fuchsia,0.5+lengthdir_x(0.5,dir*1.3)),merge_color(c_fuchsia,c_white,0.5+lengthdir_x(0.5,dir)),i*0.1))
draw_text_transformed(__view_get( e__VW.WView, 0 )/2+i-16,__view_get( e__VW.HView, 0 )/4+8-i*0.5,string_hash_to_newline("HOTLINE MIAMI"),1,1,0)
i-=1
}
draw_set_color(c_black)
draw_text(__view_get( e__VW.WView, 0 )/2+1-16,__view_get( e__VW.HView, 0 )/4+8+1,string_hash_to_newline("HOTLINE MIAMI"))
draw_text_color(__view_get( e__VW.WView, 0 )/2-16,__view_get( e__VW.HView, 0 )/4+8,string_hash_to_newline("HOTLINE MIAMI"),c_white,c_white,merge_color(c_aqua,c_yellow,0.5+lengthdir_x(0.5,dir*0.8)),merge_color(c_aqua,c_yellow,0.5+lengthdir_x(0.5,dir*0.9)),1)
draw_set_font(fntTwo)
draw_set_color(merge_color(c_blue,c_teal,0.5+lengthdir_x(0.5,dir)))
i=0
times=1+lengthdir_x(16,dir*0.25)
if times<1 times=1
if times>10 times=10
repeat(times) {
draw_text_transformed_color(__view_get( e__VW.WView, 0 )*0.91-i,__view_get( e__VW.HView, 0 )/4+40-i,string_hash_to_newline("2"),1,1,-20,merge_color(c_red,c_white,i*0.1),merge_color(c_red,c_white,i*0.1),merge_color(c_maroon,c_red,i*0.1),merge_color(c_maroon,c_red,i*0.1),1)
i+=1
}
draw_set_color(c_black)
draw_text_transformed(__view_get( e__VW.WView, 0 )*0.91-i+1,__view_get( e__VW.HView, 0 )/4+40-i+1,string_hash_to_newline("2"),1,1,-20)
draw_set_color(merge_color(c_white,c_lime,0.25+lengthdir_x(0.25,dir*1.5)))
draw_text_transformed(__view_get( e__VW.WView, 0 )*0.91-i-1,__view_get( e__VW.HView, 0 )/4+40-i-1,string_hash_to_newline("2"),1,1,-20)
color1=merge_color(c_aqua,c_lime,0.25+lengthdir_x(0.25,dir))
color2=merge_color(c_purple,c_green,0.5+lengthdir_x(0.25,dir))
draw_text_transformed_color(__view_get( e__VW.WView, 0 )*0.91-i,__view_get( e__VW.HView, 0 )/4+40-i,string_hash_to_newline("2"),1,1,-20,color1,color1,color2,color2,1)

i=0

repeat (4) {
draw_set_font(fntMenu)
ii=0
repeat (altrepeat[i]) {
if select=i draw_set_color(merge_color(merge_color(c_aqua,c_blue,0.35+lengthdir_x(0.35,dir*2)),c_teal,0.5+lengthdir_x(0.5,dir+ii*45))) else draw_set_color(merge_color(c_dkgray,c_black,0.25+lengthdir_x(0.25,dir+ii*45)))
draw_text_transformed(__view_get( e__VW.WView, 0 )/2-ii,__view_get( e__VW.HView, 0 )/2+12+i*24,string_hash_to_newline(alt[i]),1,1,-lengthdir_x(1,dir*0.1))
ii+=1
}
if select=i {
draw_set_color(c_black)
draw_text_transformed(__view_get( e__VW.WView, 0 )/2-ii,__view_get( e__VW.HView, 0 )/2+12+i*24,string_hash_to_newline(alt[i]),1,1,-lengthdir_x(1,dir*0.1)) 
draw_text_transformed_color(__view_get( e__VW.WView, 0 )/2-1-ii,__view_get( e__VW.HView, 0 )/2+12+i*24,string_hash_to_newline(alt[i]),1,1,-lengthdir_x(1,dir*0.1),c_white,c_white,merge_color(c_fuchsia,c_yellow,0.5+lengthdir_x(0.5,dir)),merge_color(c_fuchsia,c_yellow,0.5+lengthdir_x(0.5,dir)),1) 
draw_text_transformed_color(__view_get( e__VW.WView, 0 )/2-2-ii,__view_get( e__VW.HView, 0 )/2+12+i*24,string_hash_to_newline(alt[i]),1,1,-lengthdir_x(1,dir*0.1),c_white,c_white,merge_color(c_fuchsia,c_yellow,0.5+lengthdir_x(0.5,dir)),merge_color(c_fuchsia,c_yellow,0.5+lengthdir_x(0.5,dir)),1) 
draw_text_transformed_color(__view_get( e__VW.WView, 0 )/2-3-ii,__view_get( e__VW.HView, 0 )/2+12+i*24,string_hash_to_newline(alt[i]),1,1,-lengthdir_x(1,dir*0.1),c_white,c_white,merge_color(c_fuchsia,c_yellow,0.5+lengthdir_x(0.5,dir)),merge_color(c_fuchsia,c_yellow,0.5+lengthdir_x(0.5,dir)),1) 

if altrepeat[i]<8 altrepeat[i]+=0.5
} else {
if altrepeat[i]>3 altrepeat[i]-=0.5
}
i+=1
}

surface_reset_target()
}


if !surface_exists(surf1) surf1=surface_create(room_width,room_height) else {
surface_set_target(surf1)
draw_clear_alpha(c_black,0)
i=0
with objHouses draw_sprite_general(sprite_index,index,0,0,sprite_get_width(sprite_index),sprite_get_height(sprite_index),x,96-abs(hspeed)*200,1,1,0,c_white,c_white,c_black,c_black,1)
with objPalmTree draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,image_alpha)
surface_reset_target()
if bgx1>-320 bgx1-=0.25 else bgx1=-0.25
if bgx2>-320 bgx2-=0.5 else bgx2=-0.5
dir+=3
}
__background_set_colour( merge_color(merge_color(bgcolor,c_red,0.1+lengthdir_x(0.1,dir*1.05)),c_black,0.15+lengthdir_x(0.15,dir*0.7)) )

if surf1=surf2 surf2=surface_create(room_width,room_height)
