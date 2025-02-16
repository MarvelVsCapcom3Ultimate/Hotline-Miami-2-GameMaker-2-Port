function scrTopMenuSelect(argument0, argument1) {
	//FILE

	if argument0=0 {
	if argument1=4 {my_id=instance_create(x,y,objQuery) my_id.choice1=select my_id.choice2=mselect my_id.query="UNSAVED CHANGES WILL BE LOST!#ARE YOU SURE YOU WANT TO QUIT?"}
	if argument1=0 {my_id=instance_create(x,y,objQuery) my_id.choice1=select my_id.choice2=mselect my_id.query="UNSAVED CHANGES WILL BE LOST!#DO YOU WANT TO SAVE NOW?"}
	if argument1=1 {
	with objEditor {
	myfile=get_save_filename("HOTLINE FILES|*.hlm",global.levelname+".hlm") 
	if myfile="" nothing=1 else scrEditorSaveLevel(string_replace(myfile,".hlm",""))
	}
	}
	if argument1=2 {
	with objEditor {
	myfile=get_open_filename("HOTLINE FILES|*.hlm","")
	if myfile="" nothing=1 else scrEditorLoadLevel(string_replace(myfile,".hlm",""))
	}
	}
	if argument1=3 {
	if (!instance_exists(objEditorPlayer) and objEditor.player[global.player]>0) or (!instance_exists(objEditorCar) and objEditor.car[global.player]>0) {
	my_id=instance_create(x,y,objQuery) my_id.choice1=select my_id.choice2=mselect my_id.query="CAN'T RUN LEVEL!"
	if objEditor.player[global.player]>0 and !instance_exists(objEditorPlayer) my_id.query+="#-No player object detected!"
	if objEditor.car[global.player]>0 and !instance_exists(objEditorCar) my_id.query+="#-No player vehicle detected!"
	} else {with objEditor scrEditorPlayLevel()}
	}
	}
	//EDIT
	if argument0=1 {
	if argument1=0 {my_id=instance_create(x,y,objQuery) my_id.choice1=select my_id.choice2=mselect my_id.query="ARE YOU SURE YOU WANT TO#CLEAR ALL TILES?"}
	if argument1=1 {my_id=instance_create(x,y,objQuery) my_id.choice1=select my_id.choice2=mselect my_id.query="ARE YOU SURE YOU WANT TO#CLEAR ALL WALLS?"}
	if argument1=2 {my_id=instance_create(x,y,objQuery) my_id.choice1=select my_id.choice2=mselect my_id.query="ARE YOU SURE YOU WANT TO#CLEAR ALL OBJECTS?"}
	if argument1=3 {my_id=instance_create(x,y,objQuery) my_id.choice1=select my_id.choice2=mselect my_id.query="ARE YOU SURE YOU WANT TO#CLEAR ALL ENEMIES?"}
	}
	//SETTINGS
	if argument0=3 {
	if argument1=0 {my_id=instance_create(x,y,objQuery) my_id.choice1=select my_id.choice2=mselect my_id.query="WARNING!##SWITCHING PLAYER CHARACTER WILL#ERASE ALL EXISTING ENEMIES#FROM LEVEL!##PROCEED ANYWAY?"}
	if argument1=2 {with objEditor gridon=!gridon}
	}

	//HELP
	if argument0=4 {
	if argument1=0 {my_id=instance_create(x,y,objQuery) my_id.option[0]="OKAY" my_id.choice1=-1 my_id.choice2=-1 my_id.options=1 my_id.query="HOTLINE EDITOR##HOTLINE EDITOR allows you to easily create new content#for the game Hotline Miami 2.##Please consult the manual if you need help#getting started with HOTLINE EDITOR.##HOTLINE EDITOR created by Dennaton and Abstraction Games."}
	}



}
