function scrInitSecondPath() {
	global.findgrid=mp_grid_create(0,0,room_width/8,room_height/8,8,8)
	mp_grid_add_instances(global.findgrid,objWall,1)
	/*mp_grid_add_instances(global.findgrid,objEditorBrickWallH,1)
	mp_grid_add_instances(global.findgrid,objEditorBrickWallV,1)
	mp_grid_add_instances(global.findgrid,objEditorWallH,1)
	mp_grid_add_instances(global.findgrid,objEditorWallV,1)
	mp_grid_add_instances(global.findgrid,objEditorPorchWallH,1)
	mp_grid_add_instances(global.findgrid,objEditorPorchWallV,1)
	mp_grid_add_instances(global.findgrid,objEditorWallV,1)
	mp_grid_add_instances(global.findgrid,objWoodWallH,1)
	mp_grid_add_instances(global.findgrid,objWoodWallV,1)
	mp_grid_add_instances(global.findgrid,objWoodWallInteriorH,1)
	mp_grid_add_instances(global.findgrid,objWoodWallInteriorV,1)
	mp_grid_add_instances(global.findgrid,objEditorSoftWallH,1)
	mp_grid_add_instances(global.findgrid,objEditorSoftWallV,1)
	*/
	mp_grid_add_instances(global.findgrid,objEditorWindowLeft,1)
	mp_grid_add_instances(global.findgrid,objEditorWindowRight,1)
	mp_grid_add_instances(global.findgrid,objEditorWindowUp,1)
	mp_grid_add_instances(global.findgrid,objEditorWindowDown,1)
	mp_grid_add_instances(global.findgrid,objFurniture,1)
	mp_grid_add_instances(global.findgrid,objSolid,1)
	mp_grid_add_instances(global.findgrid,objGlassPanel,1)
	//mp_grid_add_instances(global.findgrid,objGlassPanelH,1)
	//mp_grid_add_instances(global.findgrid,objGlassPanelV,1)

	with objEditorDoorV {
	if solid=1 mp_grid_add_instances(global.findgrid,id,1)
	}
	with objEditorDoorH {
	if solid=1 mp_grid_add_instances(global.findgrid,id,1)
	}

	//show_message("Path Initialized")



}
