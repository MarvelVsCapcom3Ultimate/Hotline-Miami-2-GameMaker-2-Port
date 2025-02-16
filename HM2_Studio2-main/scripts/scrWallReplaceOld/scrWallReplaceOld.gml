function scrWallReplaceOld() {
	with objWall {
	mask_index=sprite_index
	global.my_id=id
	global.myx=x
	global.myy=y
	with object_index {
	if id=global.my_id nothing=1 else {
	if x=global.myx and y=global.myy instance_destroy()
	}
	}
	}

	with objEditorWallV {
	if !place_meeting(x,y-8,object_index) {
	//image_blend=c_black
	i=0 
	while place_meeting(x,y+8+i*32,object_index) and i<13 {
	with instance_position(x,y+32+i*32,object_index) instance_destroy()
	i+=1
	}
	if i=1 sprite_index=sprWallV64
	if i=2 sprite_index=sprWallV96
	if i=3 sprite_index=sprWallV128
	if i=4 sprite_index=sprWallV160
	if i=5 sprite_index=sprWallV192
	if i=6 sprite_index=sprWallV224
	if i=7 sprite_index=sprWallV256
	if i=8 sprite_index=sprWallV288
	if i=9 sprite_index=sprWallV320
	if i=10 sprite_index=sprWallV352
	if i=11 sprite_index=sprWallV384
	if i=12 sprite_index=sprWallV416
	if i=13 sprite_index=sprWallV448
	}
	}

	with objEditorWallH {
	if !place_meeting(x-8,y,object_index) {
	//image_blend=c_black
	i=0 
	while place_meeting(x+8+i*32,y,object_index) and i<13 {

	with instance_position(x+32+i*32,y,object_index) instance_destroy()
	i+=1
	}
	if i=1 sprite_index=sprWallH64
	if i=2 sprite_index=sprWallH96
	if i=3 sprite_index=sprWallH128
	if i=4 sprite_index=sprWallH160
	if i=5 sprite_index=sprWallH192
	if i=6 sprite_index=sprWallH224
	if i=7 sprite_index=sprWallH256
	if i=8 sprite_index=sprWallH288
	if i=9 sprite_index=sprWallH320
	if i=10 sprite_index=sprWallH352
	if i=11 sprite_index=sprWallH384
	if i=12 sprite_index=sprWallH416
	if i=13 sprite_index=sprWallH448
	}
	}


	with objEditorBrickWallV {
	if !place_meeting(x,y-8,object_index) {
	//image_blend=c_black
	i=0 
	while place_meeting(x,y+8+i*32,object_index) and i<13 {

	with instance_position(x,y+32+i*32,object_index) instance_destroy()
	i+=1
	}
	if i=1 sprite_index=sprBrickWallV64
	if i=2 sprite_index=sprBrickWallV96
	if i=3 sprite_index=sprBrickWallV128
	if i=4 sprite_index=sprBrickWallV160
	if i=5 sprite_index=sprBrickWallV192
	if i=6 sprite_index=sprBrickWallV224
	if i=7 sprite_index=sprBrickWallV256
	if i=8 sprite_index=sprBrickWallV288
	if i=9 sprite_index=sprBrickWallV320
	if i=10 sprite_index=sprBrickWallV352
	if i=11 sprite_index=sprBrickWallV384
	if i=12 sprite_index=sprBrickWallV416
	if i=13 sprite_index=sprBrickWallV448
	}
	}

	with objEditorBrickWallH {
	if !place_meeting(x-8,y,object_index) {
	//image_blend=c_black
	i=0 
	while place_meeting(x+8+i*32,y,object_index) and i<13 {

	with instance_position(x+32+i*32,y,object_index) instance_destroy()
	i+=1
	}
	if i=1 sprite_index=sprBrickWallH64
	if i=2 sprite_index=sprBrickWallH96
	if i=3 sprite_index=sprBrickWallH128
	if i=4 sprite_index=sprBrickWallH160
	if i=5 sprite_index=sprBrickWallH192
	if i=6 sprite_index=sprBrickWallH224
	if i=7 sprite_index=sprBrickWallH256
	if i=8 sprite_index=sprBrickWallH288
	if i=9 sprite_index=sprBrickWallH320
	if i=10 sprite_index=sprBrickWallH352
	if i=11 sprite_index=sprBrickWallH384
	if i=12 sprite_index=sprBrickWallH416
	if i=13 sprite_index=sprBrickWallH448
	}
	}



}
