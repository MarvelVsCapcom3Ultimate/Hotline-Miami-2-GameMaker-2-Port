if !surface_exists(surf) {
surf=surface_create(room_width,room_height)
surface_set_target(surf)
draw_clear_alpha(c_black,0)
surface_reset_target()
}
addcurrent=0
if current=8 addcurrent=-3
draw_set_valign(fa_top)
goalx=0
if level=0 {goalx=room_width/2-current*120 if statx<1 statx+=0.1 else {if removex>0.05 removex-=0.05 else removex=0}}
if level=1 {goalx=180-120*current if removex<1 removex+=0.05 else {removex=1 if box[current].level>0 {if statx<1 statx+=0.05 else {level=2 change=1}} else {if statx>0.05 statx-=0.05 else statx=0}}}
if level=2 {goalx=230-120*current}
myx+=(goalx-(room_width/2+myx))*0.1
i=0
repeat (9) {
box[i].x=box[i].myx+myx+(i-current)*(480*removex)
i+=1
}


if change=1 {
if titlex<2 titlex+=0.1 else {change=0 title=current titlex=0 if level=0 and drawpart=0 drawpart=1 if level=1 and abs(drawpart)=1 drawpart=0 if level=2 {if box[current].level<3 drawpart=-1 else drawpart=-2}}
} else {
if titlex<1 titlex+=0.1
if titlex>1 titlex=1
}

surface_set_target(surf)
draw_clear_alpha(c_black,0)
if level=0 or drawpart=1 {
draw_set_font(fntVHSSubtitle)
draw_set_halign(fa_center)
draw_set_color(merge_color(aqua,fuchsia,0.5+lengthdir_x(0.5,dir*5)))
draw_text(-100+(room_width*0.5+100)*titlex,8,string_hash_to_newline(partsubtitle[title]))
draw_set_color(merge_color(aqua,fuchsia,0.5+lengthdir_x(0.5,dir*5+90)))
draw_text(-101+(room_width*0.5+100)*titlex,7,string_hash_to_newline(partsubtitle[title]))
draw_set_font(fntVHSTitle)
i=0
repeat (10) {
draw_set_color(merge_color(fuchsia,c_maroon,0.5+lengthdir_x(0.5,dir*10+i*20)))
draw_text_transformed(room_width+200-(room_width*0.5+200)*titlex+i,room_height*0.75-i,string_hash_to_newline(parttitle[title]),1+i*0.01,1+i*0.01,0)
i+=1
}
draw_text_transformed_color(room_width+200-(room_width*0.5+200)*titlex+i,room_height*0.75-i,string_hash_to_newline(parttitle[title]),1+i*0.01,1+i*0.01,0,merge_color(aqua,c_white,0.5+lengthdir_x(0.25,dir*10)),merge_color(aqua,c_white,0.5+lengthdir_x(0.25,dir*10)),merge_color(aqua,c_teal,0.5+lengthdir_x(0.5,dir*10+i*20)),merge_color(aqua,c_teal,0.5+lengthdir_x(0.5,dir*10+i*20)),1)
}

