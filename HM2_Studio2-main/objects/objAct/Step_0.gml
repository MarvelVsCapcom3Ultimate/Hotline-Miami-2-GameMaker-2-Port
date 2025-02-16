if !surface_exists(surf) surf=surface_create(room_width*2,room_height*2)
surface_set_target(surf)
d3d_set_projection_ortho(0,0,room_width,room_height,0)
draw_clear_alpha(c_black,0)
draw_set_font(fntPreTitle)
draw_set_halign(fa_center)
draw_set_valign(fa_center)




draw_set_blend_mode(bm_add)

__view_set( e__VW.Angle, 0, lengthdir_x(1,dir*0.25) )
dir+=3
if myx>0 {
draw_set_color(merge_color(c_teal,c_black,myx*(1/8)))
i=0
repeat (7) {
draw_text_transformed(room_width/2+i*myx,room_height/4,string_hash_to_newline(pretitle),1,1,-__view_get( e__VW.Angle, 0 ))
draw_text_transformed(room_width/2-i*myx+1,room_height/4+1,string_hash_to_newline(pretitle),1,1,-__view_get( e__VW.Angle, 0 ))
i+=1
}
myx-=0.5
draw_set_blend_mode(bm_normal)
} else {
draw_set_blend_mode(bm_normal)
if amount>0 amount-=0.1
draw_set_color(merge_color(merge_color(c_purple,c_white,0.5+lengthdir_x(0.4,dir)),c_white,amount))
draw_text_transformed(room_width/2+1,room_height/4+1,string_hash_to_newline(pretitle),1,1,-__view_get( e__VW.Angle, 0 ))
draw_set_color(merge_color(merge_color(c_aqua,c_white,0.5-lengthdir_x(0.4,dir)),c_white,amount))
draw_text_transformed(room_width/2,room_height/4,string_hash_to_newline(pretitle),1,1,-__view_get( e__VW.Angle, 0 ))
}

if myx<=0 {
draw_set_font(fntChapter)
//texture_set_interpolation(true)
i=0 
draw_set_halign(fa_left)
start_x=room_width/2-string_width(string_hash_to_newline(title))*0.5
repeat (letter) {
times=8-lengthdir_x(8,ldir[i])
ii=0
repeat (times) {
draw_set_color(merge_color(merge_color(c_fuchsia,c_red,0.5+lengthdir_x(0.5,dir)),merge_color(c_aqua,c_yellow,0.5+lengthdir_x(0.5,dir*0.25-i*4)),ii*(1/16)))
draw_text_transformed(start_x,room_height/2-ii*0.5,string_hash_to_newline(string_copy(title,i+1,1)),0.8+ii*(1/64),0.8+ii*(1/64),lengthdir_x(4,dir*0.5-i*25-ii*8))
ii+=1
}
start_x+=string_width(string_hash_to_newline(string_copy(title,i+1,1)))
if ldir[i]<180 ldir[i]+=10
i+=1
}
if letter<string_length(title) letter+=0.1

draw_set_blend_mode(bm_normal)
}
surface_reset_target()
