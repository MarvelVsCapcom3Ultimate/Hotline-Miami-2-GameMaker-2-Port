function scrGoGetWeapon() {
	test=0
	if instance_exists(objWeapon) {
	target=instance_nearest(x,y,objWeapon)
	seen=scrLook(target.x,target.y,4)
	if seen>0 and seen<2 nothing=1 else {
	if target.speed<2 { 
	test=1
	image_speed=0.2
	if seen=0 {
	path_end()
	direction=point_direction(x,y,target.x,target.y)
	speed=2.5
	}
	else {if path_index<=0 scrGoToExact(path,target.x,target.y)}
	if point_distance(x,y,target.x,target.y)<22 {
	scrEnemyGetWeapon(target.object_index)
	with target {sound_play(sndPickUpWeapon) instance_destroy()}
	}
	}
	}
	}
	if test=0 {
	dist=point_distance(x,y,objPlayer.x,objPlayer.y)
	if dist<64 {
	dir=point_direction(objPlayer.x,objPlayer.y,x,y)
	direction=dir-180
	scrMoveSolidOn()
	if place_free(x+lengthdir_x(1,dir),y) x+=lengthdir_x(1,dir)
	if place_free(x,y+lengthdir_y(1,dir)) y+=lengthdir_y(1,dir)
	scrMoveSolidOff()
	image_speed=0.1
	} else {image_speed=0 speed=0 direction=scrRotate(direction,point_direction(x,y,objPlayer.x,objPlayer.y),10)}
	}



}
