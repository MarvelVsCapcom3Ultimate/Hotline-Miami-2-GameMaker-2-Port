function scrAddCollisionCorners() {
	with objEditorWallH {
	//if place_meeting(x,y,objWall) {my_id=instance_create(x,y,objWallCorner) }
	if place_meeting(x+8,y-8,objWall) {my_id=instance_create(x+32,y,objWallCorner) }
	}///REMOVE
	/*if place_meeting(x,y-8,objWall) {my_id=instance_create(x,y,objWallCorner) }

	if !place_meeting(x+8,y,objWall) and !place_meeting(x+8,y-8,objWall) {my_id=instance_create(x+24,y,objWallCorner) }
	if !place_meeting(x-8,y,objWall) {my_id=instance_create(x,y,objWallCorner) }
	}

	with objEditorWallV {
	if place_meeting(x-8,y,objWall) {my_id=instance_create(x,y,objWallCorner) }

	if !place_meeting(x,y+8,objWall) and !place_meeting(x-8,y+8,objWall) {my_id=instance_create(x,y+24,objWallCorner) }
	if !place_meeting(x,y-8,objWall) {my_id=instance_create(x,y,objWallCorner) }
	}

	*/
	with objEditorBrickWallH {
	//if place_meeting(x,y,objWall) {my_id=instance_create(x,y,objBrickWallCorner) }
	if place_meeting(x+8,y-8,objWall) {my_id=instance_create(x+32,y,objBrickWallCorner) }
	}///REMOVE
	/*if place_meeting(x,y-8,objWall) {my_id=instance_create(x,y,objBrickWallCorner) }

	if !place_meeting(x+8,y,objWall) and !place_meeting(x+8,y-8,objWall) {my_id=instance_create(x+24,y,objBrickWallCorner) }
	if !place_meeting(x-8,y,objWall) {my_id=instance_create(x,y,objBrickWallCorner) }
	}

	with objEditorBrickWallV {
	if place_meeting(x-8,y,objWall) {my_id=instance_create(x,y,objBrickWallCorner) }

	if !place_meeting(x,y+8,objWall) and !place_meeting(x-8,y+8,objWall) {my_id=instance_create(x,y+24,objBrickWallCorner) }
	if !place_meeting(x,y-8,objWall) {my_id=instance_create(x,y,objBrickWallCorner) }
	}*/

	with objSewerWallH {
	//if place_meeting(x,y,objWall) {my_id=instance_create(x,y,objWallCorner) }
	if place_meeting(x+8,y-8,objWall) {my_id=instance_create(x+32,y,objWallCorner) }
	}



}
