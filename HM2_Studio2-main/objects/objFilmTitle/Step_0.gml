if !surface_exists(surf) surf=surface_create(room_width,room_height)
surface_set_target(surf)
draw_set_color(c_black)
draw_set_alpha(0.1)
draw_rectangle(0,0,room_width,room_height,0)
draw_set_alpha(1)
if wait>0 wait-=1 else {
if current<2 {
draw_set_alpha(alpha)
if alpha<1 alpha+=0.05
if credity>0 credity-=0.1
if credity<0 credity+=0.1
draw_set_font(fntFilmCredit)
draw_set_halign(fa_left)
draw_set_color(c_white)
draw_text_transformed(room_width/2-string_width(string_hash_to_newline(credita[current]))*0.5-4+textx,room_height/2-16+texty+credity,string_hash_to_newline(credita[current]),0.5,0.5,0)
draw_set_color(c_red)
draw_text_transformed(room_width/2+4+textx,room_height/2-16+texty-credity,string_hash_to_newline(creditb[current]),0.5,0.5,0)
draw_set_alpha(1)
} else {
if on=1 {
if creditx>0 creditx-=10 if creditx=10 {flash=0 amount=1}
} else {
creditx+=creditx*0.1+2 if creditx>480 {instance_destroy() room_goto_next()}
if alpha>0 alpha-=0.035
}
if amount>0 amount-=0.005
draw_set_alpha(alpha)
draw_set_font(fntFilmTitle1)
draw_set_color(c_white)
draw_set_halign(fa_left)
draw_text_transformed(64-creditx,room_height*0.4+texty,string_hash_to_newline("Midnight"),0.5,0.5,0.1)
draw_set_font(fntFilmTitle2)
times=5+lengthdir_x(5,dir*0.5)
draw_set_blend_mode(bm_add)
i=0
repeat (times) {
draw_set_color(merge_color(c_black,merge_color(c_navy,c_dkgray,random(1)),random(0.2)))
draw_text_transformed(240+textx+random(i*0.4)-random(i*0.8)+creditx,room_height*0.4+texty+random(i*0.4)-random(i*0.8),string_hash_to_newline("ANIMAL"),0.5,0.5,0.1)
i+=1
}
draw_set_blend_mode(bm_normal)
draw_set_color(merge_color(c_red,c_maroon,0.25+lengthdir_x(0.25,dir*2)))
//draw_set_color(c_black)
draw_text_transformed(240+textx+creditx,room_height*0.4+texty,string_hash_to_newline("ANIMAL"),0.5,0.5,0.1)
draw_set_alpha(1)

/*draw_set_color(c_black)
draw_set_alpha(0.2)
draw_rectangle(myx,0,room_width,room_height,0)
draw_triangle(myx,0,myx-96,room_height,myx,room_height,0)
if myx<room_width myx+=3
*/
}
}
surface_reset_target()
/* */
/*  */
