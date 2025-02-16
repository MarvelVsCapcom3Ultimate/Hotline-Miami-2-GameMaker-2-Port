if (instance_number(objEnemy) + instance_number(objKnockedOut) + instance_number(objGeneral) + instance_number(objSquadFat2Idle) == 0) 
{
	index = 0;
	if (y < 30) 
		index=1
	if (y > room_height - 30) 
		index = 3
	if (x > room_width - 30) 
		index = 0
	if (x < 30) 
		index = 2
	if (index = 2 || index = 0) 
	{
		addx = lengthdir_x(2, dir);
		addy = 0;
	} 
	else 
	{
		addx = 0;
		addy = lengthdir_x(2, dir);
	}
	dir += 8;
	draw_sprite_ext(sprGoArrow, index, x + addx, y + addy, 1, 1, 0, c_white, 1);
}
