function scrSoldierFatKnifeStep() {
	if sprite_index=sprFatSoldierDying or sprite_index=sprFatSoldierDyingSniper or sprite_index=sprEMafiaFatDie or sprite_index=sprFatPoliceDying or sprite_index=sprEGangFatDie {
	if image_index<sprite_get_number(sprite_index)-1 image_index+=0.2 else {
	my_id=instance_create(x,y,objDeadBody)
	if sprite_index=sprFatSoldierDying or sprite_index=sprFatSoldierDyingSniper my_id.sprite_index=sprFatSoldierDead
	if sprite_index=sprFatPoliceDying my_id.sprite_index=sprFatPoliceDead
	if sprite_index=sprEGangFatDie my_id.sprite_index=sprEGangFatDead
	if sprite_index=sprEMafiaFatDie my_id.sprite_index=sprEMafiaFatDead
	my_id.image_angle=direction
	if shotgun=0 my_id.image_index=choose(1,2,3)
	if sprite_index=sprFatSoldierDyingSniper my_id.image_index=4
	instance_destroy()
	}
	speed=0
	path_speed=0
	path_end()
	exit
	}

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
	sound_play(choose(sndSwing1,sndSwing2))
	//if scrIsSearching(sprite_index) sprite_index=scrStopSearch(sprite_index)
	if !scrIsAttacking(sprite_index) {
	sprite_index=scrGetAttack(sprite_index)
	image_index=1
	image_speed=0.5
	reload=30
	}
	} 
	}
	}
	if alert=2 {scrChase(path,objPlayer.x,objPlayer.y) alert=3}
	if alert=3 {scrMeleeChaseSearch(objPlayer.x,objPlayer.y,4)}
	if path_index>=0 image_speed=path_speed*0.1 else image_speed=speed*0.1

	if scrIsAttacking(sprite_index) {
	angle=direction
	image_speed=0.5
	if place_meeting(x+lengthdir_x(8,angle),y+lengthdir_y(8,angle),objPlayer) or place_meeting(x,y,objPlayer) {
	if objPlayer.object_index=objPlayerDead nothing=1 else {
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
