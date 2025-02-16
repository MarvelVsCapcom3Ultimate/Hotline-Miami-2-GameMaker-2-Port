draw_set_font(fntEditor)
color2=merge_color(c_teal,c_black,0.5-lengthdir_x(0.1,objEditor.dir))

width=256
if string_width(string_hash_to_newline(query))>224 width=string_width(string_hash_to_newline(query))
height=string_height(string_hash_to_newline(query))+32

draw_set_color(color2)
draw_rectangle(room_width/2-width*0.5-8,room_height/2-height*0.5-8,room_width/2+width*0.5+8,room_height/2+height*0.5+8,0)
draw_set_color(c_black)
draw_rectangle(room_width/2-width*0.5-8,room_height/2-height*0.5-8,room_width/2+width*0.5+8,room_height/2+height*0.5+8,1)

draw_set_color(c_black)
draw_text(room_width/2-width*0.5+2,room_height/2-height*0.5+2,string_hash_to_newline(query))
draw_set_color(c_white)
draw_text(room_width/2-width*0.5,room_height/2-height*0.5,string_hash_to_newline(query))

select=-1
i=0 
repeat (options) {
if mouse_x>room_width/2-width*0.5+8+i*80 and mouse_x<room_width/2-width*0.5+8+i*80+72 and mouse_y>room_height/2+height*0.5-20 and mouse_y<room_height/2+height*0.5 {select=i draw_set_color(merge_color(c_fuchsia,c_red,0.15+lengthdir_x(0.15,objEditor.dir)))} else draw_set_color(merge_color(color2,c_black,0.5))
draw_rectangle(room_width/2-width*0.5+8+i*80,room_height/2+height*0.5-20,room_width/2-width*0.5+8+i*80+72,room_height/2+height*0.5,0)
draw_set_color(c_black)
draw_rectangle(room_width/2-width*0.5+8+i*80,room_height/2+height*0.5-20,room_width/2-width*0.5+8+i*80+72,room_height/2+height*0.5,1)
draw_text(room_width/2-width*0.5+12+i*80+2,room_height/2+height*0.5-18+2,string_hash_to_newline(option[i]))
if select=i draw_set_color(c_white) else draw_set_color(c_yellow)
draw_text(room_width/2-width*0.5+12+i*80,room_height/2+height*0.5-18,string_hash_to_newline(option[i]))
i+=1
}
