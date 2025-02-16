function scrEGangStaticStep() {
	if scrIsUnarmed(sprite_index) {
	if path_index>=0 image_speed=path_speed*0.1 else image_speed=speed*0.1
	if !place_free(x+hspeed*4,y) hspeed=-hspeed
	if !place_free(x,y+vspeed*4) vspeed=-vspeed
	scrGoGetWeapon()
	} else {
	if alert=0 {if x=startx and y=starty nothing=1 else scrReturnToStart(path)}
	if alertwait>-1 {if alertwait=0 {path_end() alert=1} alertwait-=1}
	//if scrIsSearching(sprite_index) {image_speed=0.2 speed=0 exit}
	if path_position=1 {path_end() if alert=3 alert=0}
	if lookreload>0 lookreload-=1 else {
	seen=scrLook(objPlayer.x,objPlayer.y,12) 
	if seen=0 {path_end() alert=1}
	if seen=2 {path_end() alert=2}
	if seen==1 and alert>0 and alert<3 {chasereload=0 alert=3 scrChase(path,objPlayer.x,objPlayer.y)}
	lookreload=8
	}
	if instance_exists(objPlayerDead) {alert=0 findwall=1 path_end() speed=sign(speed)}
	if alert<2 and alert>0 scrCharge(objPlayer.x,objPlayer.y,10,4)
	if alert=2 scrEnemyAim(objPlayer.x,objPlayer.y,10,4)
	if alert=3 {if chasereload>0 chasereload-=1 else {
	chasereload=30 
	test=scrLook(objPlayer.x,objPlayer.y,12)
	if test=0 or test=2 {
	scrChase(path,objPlayer.x,objPlayer.y)
	}
	}
	}
	if path_index>=0 image_speed=path_speed*0.1 else image_speed=speed*0.1
	} 
	if scrIsShooting(sprite_index) image_speed=0.5
	scrMoveSolidOff()



}
