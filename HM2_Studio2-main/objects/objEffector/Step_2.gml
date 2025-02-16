if (fade == true) 
{
	if (amount > 0)  
	{
		if (amount > 0) 
		{
			amount -= 15;
		}
		if (instance_exists(objHenchmanDie)) 
		{
			if (objHenchmanDie.done > 0)
				amount += 14.5;
		}
	} 
	else 
	{
		fade = false; 
		if (restart == true) 
		{
			scrStopSong(); 
			scrMusicClose(); 
			if (file_exists(working_directory+"\\restartmusic")) 
				file_delete(working_directory+"\\restartmusic");
			scrClearBlood(); 
			game_restart();
		} 
		else 
		{
			if (next == true) 
			{
				if (newsong == true) 
				{
					bgm_Stop(global.currentsong); 
					scrPlaySong(song); 
					scrSongVolume(1);
				} 
				if (stopsong == true) 
					bgm_Stop(global.currentsong); 
				fade = false;
				amount = 180;
				scrSaveBlood();
				scrResetActiveSurfaces();
				room=nextroom;
			} 
			else 
				game_load(working_directory+"\\tempsave.sav");
		}
	}
}

if (room == rmTutorialFloor1) 
{
	if (clear == false) 
	{
		if ((instance_number(objEnemy) + instance_number(objKnockedOut)) == 0)
		{
			instance_create(320, 180, objFloorCleared);
			clear = true;
		}
	}
}

if (global.shake > 0)
{
	global.shake -= 0.2;
	__view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) + (-global.shake*0.33+random(global.shake*0.66)));
	__view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) + (-global.shake*0.33+random(global.shake*0.66)));
}


/*with objPlayer {
scrAim()
}*/

//scrLevelClear()
if (global.killamount == roomkills && !clear)
{
	clear = true;
	instance_create_depth(x, y, 999, objFloorCleared);
}
