draw_set_font(fntAmmo)
draw_set_color(c_black)
draw_set_halign(fa_right)
draw_set_valign(fa_top)
draw_text(__view_get( e__VW.WView, 0 )-21+scorex,17,string_hash_to_newline(string(myscore)+"pts"))
draw_text(__view_get( e__VW.WView, 0 )-25+scorex+lengthdir_x(0.5,dir-180),13+lengthdir_x(0.5,dir-180),string_hash_to_newline(string(myscore)+"pts"))
draw_set_halign(fa_left)
draw_set_font(fntCombo)
draw_text(23+combox,-7,string_hash_to_newline(string(combo)+"x"))
draw_text(26+combox,-4,string_hash_to_newline(string(combo)+"x"))
draw_set_font(fntAmmo)
draw_text(23+ammox+lengthdir_x(0.5,dir),219+lengthdir_x(0.5,dir),string_hash_to_newline(string(ammo)+"/"+string(maxammo)+"rnds"))
draw_text(27+ammox,223,string_hash_to_newline(string(ammo)+"/"+string(maxammo)+"rnds"))
draw_text_color(26+ammox,222,string_hash_to_newline(string(ammo)+"/"+string(maxammo)+"rnds"),merge_color(c_fuchsia,c_purple,0.5+lengthdir_x(0.5,dir)),merge_color(c_fuchsia,c_purple,0.5+lengthdir_x(0.5,dir)),merge_color(c_red,c_maroon,0.5+lengthdir_x(0.5,dir)),merge_color(c_red,c_maroon,0.5+lengthdir_x(0.5,dir)),1)
draw_text_color(24+ammox+lengthdir_x(0.5,dir),220+lengthdir_x(0.5,dir),string_hash_to_newline(string(ammo)+"/"+string(maxammo)+"rnds"),c_white,c_white,c_aqua,c_aqua,1)
draw_set_font(fntCombo)
draw_text_color(25+combox,-5,string_hash_to_newline(string(combo)+"x"),merge_color(c_red,c_fuchsia,0.5+lengthdir_x(0.5,dir+90)),merge_color(c_red,c_fuchsia,0.5+lengthdir_x(0.5,dir+90)),merge_color(c_maroon,c_red,0.5+lengthdir_x(0.5,dir+90)),merge_color(c_maroon,c_red,0.5+lengthdir_x(0.5,dir+90)),1)
draw_text_color(24+combox,-6,string_hash_to_newline(string(combo)+"x"),merge_color(c_red,c_fuchsia,0.5+lengthdir_x(0.5,dir)),merge_color(c_red,c_fuchsia,0.5+lengthdir_x(0.5,dir)),merge_color(c_maroon,c_red,0.5+lengthdir_x(0.5,dir)),merge_color(c_maroon,c_red,0.5+lengthdir_x(0.5,dir)),1)
draw_set_font(fntAmmo)
draw_set_halign(fa_right)
draw_set_valign(fa_top)
draw_text_color(__view_get( e__VW.WView, 0 )-22+scorex,16,string_hash_to_newline(string(myscore)+"pts"),merge_color(c_fuchsia,c_purple,0.5+lengthdir_x(0.5,dir)),merge_color(c_fuchsia,c_purple,0.5+lengthdir_x(0.5,dir)),merge_color(c_red,c_maroon,0.5+lengthdir_x(0.5,dir)),merge_color(c_red,c_maroon,0.5+lengthdir_x(0.5,dir)),1)
draw_text_color(__view_get( e__VW.WView, 0 )-24+scorex+lengthdir_x(0.5,dir-180),14+lengthdir_x(0.5,dir-180),string_hash_to_newline(string(myscore)+"pts"),c_white,c_white,c_aqua,c_aqua,1)
dir+=4

if ammo>-1 {
if ammox<0 ammox+=8
} else {
if ammox>-160 ammox-=8
}
if scorex>0 scorex-=8

if combox<0 combox+=8
