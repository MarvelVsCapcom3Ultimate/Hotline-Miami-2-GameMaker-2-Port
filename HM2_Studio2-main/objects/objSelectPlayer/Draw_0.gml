color2=merge_color(c_teal,c_black,0.5-lengthdir_x(0.1,dir))
draw_set_font(fntTopMenu)
draw_set_color(color2)
draw_rectangle(room_width/2-width/2,room_height/2-height/2,room_width/2+width/2,room_height/2+height/2,0)
draw_set_color(c_black)
draw_rectangle(room_width/2-width/2,room_height/2-height/2,room_width/2+width/2,room_height/2+height/2,1)

draw_set_color(merge_color(color2,c_black,0.5))
draw_rectangle(room_width/2-width/2+8,room_height/2-height/2+52,room_width/2-8,room_height/2+height/2-44,0)
draw_set_color(c_black)
draw_rectangle(room_width/2-width/2+8,room_height/2-height/2+52,room_width/2-8,room_height/2+height/2-44,1)

draw_set_color(merge_color(color2,c_black,0.5))
draw_rectangle(room_width/2-width/2+130,room_height/2-height/2+8,room_width/2-width/2+332,room_height/2-height/2+8+16,0)
draw_set_color(c_black)
draw_rectangle(room_width/2-width/2+130,room_height/2-height/2+8,room_width/2-width/2+332,room_height/2-height/2+8+16,1)

if write=1 draw_set_color(c_white) else draw_set_color(c_yellow)
if write=0 draw_text(room_width/2-width/2+134,room_height/2-height/2+8,string_hash_to_newline(levelname)) else draw_text(room_width/2-width/2+134,room_height/2-height/2+8,string_hash_to_newline(levelname+string_copy("|",1,round(blink))))
if blink>0 blink-=0.01 else blink=1
draw_set_color(c_white)
draw_text(room_width/2-width/2+8,room_height/2-height/2+8,string_hash_to_newline("LEVEL NAME:")) 

draw_text(room_width/2-width/2+8,room_height/2-height/2+32,string_hash_to_newline("CHOOSE A CHARACTER"))

i=0 
repeat (players) {
if select=i {
draw_set_color(merge_color(c_fuchsia,c_red,0.15+lengthdir_x(0.15,dir))) 
draw_rectangle(room_width/2-width/2+9,room_height/2-height/2+56+i*16,room_width/2-9,room_height/2-height/2+56+i*16+15,0)
}
draw_set_color(c_dkgray)
draw_text(room_width/2-width/2+14,room_height/2-height/2+58+i*16,string_hash_to_newline(option[i]))
if select=i draw_set_color(c_white) else draw_set_color(c_yellow)
draw_text(room_width/2-width/2+12,room_height/2-height/2+56+i*16,string_hash_to_newline(option[i]))
i+=1
}

draw_set_color(merge_color(color2,c_black,0.5))
draw_rectangle(room_width/2+12,room_height/2-height/2+52,room_width/2+76,room_height/2-height/2+116,0)
draw_set_color(c_black)
draw_rectangle(room_width/2+12,room_height/2-height/2+52,room_width/2+76,room_height/2-height/2+116,1)

draw_sprite_ext(player[select],index,room_width/2+44,room_height/2-height/2+84,2,2,0,c_white,1)
index+=0.15

draw_set_color(c_black)
draw_text(room_width/2+14,room_height/2+2,string_hash_to_newline("AVAILABLE ENEMIES:"))
draw_set_color(c_yellow)
draw_text(room_width/2+12,room_height/2,string_hash_to_newline("AVAILABLE ENEMIES:"))

i=0 
repeat (3) {
draw_set_color(c_black)
draw_text(room_width/2+14,room_height/2+22+i*16,string_hash_to_newline(enemies[i]))
draw_text(room_width/2+130,room_height/2+22+i*16,string_hash_to_newline(enemies[i+3]))
if available[i]=1 draw_set_color(c_white) else draw_set_color(c_gray)
draw_text(room_width/2+12,room_height/2+20+i*16,string_hash_to_newline(enemies[i]))
if available[i+3]=1 draw_set_color(c_white) else draw_set_color(c_gray)
draw_text(room_width/2+128,room_height/2+20+i*16,string_hash_to_newline(enemies[i+3]))
i+=1
}

