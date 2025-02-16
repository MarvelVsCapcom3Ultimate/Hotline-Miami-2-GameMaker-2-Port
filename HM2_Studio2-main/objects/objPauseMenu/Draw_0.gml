if wait>0 wait-=1 else {
draw_sprite_ext(sprite_index,0,x,y,image_xscale,image_yscale,image_angle,merge_color(c_white,c_ltgray,random(0.3)),1)
draw_set_halign(fa_left)
draw_set_font(fntVHSMenu)
draw_set_alpha(0.9+random(0.1))
draw_set_color(merge_color(c_dkgray,c_black,0.5))
draw_text(x+29,y+7,string_hash_to_newline("MENU"))
draw_set_alpha(0.9+random(0.1))
draw_set_color(c_white) 
draw_text(x+28,y+6,string_hash_to_newline("MENU"))
i=0
repeat (4) {
draw_set_alpha(0.9+random(0.1))
draw_set_color(merge_color(c_dkgray,c_black,0.5))
draw_text(x+7,y+27+i*16,string_hash_to_newline(option[i]))
draw_set_alpha(0.9+random(0.1))
if i=select draw_set_color(c_white) else draw_set_color(c_gray)
draw_text(x+6,y+26+i*16,string_hash_to_newline(option[i]))
i+=1
}
draw_set_alpha(1)
draw_set_blend_mode(bm_subtract)
draw_sprite_ext(sprite_index,1,x,y,image_xscale,image_yscale,image_angle,merge_color(c_white,c_ltgray,random(0.3)),1)
draw_set_blend_mode(bm_normal)
x=startx
}
