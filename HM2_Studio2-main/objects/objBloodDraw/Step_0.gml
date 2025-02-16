if !surface_exists(surf1) {
surf1=surface_create(room_width+32,room_height+100)
surface_set_target(surf1)
draw_clear_alpha(c_black,0)
surface_reset_target()
}

if sea=1 {
instance_create(random(room_width),room_height/2+3+random(48),objSeaGlimmer)
}
if blood=1 {
surface_set_target(surf1)
with objTextBlood {
index=image_index-3+random(6)
draw_sprite_ext(sprTextBlood,index,x,y,1,1,0,c_white,image_alpha)
}
surface_reset_target()
if !surface_exists(surf2) {
surf2=surface_create(room_width+32,room_height+100)
surface_set_target(surf2)
draw_clear_alpha(c_black,0)
surface_reset_target()
}
surface_set_target(surf2)
with objTextBlood {
draw_sprite_ext(sprTextBloodHighlight,index,x,y,1,1,0,c_white,image_alpha)
}
surface_reset_target()
if wait>0 wait-=1 else {
if drops<10 drops+=0.1
repeat (drops) {
//instance_create(random(room_width+32),random(start_y),objTextBlood)
instance_create(random(room_width+32),random(room_height+100),objTextBlood)
}
start_y+=0.5-(start_y*0.001)
}
}


if reload>0 reload-=1 else {
reload=16
instance_create(room_width,room_height/2,objPalmTrees)
}

if !surface_exists(surf3) {
surf3=surface_create(room_width,room_height)
surface_set_target(surf3) 
draw_clear_alpha(c_black,0)
surface_reset_target()
}

surface_set_target(surf3)
if camount<2 camount+=0.1 else camount=2
if camount<1 {
color2=merge_color(c_white,c_red,camount)
color1=merge_color(c_white,c_teal,camount)
} else {
color2=merge_color(c_red,c_fuchsia,camount-1)
color1=merge_color(c_teal,c_aqua,camount-1)
}
draw_clear_alpha(c_black,0)
draw_set_halign(fa_center)
draw_set_valign(fa_center)

draw_set_font(font1)
draw_set_color(merge_color(c_yellow,c_orange,0.5+lengthdir_x(0.5,dir*0.3)))
draw_text_transformed(room_width/2+1,room_height/3.5+1,string_hash_to_newline(global.subtitle),1,1,-__view_get( e__VW.Angle, 0 ))
draw_set_color(merge_color(c_lime,c_white,0.5+lengthdir_x(0.5,dir*0.3)))
draw_text_transformed(room_width/2,room_height/3.5,string_hash_to_newline(global.subtitle),1,1,-__view_get( e__VW.Angle, 0 ))

draw_set_font(font0)

i=0
repeat (camount*10) {
draw_set_color(merge_color(merge_color(color1,color2,0.5+lengthdir_x(0.5,dir)),merge_color(color2,color1,0.5+lengthdir_x(0.5,dir)),i*0.05))
draw_text_transformed(room_width/2,room_height/2,string_hash_to_newline(global.title),0.8+i*0.005,0.8+i*0.005,lengthdir_x(2,dir*0.25+i*6))
i+=1
}
draw_set_color(c_black)
draw_text_transformed(room_width/2+1,room_height/2+1,string_hash_to_newline(global.title),0.8+i*0.005,0.8+i*0.005,lengthdir_x(2,dir*0.25+i*6))
draw_text_transformed_color(room_width/2,room_height/2,string_hash_to_newline(global.title),0.8+i*0.005,0.8+i*0.005,lengthdir_x(2,dir*0.25+i*6),c_white,c_white,merge_color(c_aqua,c_fuchsia,0.5+lengthdir_x(0.5,dir)),merge_color(c_aqua,c_fuchsia,0.5+lengthdir_x(0.5,dir)),1)
surface_reset_target()
