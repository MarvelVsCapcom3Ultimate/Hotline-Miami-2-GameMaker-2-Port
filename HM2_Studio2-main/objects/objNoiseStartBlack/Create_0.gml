draw_clear(c_black)
//screen_refresh()
//sleep_hack(1000)
sound_play(sndStatic)
d3d_set_projection_ortho(0, 0, __view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ), 0)
repeat (30) {
	nx =- round(random(32)) * 2;
	ny =- round(random(32))*2;
	nindex = floor(random(4));
	//draw_sprite_tiled_ext(sprStatic, nindex, nx, ny, 2, 2, c_white, 1);
	//screen_refresh()
	//sleep_hack(1000 / 30);
}
sound_stop(sndStatic);
d3d_set_projection_ortho(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 ),__view_get( e__VW.Angle, 0 ))
if (room == rmCopApartment3Floor2Part2)
{
	scrPlaySong(Interlude);
}

