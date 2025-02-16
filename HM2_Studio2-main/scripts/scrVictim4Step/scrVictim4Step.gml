function scrVictim4Step() {
	if chasereload>0 chasereload-=1
	if punches=0 {
	if image_speed=0 or sprite_index=sprVictim4Walk {
	dist=point_distance(x,y,objPlayer.x,objPlayer.y)
	if dist<64 {
	dir=point_direction(objPlayer.x,objPlayer.y,x,y)
	direction=dir-180
	if place_free(x+lengthdir_x(1,dir),y) x+=lengthdir_x(1,dir)
	if place_free(x,y+lengthdir_y(1,dir)) y+=lengthdir_y(1,dir)
	sprite_index=sprVictim4Walk
	image_speed=0.1
	} else {image_speed=0 speed=0 direction=scrRotate(direction,point_direction(x,y,objPlayer.x,objPlayer.y),10)}
	}
	exit
	}


	seen=scrLook(objPlayer.x,objPlayer.y,4)
	if seen=0 {
	if point_distance(x,y,objPlayer.x,objPlayer.y)>28 {sprite_index=sprVictim4Walk motion_add(point_direction(x,y,objPlayer.x,objPlayer.y),0.25)} else {
	speed=0
	path_end()
	if reload>0 reload-=1 else {
	if punches>0 {
	direction=point_direction(x,y,objPlayer.x,objPlayer.y)
	sprite_index=sprVictim4Punch
	image_speed=0.25
	reload=30
	sound_play(choose(sndSwing1,sndSwing2))
	sound_play(sndPunch)
	objPlayer.lastsprite=objPlayer.sprite_index
	objPlayer.sprite_index=sprPigStunned
	objPlayer.active=0
	objPlayer.image_speed=0.25
	objPlayer.image_index=0
	}
	}
	}
	}
	if seen=2 or seen=1 {
	if point_distance(x,y,objPlayer.x,objPlayer.y)>28 or seen=1 {if chasereload=0 {chasereload=15 scrChase(path,objPlayer.x,objPlayer.y)}} else {
	speed=0
	path_end()
	if reload>0 reload-=1 else {
	if punches>0 {
	direction=point_direction(x,y,objPlayer.x,objPlayer.y)
	sprite_index=sprVictim4Punch
	image_speed=0.25
	reload=30
	sound_play(choose(sndSwing1,sndSwing2))
	sound_play(sndPunch)
	objPlayer.lastsprite=objPlayer.sprite_index
	objPlayer.sprite_index=sprPigStunned
	objPlayer.active=0
	objPlayer.image_speed=0.25
	objPlayer.image_index=0
	}
	}
	}
	}

	if speed>2.5 speed=2.5
	if path_index>0 image_speed=path_speed*0.1 else image_index+=speed*0.1



}
