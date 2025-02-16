function scrEditorPlayLevel() {
	scrEditorCompileLevel(global.levelname+"1")
	scrEditorCompileTiles(global.levelname+"1")
	global.startx=room_width
	global.starty=room_height
	global.endx=0
	global.endy=0
	with objWall {
	if x<global.startx global.startx=x
	if y<global.starty global.starty=y
	if x>global.endx global.endx=x+sprite_width
	if y>global.endy global.endy=y+sprite_height
	}
	with objEditorEnemy {
	if x<global.startx global.startx=x
	if y<global.starty global.starty=y
	if x>global.endx global.endx=x+sprite_width
	if y>global.endy global.endy=y+sprite_height
	}
	with objEditorObjects {
	if x<global.startx global.startx=x
	if y<global.starty global.starty=y
	if x>global.endx global.endx=x+sprite_width
	if y>global.endy global.endy=y+sprite_height
	}
	with objEditorPlayer {
	if x<global.startx global.startx=x
	if y<global.starty global.starty=y
	if x>global.endx global.endx=x+sprite_width
	if y>global.endy global.endy=y+sprite_height
	}
	with objEditorCar {
	if x<global.startx global.startx=x
	if y<global.starty global.starty=y
	if x>global.endx global.endx=x+sprite_width
	if y>global.endy global.endy=y+sprite_height
	}
	global.startx=floor(global.startx*(1/32))*32
	global.starty=floor(global.starty*(1/32))*32
	global.endx=ceil(global.endx*(1/32))*32
	global.endy=ceil(global.endy*(1/32))*32

	myroom=room_duplicate(rmLevelTest)
	room_set_width(myroom,global.endx-global.startx+64)
	room_set_height(myroom,global.endy-global.starty+64)
	scrPlaySong(songfile[global.mysong])
	global.level=myroom
	room_instance_add(myroom,0,0,objLoadLevel)
	if global.player=0 room_instance_add(myroom,0,0,objMaskMenu)
	if global.player=4 room_instance_add(myroom,0,0,objSonStyleMenu)
	if global.player=6 room_instance_add(myroom,0,0,objCobraMaskMenu)

	global.title=global.levelname
	global.subtitle="NEW SCENE"

	room_goto(rmScene)



}
