function scrEditorLoadLevel(argument0) {
	scrEditorClearLevel()
	scrEditorLoadTiles(argument0+".hlm")
	scrEditorLoadObjects(argument0+".hlm")
	scrEditorLoadWalls(argument0+".hlm")
	scrEditorLoadData(argument0+".hlm")
	scrEditorEnemiesAvailable(global.player)



}
