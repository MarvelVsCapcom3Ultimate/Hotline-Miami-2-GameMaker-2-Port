with all 
	persistent = false;
global.lastroom = room;
global.paused = 1;
room_persistent = 1;
sound_stop(sndPlay);
sound_play(sndPause);
bgm_Pause(global.currentsong);
screen_save(working_directory + "\\pause.bmp");
global.sprite = sprite_add(working_directory+"\\pause.bmp", 0, 0, 0, 0, 1);
file_delete(working_directory + "\\pause.bmp");
room = rmPause;
scrSaveBlood();
scratch = 100;
global.editor = false;
if instance_exists(objLoadLevel) 
	global.editor = true;

