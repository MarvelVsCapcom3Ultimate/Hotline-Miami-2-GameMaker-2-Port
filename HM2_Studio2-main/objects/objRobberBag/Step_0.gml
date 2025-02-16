if (state == 0) 
{
	if (objPlayer.x > 32)
	{
		state = 1;
		legindex = random(12);
	}
}

if (state == 1)
{
	if (!place_meeting(x+3, y, objPlayer)) 
	{
		if (x < 768)
		{
			x += 1.5; 
			image_index += 0.1;
			legindex += 0.2;
			image_angle = 0;
		} 
		else
			state = 2;
		if (x > 64 && y > 304) 
		{
			y -= 0.5;
			image_angle = 22.5;
		}
	}
}

if (state == 2) 
{
	image_angle = scrRotate(image_angle, 270, 10);
	image_index = 0;
	legindex = 0;
	if (image_angle == 270) 
		state = 3;
}

if (state == 4) 
{
	if (wait > 0) 
		wait -= 1; 
	else 
	{
		sprite_index = sprRobberPutOnMask;
		with (objBanker) 
			state = 1;
		if (image_index < 9) 
			image_index += 0.15;
		else 
		{
			state = 5; 
			wait = 20;
		}
	}
}

if (state == 5) 
{
	if (wait > 0) 
		wait -= 1;
	else 
	{
		sprite_index = sprRobberWalkUnarmed;
		target = instance_nearest(x, y, objShotgun);
		if (instance_exists(target))
		{
			if (point_distance(x, y, target.x, target.y) > 16) 
			{
				mydir = point_direction(x, y, target.x, target.y);
				x += lengthdir_x(3, mydir);
				y += lengthdir_y(3, mydir);
				image_index += 0.15;
				legindex += 0.3;
				image_angle = mydir;
			} 
			else 
			{
				with (target) 
					instance_destroy();
				sound_play(sndPickUpWeapon);
				sprite_index = sprRobberWalkShotgun;
				state = 6;
			}
		}
	}
	if (wait == 1) 
		scrPlaySong(AcidSpit);
}

if (state == 6)
{
	scrGoToExactSpeed(path, 864, 0, 3);
	solid = false;
	state = 7;
	objPlayer.alarm[0] = 1;
	global.style = 3;
	objPlayer.style = 3;
}

if (state == 7)
{
	if instance_exists(objRobber) 
	{
		if (objRobber.sprite_index == sprRobberWalkUzi && chase == false) 
		{
			chase = true;
			objPlayer.active = true; 
			objPlayer.aimon = true; 
			with (objEnemy) 
			{
				if (go == true) 
					scrChase(path, objPlayer.x, objPlayer.y);
			}
		}
	}
	image_index += 0.15;
	legindex += 0.3;
	image_angle = direction;
	if (y = 0) 
		instance_destroy();
}
