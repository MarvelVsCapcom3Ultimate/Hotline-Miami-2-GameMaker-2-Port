function scrInitPathFinding() {
	global.grid=mp_grid_create(0,0,room_width/16,room_height/16,16,16)
	mp_grid_add_instances(global.grid,objWall,1)

	/*mp_grid_add_instances(global.grid,objEditorBrickWallH,1)
	mp_grid_add_instances(global.grid,objEditorBrickWallV,1)
	mp_grid_add_instances(global.grid,objEditorWallH,1)
	mp_grid_add_instances(global.grid,objEditorWallV,1)
	mp_grid_add_instances(global.grid,objEditorPorchWallH,1)
	mp_grid_add_instances(global.grid,objEditorPorchWallV,1)
	mp_grid_add_instances(global.grid,objEditorWallV,1)
	mp_grid_add_instances(global.grid,objWoodWallH,1)
	mp_grid_add_instances(global.grid,objWoodWallV,1)
	mp_grid_add_instances(global.grid,objWoodWallInteriorH,1)
	mp_grid_add_instances(global.grid,objWoodWallInteriorV,1)
	mp_grid_add_instances(global.grid,objEditorSoftWallH,1)
	mp_grid_add_instances(global.grid,objEditorSoftWallV,1)
	*/
	mp_grid_add_instances(global.grid,objElevator,1)
	mp_grid_add_instances(global.grid,objEditorWindowLeft,1)
	mp_grid_add_instances(global.grid,objEditorWindowRight,1)
	mp_grid_add_instances(global.grid,objEditorWindowUp,1)
	mp_grid_add_instances(global.grid,objEditorWindowDown,1)
	mp_grid_add_instances(global.grid,objFurniture,1)
	mp_grid_add_instances(global.grid,objSolid,1)
	mp_grid_add_instances(global.grid,objGlassPanel,1)
	//mp_grid_add_instances(global.grid,objGlassPanelH,1)
	//mp_grid_add_instances(global.grid,objGlassPanelV,1)

	with objEditorDoorV {
	if solid=1 mp_grid_add_instances(global.grid,id,1)
	}
	with objEditorDoorH {
	if solid=1 mp_grid_add_instances(global.grid,id,1)
	}

	//scrInitSecondPath()
	//show_message("Path Initialized")



}
