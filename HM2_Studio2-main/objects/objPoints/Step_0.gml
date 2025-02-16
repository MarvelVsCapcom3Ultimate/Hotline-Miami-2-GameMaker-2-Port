myx=x
myy=y
x=64
y=96
surface_set_target(surface)
draw_clear_alpha(c_black,0)
times=ceil(5+lengthdir_y(5,dir))

draw_set_halign(fa_center)
draw_set_valign(fa_center)
draw_set_font(fntPoints)
if dir<270 {
i=0
repeat (times) {
draw_set_color(merge_color(merge_color(c_fuchsia,c_yellow,random(1)),c_red,i*0.1))
draw_text_transformed(x,y-i,string_hash_to_newline(str),0.75+i*0.025,0.75+i*0.025,0)
i+=1
}
} else {
if dir<275 amount=1 else {if amount>0 amount-=0.1 else amount=0 if amount<0 amount=0}
i=10-times
repeat (times) {
draw_set_color(merge_color(c_fuchsia,c_red,i*0.1))
draw_text_transformed(x,y-i,string_hash_to_newline(str),0.75+i*0.025,0.75+i*0.025,0)
i += 1
}
}
draw_set_blend_mode(bm_normal);
draw_set_color(merge_color(c_black,c_fuchsia,amount));
draw_text_transformed(x+1,y-i+2,string_hash_to_newline(str),0.75+i*0.025,0.75+i*0.025,0);
color = merge_color(c_aqua, c_white, amount);
draw_text_transformed_color(x,y-i+1,string_hash_to_newline(str),0.75+i*0.025,0.75+i*0.025,0,c_white,c_white,color,color,1);
if dir < 470 
	dir+=10 
else 
{
	//surface_free(surface);
	instance_destroy();
}

surface_reset_target();

x = myx;
y = myy;
