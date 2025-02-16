surface_set_target(surf)
draw_clear_alpha(c_black,0)
draw_set_halign(fa_center)
draw_set_valign(fa_center)
draw_set_font(fntLevel)
i=0
repeat (11) {
if select=i times=6+lengthdir_x(5,dir*2) else times=1
targetx[i]=room_width*0.15+string_width(string_hash_to_newline("0"+string(i)+". "+title[i]))*0.5
addx=abs(i-select)*8
if addx>24 addx=24
targetx[i]+=addx
myx[i]+=(targetx[i]-myx[i])*0.05
ii=0 
repeat (times) {
draw_set_color(merge_color(c_red,c_maroon,0.5+lengthdir_x(0.5,ii*10+dir*2+i*45)))
draw_text_transformed(myx[i],48+i*24,string_hash_to_newline("0"+string(i)+". "+title[i]),0.9+ii*0.01,0.9+ii*0.02,0)
ii+=1
}
if select=i {
draw_set_color(c_black)
//draw_text_transformed(room_width/2,48+i*24-1,"0"+string(i)+". "+title[i],0.9+ii*0.01,0.9+ii*0.01,0)
//draw_text_transformed(room_width/2,48+i*24+1,"0"+string(i)+". "+title[i],0.9+ii*0.01,0.9+ii*0.01,0)
draw_text_transformed(myx[i]-1,48+i*24,string_hash_to_newline("0"+string(i)+". "+title[i]),0.9+ii*0.01,0.9+ii*0.02,0)
draw_text_transformed(myx[i]+1,48+i*24,string_hash_to_newline("0"+string(i)+". "+title[i]),0.9+ii*0.01,0.9+ii*0.02,0)
color=merge_color(c_orange,c_yellow,0.5+lengthdir_x(0.5,dir))
draw_text_transformed_color(myx[i],48+i*24,string_hash_to_newline("0"+string(i)+". "+title[i]),0.9+ii*0.01,0.9+ii*0.02,0,c_white,c_white,color,color,1)
}
i+=1
}
surface_reset_target()
dir+=2

if reload>0 reload-=1 else {
my_id=instance_create(room_width/2+32,room_height/2,objLevelPalmTree)
my_id.hspeed=0.5
my_id=instance_create(room_width/2-32,room_height/2,objLevelPalmTree)
my_id.hspeed=-0.5
reload=35
}
