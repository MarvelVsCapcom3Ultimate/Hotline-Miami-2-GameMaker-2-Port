function scrEGangPatrolMeleeStep() {
	/*if instance_exists(objPlayerDead) {
	if killed=1 {speed=0 if sprite_index=sprEGangIdleSmoke nothing=1 else {if !scrIsAttacking(sprite_index) {sprite_index=sprEGangIdleSmoke image_speed=0.125 image_index=0}} exit}
	}*/
	if scrIsUnarmed(sprite_index) {
	if path_index>=0 image_speed=path_speed*0.1 else image_speed=speed*0.1
	if !place_free(x+hspeed*4,y) hspeed=-hspeed
	if !place_free(x,y+vspeed*4) vspeed=-vspeed
	scrGoGetWeapon()
	} else {
	if alert=0 {
	scrPatrol()
	if instance_exists(objPlayerDead) {seen=1 alert=0}
	if alertwait>-1 {if alertwait=0 {path_end() alert=1} alertwait-=1}
	//if scrIsSearching(sprite_index) {image_speed=0.2 speed=0 exit}
	if path_position=1 {path_end()}
	if lookreload>0 lookreload-=1 else {
	seen=scrLook(objPlayer.x,objPlayer.y,12) 
	if seen=0 alert=1
	if seen=2 alert=2
	if seen==1 and alert>0 alert=3
	lookreload=15
	}
	if instance_exists(objPlayerDead) {alert=0 path_end()}
	}
	if instance_exists(objPlayerDead) {alert=0 path_end()}
	if alert<2 and alert>0 { 
	scrAttack(objPlayer.x,objPlayer.y,10,4)
	if reload>0 reload-=1 else {
	if point_distance(x,y,objPlayer.x,objPlayer.y)<22 {
	//if scrIsSearching(sprite_index) sprite_index=scrStopSearch(sprite_index)
	if !scrIsAttacking(sprite_index) {
	sound_play(choose(sndSwing1,sndSwing2))
	sprite_index=scrGetAttack(sprite_index)
	image_index=1
	reload=30
	image_speed=0.5
	}
	} 
	}
	}
	if alert=2 {scrChase(path,objPlayer.x,objPlayer.y) alert=3}
	if alert=3 {scrMeleeChaseSearch(objPlayer.x,objPlayer.y,4)}
	if path_index>=0 image_speed=path_speed*0.1 else image_speed=speed*0.1
	if scrIsAttacking(sprite_index) and !instance_exists(objPlayerDead) {
	angle=direction
	image_speed=0.5
	if place_meeting(x+lengthdir_x(8,angle),y+lengthdir_y(8,angle),objPlayer) or place_meeting(x,y,objPlayer) {
	global.my_id=id
	global.sprite=sprite_index
	with objPlayer scrPlayerDieMelee()
	killed=1
	speed=0
	}
	}

	} 
	scrMoveSolidOff()



}