if level=1 or drawpart=0 {
if current>0 {
draw_set_font(fntVHSMusic)
draw_set_halign(fa_left)
i=0
repeat (2) {
draw_set_color(merge_color(c_orange,c_maroon,0.75-lengthdir_x(0.25,dir*5)))
draw_text(248+(240+i*60)*statx,room_height*0.25+i*20,string_hash_to_newline(stat[ceil(frac(i*0.5))]+value[(current-1)*4+box[current].select+1+addcurrent,i]))
draw_set_color(merge_color(c_white,c_yellow,0.25-lengthdir_x(0.25,dir*5+180)))
draw_text(248+(240+i*60)*statx-1,room_height*0.25+i*20-1,string_hash_to_newline(stat[ceil(frac(i*0.5))]+value[(current-1)*4+box[current].select+1+addcurrent,i]))
i+=1
}
draw_set_color(merge_color(c_orange,c_maroon,0.75-lengthdir_x(0.25,dir*5)))
draw_text(248+(240+i*60)*statx,room_height*0.25+i*20,string_hash_to_newline("LEADERBOARDS"))
draw_set_color(merge_color(c_white,c_yellow,0.25-lengthdir_x(0.25,dir*5+180)))
draw_text(248+(240+i*60)*statx-1,room_height*0.25+i*20-1,string_hash_to_newline("LEADERBOARDS"))
i+=1
draw_set_font(fntVHSGrading)
draw_set_color(merge_color(c_green,c_black,0.75-lengthdir_x(0.25,dir*5)))
draw_text(248+(240+i*60)*statx,room_height*0.25+i*20,string_hash_to_newline("Grade:"))
draw_set_color(merge_color(c_lime,c_white,0.25-lengthdir_x(0.25,dir*5+180)))
draw_text(248+(240+i*60)*statx-1,room_height*0.25+i*20-1,string_hash_to_newline("Grade:"))
draw_set_font(fntVHSGrade)
draw_set_color(merge_color(c_red,c_maroon,0.25+lengthdir_x(0.25,dir*10)))
draw_text(339+(240+i*60)*statx,room_height*0.25+i*20-29,string_hash_to_newline(grade))
draw_set_color(merge_color(c_red,c_maroon,0.25-lengthdir_x(0.25,dir*10)))
draw_text(339+(240+i*60)*statx-1,room_height*0.25+i*20-1-29,string_hash_to_newline(grade))
}
if current=0 {
mytitle=leveltitle[0,0] mysubtitle=levelsubtitle[0,0]
draw_set_font(fntVHSMusic)
draw_set_halign(fa_left)
i=0
draw_set_color(merge_color(c_orange,c_maroon,0.75-lengthdir_x(0.25,dir*5)))
draw_text(248+(240+i*60)*statx,room_height*0.25+i*20,string_hash_to_newline("TITLE: MIDNIGHT ANIMAL"))
draw_set_color(merge_color(c_white,c_yellow,0.25-lengthdir_x(0.25,dir*5+180)))
draw_text(248+(240+i*60)*statx-1,room_height*0.25+i*20-1,string_hash_to_newline("TITLE: MIDNIGHT ANIMAL"))
i+=1
draw_set_color(merge_color(c_orange,c_maroon,0.75-lengthdir_x(0.25,dir*5)))
draw_text(248+(240+i*60)*statx,room_height*0.25+i*20,string_hash_to_newline("LENGTH: 86 MINS"))
draw_set_color(merge_color(c_white,c_yellow,0.25-lengthdir_x(0.25,dir*5+180)))
draw_text(248+(240+i*60)*statx-1,room_height*0.25+i*20-1,string_hash_to_newline("LENGTH: 86 MINS"))
i+=1
draw_set_color(merge_color(c_black,c_maroon,0.75-lengthdir_x(0.25,dir*5)))
draw_text(248+(240+i*60)*statx,room_height*0.25+i*20,string_hash_to_newline("RATED R"))
draw_set_color(merge_color(c_red,c_orange,0.25-lengthdir_x(0.25,dir*5+180)))
draw_text(248+(240+i*60)*statx-1,room_height*0.25+i*20-1,string_hash_to_newline("RATED R"))
} else {mytitle=leveltitle[current,box[current].select] mysubtitle=levelsubtitle[current,box[current].select]} 

draw_set_font(fntVHSSubtitle)
draw_set_halign(fa_center)
draw_set_color(merge_color(aqua,fuchsia,0.5+lengthdir_x(0.5,dir*5)))
draw_text(-100+(room_width*0.5+100)*titlex,8,string_hash_to_newline(mysubtitle))
draw_set_color(merge_color(aqua,fuchsia,0.5+lengthdir_x(0.5,dir*5+90)))
draw_text(-101+(room_width*0.5+100)*titlex,7,string_hash_to_newline(mysubtitle))
draw_set_font(fntVHSTitle)
i=0
repeat (10) {
draw_set_color(merge_color(fuchsia,c_maroon,0.5+lengthdir_x(0.5,dir*10+i*20)))
draw_text_transformed(room_width+200-(room_width*0.5+200)*titlex+i,room_height*0.75-i,string_hash_to_newline(mytitle),1+i*0.01,1+i*0.01,0)
i+=1
}
draw_text_transformed_color(room_width+200-(room_width*0.5+200)*titlex+i,room_height*0.75-i,string_hash_to_newline(mytitle),1+i*0.01,1+i*0.01,0,merge_color(aqua,c_white,0.5+lengthdir_x(0.25,dir*10)),merge_color(aqua,c_white,0.5+lengthdir_x(0.25,dir*10)),merge_color(aqua,c_teal,0.5+lengthdir_x(0.5,dir*10+i*20)),merge_color(aqua,c_teal,0.5+lengthdir_x(0.5,dir*10+i*20)),1)
}

