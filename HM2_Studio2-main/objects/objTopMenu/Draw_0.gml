color1=merge_color(merge_color(c_teal,c_fuchsia,0.5-lengthdir_x(0.5,objEditor.dir*0.6436)),c_aqua,0.25-lengthdir_y(0.25,objEditor.dir*0.3234))
color2=merge_color(merge_color(c_teal,c_fuchsia,0.5+lengthdir_x(0.5,objEditor.dir*0.6436)),c_aqua,0.25+lengthdir_y(0.25,objEditor.dir*0.3234))
if mouse_y<16 and !instance_exists(objEditorWindow) {
on=1
} else {
if windowopen=0 on=0
}

if on=1 {
if factor<1 factor+=0.1
if factor>1 factor=1
} else {
if factor>0 factor-=0.1
if factor<0 factor=0
}

if factor>0 {
draw_set_color(color1)
draw_rectangle(0,0,room_width,16*factor,0)
draw_set_color(c_black)
draw_rectangle(0,0,room_width,16*factor,1)

draw_set_font(fntTopMenu)
myx=0
i=0
if windowopen=0 select=-1
repeat (options) {
if windowopen=0 {
draw_set_color(color2)
if mouse_x>16+myx-4 and mouse_x<16+myx+string_width(string_hash_to_newline(option[i]))+4 and mouse_y<=16 {select=i draw_rectangle(16+myx-4,-15+16*factor,16+myx+string_width(string_hash_to_newline(option[i]))+4,16*factor-1,0)}
} else {
draw_set_color(color2)
if mouse_x>16+myx-4 and mouse_x<16+myx+string_width(string_hash_to_newline(option[i]))+4 and mouse_y<=16 {select=i}
if select=i draw_rectangle(16+myx-4,-15+16*factor,16+myx+string_width(string_hash_to_newline(option[i]))+4,16*factor-1,0)
}
draw_set_color(c_dkgray)
draw_text(16+myx+2,-16+16*factor+1,string_hash_to_newline(option[i]))
if select=i draw_set_color(c_white) else draw_set_color(c_yellow)
draw_text(16+myx,-17+16*factor,string_hash_to_newline(option[i]))
myx+=string_width(string_hash_to_newline(option[i]))+12
i+=1
}
}

if windowopen=1 {
size=0
i=0 
repeat (suboptions[select]) {
if string_width(string_hash_to_newline(suboption[select,i]))+8>size size=string_width(string_hash_to_newline(suboption[select,i]))+8
i+=1
}
i=0
startpos=12
repeat (select) {
startpos+=string_width(string_hash_to_newline(option[i]))+12
i+=1
}
draw_set_color(merge_color(color1,c_black,0.5))
draw_rectangle(startpos,17,startpos+size,17+suboptions[select]*16+8,0)
draw_set_color(c_black)
draw_rectangle(startpos,16,startpos+size,17+suboptions[select]*16+8,1)
mselect=-1
i=0 
repeat (suboptions[select]) {
draw_set_color(c_dkgray)
draw_text(startpos+6,22+i*16,string_hash_to_newline(suboption[select,i]))
draw_set_color(c_yellow)
if mouse_x>startpos and mouse_x<startpos+size and mouse_y>20+i*16 and mouse_y<20+i*16+16 {draw_set_color(color2) draw_rectangle(startpos+2,20+i*16,startpos+size-2,20+i*16+16,0) mselect=i draw_set_color(c_white)}
draw_text(startpos+4,20+i*16,string_hash_to_newline(suboption[select,i]))
i+=1
}

}

