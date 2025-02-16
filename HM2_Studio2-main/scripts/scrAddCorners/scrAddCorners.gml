function scrAddCorners() {
	tile_layer_delete(-99)
	with objEditorWallH {
	if place_meeting(x,y,objWall) {my_tile=tile_add(tlCorners,0,0,8,8,x,y,-99) ds_list_add(objEditor.tilelist,my_tile)}
	if place_meeting(x+8,y-8,objWall) {my_tile=tile_add(tlCorners,0,0,8,8,x+32,y,-99) ds_list_add(objEditor.tilelist,my_tile)}
	if place_meeting(x,y-8,objWall) {my_tile=tile_add(tlCorners,0,0,8,8,x,y,-99) ds_list_add(objEditor.tilelist,my_tile)}

	if !place_meeting(x+8,y,objWall) and !place_meeting(x+8,y-8,objWall) {my_tile=tile_add(tlCorners,0,0,8,8,x+24,y,-99) ds_list_add(objEditor.tilelist,my_tile)}
	if !place_meeting(x-8,y,objWall) {my_tile=tile_add(tlCorners,0,0,8,8,x,y,-99) ds_list_add(objEditor.tilelist,my_tile)}
	}

	with objEditorWallV {
	if place_meeting(x-8,y,objWall) {my_tile=tile_add(tlCorners,0,0,8,8,x,y,-99) ds_list_add(objEditor.tilelist,my_tile)}

	if !place_meeting(x,y+8,objWall) and !place_meeting(x-8,y+8,objWall) {my_tile=tile_add(tlCorners,0,0,8,8,x,y+24,-99) ds_list_add(objEditor.tilelist,my_tile)}
	if !place_meeting(x,y-8,objWall) {my_tile=tile_add(tlCorners,0,0,8,8,x,y,-99) ds_list_add(objEditor.tilelist,my_tile)}
	}


	with objEditorBrickWallH {
	if place_meeting(x,y,objWall) {my_tile=tile_add(tlCorners,8,0,8,8,x,y,-99) ds_list_add(objEditor.tilelist,my_tile)}
	if place_meeting(x+8,y-8,objWall) {my_tile=tile_add(tlCorners,8,0,8,8,x+32,y,-99) ds_list_add(objEditor.tilelist,my_tile)}
	if place_meeting(x,y-8,objWall) {my_tile=tile_add(tlCorners,8,0,8,8,x,y,-99) ds_list_add(objEditor.tilelist,my_tile)}

	if !place_meeting(x+8,y,objWall) and !place_meeting(x+8,y-8,objWall) {my_tile=tile_add(tlCorners,8,0,8,8,x+24,y,-99) ds_list_add(objEditor.tilelist,my_tile)}
	if !place_meeting(x-8,y,objWall) {my_tile=tile_add(tlCorners,8,0,8,8,x,y,-99) ds_list_add(objEditor.tilelist,my_tile)}
	}

	with objEditorBrickWallV {
	if place_meeting(x-8,y,objWall) {my_tile=tile_add(tlCorners,8,0,8,8,x,y,-99) ds_list_add(objEditor.tilelist,my_tile)}

	if !place_meeting(x,y+8,objWall) and !place_meeting(x-8,y+8,objWall) {my_tile=tile_add(tlCorners,8,0,8,8,x,y+24,-99) ds_list_add(objEditor.tilelist,my_tile)}
	if !place_meeting(x,y-8,objWall) {my_tile=tile_add(tlCorners,8,0,8,8,x,y,-99) ds_list_add(objEditor.tilelist,my_tile)}
	}



}
