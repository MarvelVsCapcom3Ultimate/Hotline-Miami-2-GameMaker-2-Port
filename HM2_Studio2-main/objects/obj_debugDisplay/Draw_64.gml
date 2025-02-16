///@description draw over fucking EVERYTHING
if (enable)
{
	draw_set_alpha(0.7);
	draw_set_font(fnt_debug);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_roundrect_color(10, 10, 260, 110, c_black, c_black, false);
	draw_set_alpha(1);
	draw_set_color(c_white);
	draw_text(15, 15, "Melia's fucked up debug display");
	//level stuff
	if (room == rmFansLevel1Floor1)
	{
		draw_text(15, 35, "global.killamount: " + string(global.killamount));
		draw_text(15, 55, "objEffector.roomkills: " + string(objEffector.roomkills));
		draw_text(15, 75, "objEffector.killamount: " + string(objEffector.killamount));
	}
}