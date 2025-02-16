if (!surface_exists(surf))
	surf = surface_create(__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 ));
surface_set_target(surf)
draw_clear_alpha(c_black, 0);
draw_set_font(fntRestart);
draw_set_halign(fa_center);
if (current == 1) 
{
	draw_set_color(merge_color(c_purple,c_fuchsia,0.5+lengthdir_x(0.5,dir)))
	draw_text(__view_get( e__VW.WView, 0 )/2+1,__view_get( e__VW.HView, 0 )*0.87+1,string_hash_to_newline(features[current]))
	draw_set_color(merge_color(c_fuchsia,c_white,0.5+lengthdir_x(0.5,dir)))
	draw_text(__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.HView, 0 )*0.87,string_hash_to_newline(features[current]))
	draw_set_color(merge_color(c_maroon,c_red,0.5+lengthdir_x(0.5,dir*5)))
	draw_set_halign(fa_right) 
	draw_text(__view_get( e__VW.WView, 0 )/2+string_width(string_hash_to_newline(features[current]))/2+1,__view_get( e__VW.HView, 0 )*0.87+1,string_hash_to_newline("NO WEAPONS"))
	draw_set_color(merge_color(c_red,c_white,0.5+lengthdir_x(0.5,dir*5)))
	draw_text(__view_get( e__VW.WView, 0 )/2+string_width(string_hash_to_newline(features[current]))/2,__view_get( e__VW.HView, 0 )*0.87,string_hash_to_newline("NO WEAPONS"))
} 
else 
{
	draw_set_color(merge_color(c_purple,c_fuchsia,0.5+lengthdir_x(0.5,dir)))
	draw_text(__view_get( e__VW.WView, 0 )/2+1,__view_get( e__VW.HView, 0 )*0.87+1,string_hash_to_newline(features[current]))
	draw_set_color(merge_color(c_fuchsia,c_white,0.5+lengthdir_x(0.5,dir)))
	draw_text(__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.HView, 0 )*0.87,string_hash_to_newline(features[current]))
}
draw_set_font(font1)

times=2+lengthdir_x(4,dir*2.32)
if times < 1 
	times = 1;
i=0
repeat (times) {
draw_set_color(merge_color(c_purple,c_fuchsia,times*(1/6)))
draw_text(__view_get( e__VW.WView, 0 )/2-i,__view_get( e__VW.HView, 0 )*0.8-i,string_hash_to_newline(name[current]))
i+=1
}
draw_set_color(merge_color(c_teal,c_aqua,0.5+lengthdir_x(0.5,dir*2)))
draw_text(__view_get( e__VW.WView, 0 )/2-i+1,__view_get( e__VW.HView, 0 )*0.8-i+1,string_hash_to_newline(name[current]))
draw_set_color(merge_color(c_aqua,c_white,0.5+lengthdir_x(0.5,dir*2)))
draw_text(__view_get( e__VW.WView, 0 )/2-i,__view_get( e__VW.HView, 0 )*0.8-i,string_hash_to_newline(name[current]))
surface_reset_target()