bselect=-1
i=0
repeat (2) {
if mouse_x>room_width/2-width/2+8+i*80 and mouse_x<room_width/2-width/2+12+i*80+72 and mouse_y>room_height/2+height/2-32 and mouse_y<room_height/2+height/2-16 {draw_set_color(merge_color(c_fuchsia,c_red,0.15+lengthdir_x(0.15,dir))) bselect=i} else draw_set_color(merge_color(color2,c_black,0.5))
draw_rectangle(room_width/2-width/2+8+i*80,room_height/2+height/2-32,room_width/2-width/2+12+i*80+72,room_height/2+height/2-16,0)
draw_set_color(c_black)
draw_rectangle(room_width/2-width/2+8+i*80,room_height/2+height/2-32,room_width/2-width/2+12+i*80+72,room_height/2+height/2-16,1)
draw_set_color(c_dkgray)
draw_text(room_width/2-width/2+14+i*80,room_height/2+height/2-30,string_hash_to_newline(choice[i]))
if bselect=i draw_set_color(c_white) else draw_set_color(c_yellow)
draw_text(room_width/2-width/2+12+i*80,room_height/2+height/2-32,string_hash_to_newline(choice[i]))
i+=1
}

dir+=1

if mouse_x>room_width/2+8 and mouse_y>room_height/2+height/2-32 and mouse_x<room_width/2+width/2-16 and mouse_y<room_height/2+height/2-16 draw_set_color(merge_color(c_fuchsia,c_red,0.15+lengthdir_x(0.15,objEditor.dir))) else draw_set_color(merge_color(color2,c_black,0.5))
draw_rectangle(room_width/2+8,room_height/2+height/2-32,room_width/2+width/2-16,room_height/2+height/2-16,0)
draw_set_color(c_black)
draw_rectangle(room_width/2+8,room_height/2+height/2-32,room_width/2+width/2-16,room_height/2+height/2-16,1)

draw_set_color(c_black)
draw_text(room_width/2+18,room_height/2+height/2-30,string_hash_to_newline(song[currentsong]))
if windowopen=1 draw_set_color(c_white) else draw_set_color(c_yellow)
draw_text(room_width/2+16,room_height/2+height/2-32,string_hash_to_newline(song[currentsong]))

if windowopen=1 {
draw_set_color(merge_color(color2,c_black,0.5))
draw_rectangle(room_width/2+8,room_height/2+height/2-16,room_width/2+width/2-16,room_height/2+height/2+160,0)
draw_set_color(c_black)
draw_rectangle(room_width/2+8,room_height/2+height/2-16,room_width/2+width/2-16,room_height/2+height/2+160,1)

songselect=-1
i=floor(startpos)
repeat (10) {
if mouse_x>room_width/2+18 and mouse_y>room_height/2+height/2-8+(i-floor(startpos))*16 and mouse_x<room_width/2+width/2-16 and mouse_y<room_height/2+height/2-8+(i-floor(startpos))*16+16 {
draw_set_color(merge_color(c_fuchsia,c_red,0.15+lengthdir_x(0.15,objEditor.dir)))
draw_rectangle(room_width/2+18,room_height/2+height/2-8+(i-floor(startpos))*16,room_width/2+width/2-16,room_height/2+height/2-8+(i-floor(startpos))*16+16,0)
songselect=i
}
draw_set_color(c_black)
draw_text(room_width/2+18,room_height/2+height/2-6+(i-floor(startpos))*16,string_hash_to_newline(song[i]))
if songselect=i draw_set_color(c_white) else draw_set_color(c_yellow)
draw_text(room_width/2+16,room_height/2+height/2-8+(i-floor(startpos))*16,string_hash_to_newline(song[i]))
i+=1
}

if round(songselect-floor(startpos))=0 {if startpos>0 startpos-=0.2 if startpos<0 startpos=0}
if round(songselect-floor(startpos))=9 {if startpos<songs-10 startpos+=0.2 if startpos>songs-9 startpos=songs-9}
}


