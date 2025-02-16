d3d_set_projection_ortho(0,0,__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 ),0)
draw_set_blend_mode(bm_subtract)
draw_rectangle_color(0,0,640,480,c_black,c_black,c_white,c_white,0)
draw_set_blend_mode(bm_normal)
/*draw_surface_ext(surf1,1,0,1,1,0,c_black,1)
draw_surface_ext(surf1,0,1,1,1,0,c_black,1)
draw_surface_ext(surf1,0,-1,1,1,0,c_black,1)
draw_surface_ext(surf1,-1,0,1,1,0,c_black,1)*/
draw_set_blend_mode(bm_subtract)
color1=merge_color(c_lime,c_yellow,0.5+lengthdir_x(0.5,dir*0.5))
color2=merge_color(c_lime,c_yellow,0.5+lengthdir_x(0.5,dir*0.6))
color3=merge_color(merge_color(c_teal,c_maroon,0.5+lengthdir_x(0.5,dir)),c_black,0.5+lengthdir_x(0.5,dir*0.5))
color4=merge_color(merge_color(c_teal,c_maroon,0.5+lengthdir_x(0.5,dir*1.2)),c_black,0.5+lengthdir_x(0.5,dir*0.5+45))
draw_surface_general(surf1,0,0,640,320,0,0,1,1,0,color1,color2,color3,color4,1)
draw_set_blend_mode(bm_normal)
d3d_set_projection_ortho(0,0,__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 ),lengthdir_x(2,dir*0.1))
draw_surface_ext(surf2,1,0,1,1,0,c_black,1)
draw_surface_ext(surf2,0,1,1,1,0,c_black,1)
draw_surface_ext(surf2,0,-1,1,1,0,c_black,1)
draw_surface_ext(surf2,-1,0,1,1,0,c_black,1)
draw_surface_ext(surf2,0,0,1,1,0,c_white,1)
d3d_set_projection_ortho(0,0,__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 ),0)
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
draw_set_blend_mode(bm_add)
if alpha2<1 alpha2+=0.01 
if alpha2>=1 alpha2=1
alpha3=alpha2*2
if alpha3>1 alpha3=1
draw_circle_color(room_width/2,room_height/2,room_width*0.74,merge_color(c_black,c_white,alpha2),merge_color(c_black,c_white,alpha3),0)
draw_set_blend_mode(bm_normal)

if alpha2>=1 
{
	if alpha1<1 
	{
		alpha1+=0.02 
		if alpha1>1 
		alpha1=1 
		if (select=0 || select=2 || select=3) 
			scrSongVolume(1 - alpha1)
	} 
	else 
	{
		if select=0 
		{
			scrPlaySong(Detection); 
			room_goto(rmIntro);
		} 
		if select=1 
			room_goto(rmLevelSelect);
		if select=2 
		{
			audio_stop_sound(global.currentsong);
			global.level =- 1234;
			room_goto(rmEditor);
		}
		if select=3 
		{
			audio_stop_sound(global.currentsong); 
			scrMusicClose(); 
			game_end();
		}
	}
}
draw_set_blend_mode(bm_subtract);
alpha3 = alpha1 * 2;

if alpha3>1 
	alpha3=1;
if alpha1>1 
	alpha1=1;
	
draw_rectangle_color(0, 0, 640, 320, merge_color(c_black, c_white, alpha1), merge_color(c_black, c_white, alpha3), merge_color(c_black,c_white,alpha3),merge_color(c_black,c_white,alpha1),0)
draw_set_blend_mode(bm_normal)
}