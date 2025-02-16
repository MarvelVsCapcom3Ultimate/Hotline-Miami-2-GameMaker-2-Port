function scrQuerySelect(argument0, argument1, argument2) {
	if argument0=0 {
	if argument1=0 {
	with objEditor scrEditorClearLevel()
	instance_create(0,0,objSelectPlayer)
	}
	if argument1=4 {if argument2=0 {scrMusicClose() game_restart()}}
	}

	if argument0=3 {
	if argument1=0 {if argument2=0 {instance_create(0,0,objSelectPlayer)}}
	}

	if argument0=1 {
	if argument1=0 {with objEditor scrEditorClearTiles()}
	if argument1=1 {with objEditor scrEditorClearWalls()}
	if argument1=2 {with objEditor scrEditorClearObjects()}
	if argument1=3 {with objEditor scrEditorClearEnemies()}
	}

	instance_destroy()



}
