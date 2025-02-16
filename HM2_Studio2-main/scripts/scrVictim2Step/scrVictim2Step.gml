function scrVictim2Step() {
	if chasereload>0 chasereload-=1
	seen=scrLook(objPlayer.x,objPlayer.y,4)
	if seen>0 and seen<2 {
	if alert=0 nothing=1
	if alert=1 {dir=direction if chasereload=0 {chasereload=15 scrChase(path,objPlayer.x,objPlayer.y)}}
	} else {
	on=1
	}

	if on=1 {
	dir=direction
	if sprite_index=sprVictim2Idle or sprite_index=sprVictim2Walk {
	if instance_exists(objBat) {
	sprite_index=sprVictim2Walk
	image_speed=0.2
	direction=point_direction(x,y,objBat.x,objBat.y)
	speed=2.5
	if point_distance(x,y,objBat.x,objBat.y)<22 {
	with objBat instance_destroy()
	sprite_index=sprVictim2WalkBat
	}
	} else {
	dist=point_distance(x,y,objPlayer.x,objPlayer.y)
	if dist<64 {
	dir=point_direction(objPlayer.x,objPlayer.y,x,y)
	direction=dir-180
	if place_free(x+lengthdir_x(1,dir),y) x+=lengthdir_x(1,dir)
	if place_free(x,y+lengthdir_y(1,dir)) y+=lengthdir_y(1,dir)
	sprite_index=sprVictim2Walk
	image_speed=0.1
	} else {image_speed=0 speed=0 direction=scrRotate(direction,point_direction(x,y,objPlayer.x,objPlayer.y),10)}
	}
	}
	if sprite_index=sprVictim2WalkBat {
	alert=1
	if seen=0 motion_add(point_direction(x,y,objPlayer.x,objPlayer.y),0.25)
	if seen=2 if chasereload=0 {chasereload=15 scrChase(path,objPlayer.x,objPlayer.y)}
	if speed>2.5 speed=2.5
	if point_distance(x,y,objPlayer.x,objPlayer.y)<26 and !instance_exists(objPlayerDead) {
	sprite_index=sprVictim2AttackBat
	image_index=4
	image_speed=0.35
	global.my_id=id
	global.sprite=sprite_index
	with objPlayer scrPlayerDieMelee()
	} else {if path_index>0 image_speed=path_speed*0.1 else image_speed=speed*0.1}
	}
	}



}
