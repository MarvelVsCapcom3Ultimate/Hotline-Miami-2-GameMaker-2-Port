surface_set_target(surf)
draw_clear_alpha(c_black,0)
draw_set_font(fntScore)
draw_set_halign(fa_right)
i=0
repeat (10) {
draw_text_color(room_width-32+lengthdir_x(4,dir*3+i*25)+2,room_height-48-i*22+2,string_hash_to_newline(stunt[i]),merge_color(c_red,c_fuchsia,0.5+lengthdir_x(0.5,dir*4+i*20)),merge_color(c_red,c_fuchsia,0.5+lengthdir_x(0.5,dir*4+i*20)),merge_color(c_maroon,c_red,0.5+lengthdir_x(0.5,dir*4+i*20)),merge_color(c_maroon,c_red,0.5+lengthdir_x(0.5,dir*4+i*20)),1)
draw_text_color(room_width-32+lengthdir_x(4,dir*3+i*25),room_height-48-i*22,string_hash_to_newline(stunt[i]),merge_color(c_aqua,c_white,0.5+lengthdir_x(0.5,dir+i*20)),merge_color(c_aqua,c_white,0.5+lengthdir_x(0.5,dir+i*20)),merge_color(c_teal,c_aqua,0.5+lengthdir_x(0.5,dir+i*20)),merge_color(c_teal,c_aqua,0.5+lengthdir_x(0.5,dir+i*20)),1)
i+=1
}
surface_reset_target()
if tree>0 tree-=1 else {
my_id=instance_create(room_width/2-25,room_height/2,objSmallPalmTree)
my_id.hspeed=-0.333
my_id=instance_create(room_width/2+25,room_height/2,objSmallPalmTree)
my_id.hspeed=0.333
tree=50
}






if fade=1 {
if amount>0 amount-=5 else {
bgm_Stop(global.currentsong)
if global.level=rmFansLevel2Floor1 level=rmScene else level=global.level
if global.level=rmPart {
level=rmPart
if global.parttitle="EXPOSITION" global.nextlevel=rmFansHeadQuarters
if global.parttitle="RISING" global.nextlevel=rmCourt
if global.parttitle="CLIMAX" global.nextlevel=rmTikiBar
if global.parttitle="FALLING" global.nextlevel=rmSubway1
}
if global.level=rmVHS nothing=1 else {
song=scrGetSong()
scrPlaySong(song)
}
if level=rmVHS global.level=rmCobraApartment1
room_goto(level)
}
}
