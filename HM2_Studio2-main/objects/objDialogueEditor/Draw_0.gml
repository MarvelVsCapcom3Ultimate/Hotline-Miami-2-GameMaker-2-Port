draw_set_font(fntEditor)
draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_set_color(merge_color(c_teal,c_black,0.5+lengthdir_x(0.1,dir)))
draw_rectangle(x,y,x+width,y+height,0)
draw_set_color(merge_color(c_teal,c_black,0.5-lengthdir_x(0.1,dir)))
draw_rectangle(x,y,x+width,y+14,0)
draw_set_color(c_black)
draw_line(x,y+14,x+width,y+14)
draw_set_color(merge_color(c_teal,c_black,0.5-lengthdir_x(0.1,dir)))
draw_rectangle(x,y,x+width,y+15,0)
draw_set_color(c_black)
draw_line(x,y+14,x+width,y+28)

i=startpos
if select>ds_list_size(dialoguelist)-1 select=ds_list_size(dialoguelist)-1
repeat (values) {
if i<ds_list_size(dialoguelist) {
if select=i {draw_set_color(merge_color(c_fuchsia,c_red,0.15+lengthdir_x(0.15,dir))) draw_rectangle(x,y+(i-startpos)*14+28,x+width-12,y+(i-startpos)*14+28,0)}
line=ds_list_find_value(dialoguelist,startpos+(i-startpos))
draw_set_color(c_dkgray)
draw_text(x+2,y+(i-startpos)*14+26+2,string_hash_to_newline(line))
draw_set_color(c_white)
draw_text(x,y+(i-startpos)*14+26,string_hash_to_newline(line))
i+=1
}
}

draw_set_color(c_black)
draw_line(x,y+14,x+width,y+14)

draw_set_color(merge_color(c_teal,c_black,0.75-lengthdir_x(0.1,dir)))
draw_rectangle(x+width-12,y,x+width,y+height,0)

if ds_list_size(dialoguelist)>maxvalues {
draw_set_color(c_white)
draw_rectangle(x+width-12,y+height*(startpos*(1/(ds_list_size(dialoguelist)-(values-1)))),x+width,y+height*(startpos*(1/(ds_list_size(dialoguelist)-(values-1))))+height*(1/(ds_list_size(dialoguelist)-(values-1))),0)
draw_set_color(c_yellow)
draw_rectangle(x+width-12,y+height*(startpos*(1/(ds_list_size(dialoguelist)-(values-1)))),x+width,y+height*(startpos*(1/(ds_list_size(dialoguelist)-(values-1))))+height*(1/(ds_list_size(dialoguelist)-(values-1))),1)
}
draw_set_color(c_black) 
draw_line(x+width-12,y,x+width-12,y+height)
draw_rectangle(x,y,x+width,y+height,1)

draw_set_color(merge_color(c_teal,c_black,0.5+lengthdir_x(0.1,dir)))
draw_rectangle(x,y+height+16,x+width,y+height+208,0)
draw_set_color(c_black)
draw_rectangle(x,y+height+16,x+width,y+height+208,1)
if sprite_get_width(mysprite)<width and sprite_get_height(mysprite)<192 draw_sprite_ext(mysprite,index,x+sprite_get_xoffset(mysprite),y+height+16+sprite_get_yoffset(mysprite),1,1,0,c_white,1) else {
if sprite_get_width(mysprite)>width mywidth=width else mywidth=sprite_get_width(mysprite)
if sprite_get_height(mysprite)>192 myheight=192 else myheight=sprite_get_height(mysprite)
draw_sprite_general(mysprite,index,0,0,mywidth,myheight,x,y+height+16,1,1,0,c_white,c_white,c_white,c_white,1)
}

if write=1 or string_length(line1)>0 {
if blink>0 blink-=0.01 else blink=1
draw_set_color(c_dkgray)
if write=1 draw_text(x+2,y,string_hash_to_newline(line1+string_copy("|",1,round(blink)))) else draw_text(x+2,y,string_hash_to_newline(line1))
if write=1 draw_set_color(c_white) else draw_set_color(c_yellow)
if write=1 draw_text(x,y-2,string_hash_to_newline(line1+string_copy("|",1,round(blink)))) else draw_text(x,y-2,string_hash_to_newline(line1))
} else {
if string_length(line1)=0 {
draw_set_color(c_black)
draw_text(x+2,y,string_hash_to_newline("<ENTER TEXT>"))
draw_set_color(c_gray)
draw_text(x,y-2,string_hash_to_newline("<ENTER TEXT>"))
}
}

if write=1 or string_length(line2)>0 {
if blink>0 blink-=0.01 else blink=1
draw_set_color(c_dkgray)
if write=1 draw_text(x+2,y+14,string_hash_to_newline(line2+string_copy("|",1,round(blink)))) else draw_text(x+2,y,string_hash_to_newline(line2))
if write=1 draw_set_color(c_white) else draw_set_color(c_yellow)
if write=1 draw_text(x,y-2+14,string_hash_to_newline(line2+string_copy("|",1,round(blink)))) else draw_text(x,y-2,string_hash_to_newline(line2))
} else {
if string_length(line2)=0 {
draw_set_color(c_black)
draw_text(x+2,y,string_hash_to_newline("<ENTER TEXT>"))
draw_set_color(c_gray)
draw_text(x,y-2,string_hash_to_newline("<ENTER TEXT>"))
}
}
