surface_set_target(surf)
draw_clear_alpha(c_black,0)
draw_set_font(fntPartPrefix)
draw_set_halign(fa_center)
draw_set_color(merge_color(c_black,merge_color(c_red,c_fuchsia,0.5+lengthdir_x(0.5,dir)),prefixblend))
draw_text(room_width/2+1,room_height*0.25+1,string_hash_to_newline(prefix))
draw_set_color(merge_color(c_black,merge_color(c_ltgray,c_white,0.5+lengthdir_x(0.5,dir)),prefixblend))
draw_text(room_width/2,room_height*0.25,string_hash_to_newline(prefix))
//draw_text_color(room_width/2,room_height*0.25,prefix,merge_color(c_black,merge_color(c_ltgray,c_white,0.5+lengthdir_x(0.5,dir)),prefixblend),merge_color(c_black,merge_color(c_ltgray,c_white,0.5+lengthdir_x(0.5,dir)),prefixblend),merge_color(c_black,c_dkgray,prefixblend),merge_color(c_black,c_dkgray,prefixblend),1)
draw_set_font(fntPartTitle)
draw_set_halign(fa_center)
draw_set_color(c_black)
i=string_length(title)
startx=room_width*0.5-10+string_width(string_hash_to_newline(title))*0.5-(string_count("I",title)*string_width(string_hash_to_newline("I"))*0.4)
repeat (string_length(title)) {
letter=string_copy(title,i,1)
if string_upper(letter)="I" addx=string_width(string_hash_to_newline(letter))*0.4 else addx=0
ii=0
if rise[i-1]>0 {riseadd=rise[i-1]+lengthdir_x(0.3*rise[i-1],-dir*1.13+i*35)} else riseadd=0 //
if rise[i-1]<10 rise[i-1]+=0.25
repeat (riseadd) {
myamount=-0.5+lengthdir_x(1.5,dir*0.73)
if myamount<0 myamount=0
draw_set_color(merge_color(c_black,merge_color(c_red,make_color_hsv(random(255),random(255),255),myamount),ii*(1/13)))
draw_text_transformed(startx+addx+ii,room_height*0.5-ii,string_hash_to_newline(letter),1,1,0)
ii+=1
}
color2=merge_color(c_black,draw_get_color(),abs(prefixblend))
if riseadd>0 {
//draw_set_color(c_white)
draw_text_transformed(startx+addx+riseadd-1,room_height*0.5-riseadd-1,string_hash_to_newline(letter),1,1,0)
draw_text_transformed(startx+addx+riseadd+1,room_height*0.5-riseadd-1,string_hash_to_newline(letter),1,1,0)
}
color1=merge_color(c_black,c_white,abs(prefixblend))
//draw_text_transformed(startx+addx+riseadd,room_height*0.5-riseadd,letter,1,1,0)
draw_text_transformed_color(startx+addx+riseadd,room_height*0.5-riseadd,string_hash_to_newline(letter),1,1,0,color1,color1,color2,color2,1)
i-=1
startx-=string_width(string_hash_to_newline(letter))
}
surface_reset_target()
dir+=4
if prefixblend<1 {if prefixblend<0.03 prefixblend+=0.001 else prefixblend+=0.01} else {
if sunalpha<1 sunalpha+=0.01
}
