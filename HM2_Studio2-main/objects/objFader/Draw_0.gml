draw_set_blend_mode(bm_subtract)
my_y=-random(32)
my_x=-random(32)
draw_sprite_tiled(sprNoise,0,my_x,my_y)
draw_circle_color(__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.HView, 0 )/2,__view_get( e__VW.WView, 0 )*0.76+random(24),c_black,merge_color(c_navy,c_aqua,0.25+random(0.25)),0)
draw_set_blend_mode(bm_normal)

if fade=0 {
if alpha2>0 {
draw_set_blend_mode(bm_add)
if alpha1<=0 alpha2-=0.01
alpha3=alpha2*2
if alpha3>1 alpha3=1
draw_circle_color(room_width/2,room_height/2,room_width*0.74,merge_color(c_black,c_white,alpha2),merge_color(c_black,c_white,alpha3),0)
draw_set_blend_mode(bm_normal)
}

if alpha1>0 {
alpha1-=0.025
draw_set_blend_mode(bm_subtract)
alpha3=alpha1*2
if alpha3>1 alpha3=1
draw_rectangle_color(0,0,640,320,merge_color(c_black,c_white,alpha1),merge_color(c_black,c_white,alpha3),merge_color(c_black,c_white,alpha3),merge_color(c_black,c_white,alpha1),0)
draw_set_blend_mode(bm_normal)
}
} else {

scrSongVolume(1-(alpha1+alpha2)*0.5)
draw_set_blend_mode(bm_add)
if alpha2<1 alpha2+=0.02 
if alpha2>=1 alpha2=1
alpha3=alpha2*2
if alpha3>1 alpha3=1
draw_circle_color(room_width/2,room_height/2,room_width*0.74,merge_color(c_black,c_white,alpha2),merge_color(c_black,c_white,alpha3),0)
draw_set_blend_mode(bm_normal)

if alpha2>=1 
{
	if alpha1 < 1 
	{
		alpha1 += 0.02; 
		if alpha1 > 1 
			alpha1 = 1;
	}
	else 
	{
		scrStopSong() 
		if global.song = noone
			nothing = true;
		else 
			scrPlaySong(global.song);
		room_goto(global.next);
	}
}
draw_set_blend_mode(bm_subtract);
alpha3 = alpha1 * 2;
if alpha3 > 1 
	alpha3 = 1;
if alpha1 > 1 
	alpha1 = 1;
draw_rectangle_color(0,0,640,320,merge_color(c_black,c_white,alpha1),merge_color(c_black,c_white,alpha3),merge_color(c_black,c_white,alpha3),merge_color(c_black,c_white,alpha1), 0);
draw_set_blend_mode(bm_normal);
}