if level=2 and drawpart=-1{
draw_set_font(fntVHSSubtitle)
draw_set_halign(fa_center)
draw_set_color(merge_color(aqua,fuchsia,0.5+lengthdir_x(0.5,dir*5)))
draw_text(-100+(room_width*0.5+100)*titlex,8,string_hash_to_newline("Skip Intro?"))
draw_set_color(merge_color(aqua,fuchsia,0.5+lengthdir_x(0.5,dir*5+90)))
draw_text(-101+(room_width*0.5+100)*titlex,7,string_hash_to_newline("Skip Intro?"))
draw_set_font(fntVHSTitle)
if intro=0 {
i=0
repeat (10) {
draw_set_color(merge_color(fuchsia,c_maroon,0.5+lengthdir_x(0.5,dir*10+i*20)))
draw_text_transformed(room_width+200-(room_width*0.5+200)*titlex+i-40,room_height*0.75-i,string_hash_to_newline("YES"),1+i*0.01,1+i*0.01,0)
i+=1
}
draw_text_transformed_color(room_width+200-(room_width*0.5+200)*titlex+i-40,room_height*0.75-i,string_hash_to_newline("YES"),1+i*0.01,1+i*0.01,0,merge_color(aqua,c_white,0.5+lengthdir_x(0.25,dir*10)),merge_color(aqua,c_white,0.5+lengthdir_x(0.25,dir*10)),merge_color(aqua,c_teal,0.5+lengthdir_x(0.5,dir*10+i*20)),merge_color(aqua,c_teal,0.5+lengthdir_x(0.5,dir*10+i*20)),1)
draw_set_color(merge_color(fuchsia,c_maroon,0.5+lengthdir_x(0.5,dir*10+i*20)))
i=0
draw_text_transformed(room_width+200-(room_width*0.5+200)*titlex+i+40,room_height*0.75-i,string_hash_to_newline("NO"),1+i*0.01,1+i*0.01,0)
}
if intro=1 {
i=0
repeat (10) {
draw_set_color(merge_color(fuchsia,c_maroon,0.5+lengthdir_x(0.5,dir*10+i*20)))
draw_text_transformed(room_width+200-(room_width*0.5+200)*titlex+i+40,room_height*0.75-i,string_hash_to_newline("NO"),1+i*0.01,1+i*0.01,0)
i+=1
}
draw_text_transformed_color(room_width+200-(room_width*0.5+200)*titlex+i+40,room_height*0.75-i,string_hash_to_newline("NO"),1+i*0.01,1+i*0.01,0,merge_color(aqua,c_white,0.5+lengthdir_x(0.25,dir*10)),merge_color(aqua,c_white,0.5+lengthdir_x(0.25,dir*10)),merge_color(aqua,c_teal,0.5+lengthdir_x(0.5,dir*10+i*20)),merge_color(aqua,c_teal,0.5+lengthdir_x(0.5,dir*10+i*20)),1)
draw_set_color(merge_color(fuchsia,c_maroon,0.5+lengthdir_x(0.5,dir*10+i*20)))
i=0
draw_text_transformed(room_width+200-(room_width*0.5+200)*titlex+i-40,room_height*0.75-i,string_hash_to_newline("YES"),1+i*0.01,1+i*0.01,0)
}
}

draw_set_font(fntVHSMusic)
draw_set_color(merge_color(c_orange,c_maroon,0.75+lengthdir_x(0.25,dir*5)))
if current=0 draw_text(room_width/2+24,room_height*0.9+48*(1-removex)+box[current].addx*0.2,string_hash_to_newline(song[0,0])) else draw_text(room_width/2+24,room_height*0.9+48-(box[current].dist)*1.5+box[current].addx*0.2,string_hash_to_newline(song[current,box[current].select]))
draw_set_color(merge_color(c_white,c_yellow,0.25+lengthdir_x(0.25,dir*5+180)))
if current=0 draw_text(room_width/2-1+24,room_height*0.9-1+48*(1-removex)+box[current].addx*0.2,string_hash_to_newline(song[0,0])) else draw_text(room_width/2-1+24,room_height*0.9-1+48-(box[current].dist)*1.5+box[current].addx*0.2,string_hash_to_newline(song[current,box[current].select]))
surface_reset_target()

