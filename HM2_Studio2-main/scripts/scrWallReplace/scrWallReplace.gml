function scrWallReplace() {
	//Clear duplicate walls
	with objWall {
	if object_index=objDinerWindowLeft or object_index=objDinerWindowRight or object_index=objDinerWindowTop or object_index=objDinerWindowBottom nothing=1 else {
	global.my_id=id
	global.myx=x
	global.myy=y
	with object_index {
	if id=global.my_id nothing=1 else {
	if x=global.myx and y=global.myy instance_destroy()
	}
	}
	}
	}

	//Expand neighbouring walls
	with objWall {
	if object_index=objDinerWindowLeft or object_index=objDinerWindowRight or object_index=objDinerWindowTop or object_index=objDinerWindowBottom nothing=1 else {
	if sprite_width=8 or sprite_height=8 {
	if sprite_width<sprite_height {
	if !place_meeting(x,y-8,object_index) {
	//image_blend=c_black
	i=0 
	while place_meeting(x,y+8+i*32,object_index) and i<39 {
	with instance_position(x,y+32+i*32,object_index) instance_destroy()
	i+=1
	}
	if i=1 mask_index=sprWallV64
	if i=2 mask_index=sprWallV96
	if i=3 mask_index=sprWallV128
	if i=4 mask_index=sprWallV160
	if i=5 mask_index=sprWallV192
	if i=6 mask_index=sprWallV224
	if i=7 mask_index=sprWallV256
	if i=8 mask_index=sprWallV288
	if i=9 mask_index=sprWallV320
	if i=10 mask_index=sprWallV352
	if i=11 mask_index=sprWallV384
	if i=12 mask_index=sprWallV416
	if i=13 mask_index=sprWallV448
	if i=14 mask_index=sprWallV480
	if i=15 mask_index=sprWallV512
	if i=16 mask_index=sprWallV544
	if i=17 mask_index=sprWallV576
	if i=18 mask_index=sprWallV608
	if i=19 mask_index=sprWallV640
	if i=20 mask_index=sprWallV672
	if i=21 mask_index=sprWallV704
	if i=22 mask_index=sprWallV736
	if i=23 mask_index=sprWallV768
	if i=24 mask_index=sprWallV800
	if i=25 mask_index=sprWallV832
	if i=26 mask_index=sprWallV864
	if i=27 mask_index=sprWallV896
	if i=28 mask_index=sprWallV928
	if i=29 mask_index=sprWallV960
	if i=30 mask_index=sprWallV992
	if i=31 mask_index=sprWallV1024
	if i=32 mask_index=sprWallV1056
	if i=33 mask_index=sprWallV1088
	if i=34 mask_index=sprWallV1120
	if i=35 mask_index=sprWallV1152
	if i=36 mask_index=sprWallV1184
	if i=37 mask_index=sprWallV1216
	if i=38 mask_index=sprWallV1248
	if i=39 mask_index=sprWallV1280
	}
	}

	if sprite_width>sprite_height {
	if !place_meeting(x-8,y,object_index) {
	//image_blend=c_black
	i=0 
	while place_meeting(x+8+i*32,y,object_index) and i<39 {

	with instance_position(x+32+i*32,y,object_index) instance_destroy()
	i+=1
	}
	if i=1 mask_index=sprWallH64
	if i=2 mask_index=sprWallH96
	if i=3 mask_index=sprWallH128
	if i=4 mask_index=sprWallH160
	if i=5 mask_index=sprWallH192
	if i=6 mask_index=sprWallH224
	if i=7 mask_index=sprWallH256
	if i=8 mask_index=sprWallH288
	if i=9 mask_index=sprWallH320
	if i=10 mask_index=sprWallH352
	if i=11 mask_index=sprWallH384
	if i=12 mask_index=sprWallH416
	if i=13 mask_index=sprWallH448
	if i=14 mask_index=sprWallH480
	if i=15 mask_index=sprWallH512
	if i=16 mask_index=sprWallH544
	if i=17 mask_index=sprWallH576
	if i=18 mask_index=sprWallH608
	if i=19 mask_index=sprWallH640
	if i=20 mask_index=sprWallH672
	if i=21 mask_index=sprWallH704
	if i=22 mask_index=sprWallH736
	if i=23 mask_index=sprWallH768
	if i=24 mask_index=sprWallH800
	if i=25 mask_index=sprWallH832
	if i=26 mask_index=sprWallH864
	if i=27 mask_index=sprWallH896
	if i=28 mask_index=sprWallH928
	if i=29 mask_index=sprWallH960
	if i=30 mask_index=sprWallH992
	if i=31 mask_index=sprWallH1024
	if i=32 mask_index=sprWallH1056
	if i=33 mask_index=sprWallH1088
	if i=34 mask_index=sprWallH1120
	if i=35 mask_index=sprWallH1152
	if i=36 mask_index=sprWallH1184
	if i=37 mask_index=sprWallH1216
	if i=38 mask_index=sprWallH1248
	if i=39 mask_index=sprWallH1280
	}
	}
	}
	}
	}

	with objWall {
	if mask_index<0 mask_index=sprite_index
	}



}
