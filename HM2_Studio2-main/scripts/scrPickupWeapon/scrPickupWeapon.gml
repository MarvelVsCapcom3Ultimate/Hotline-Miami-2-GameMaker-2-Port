function scrPickupWeapon() {
	global.test=0
	objPlayer.image_xscale=4
	objPlayer.image_yscale=4
	with objWeapon {
	if place_meeting(x,y,objPlayer) {
	if global.test=0 {
	if objPlayer.object_index=objWriter {
	if objPlayer.kills<2 and (object_index=objKnife or object_index=objButterfly) nothing=1 else {
	scrPlayerGetWeapon(objPlayer.object_index,object_index,ammo)
	instance_destroy()
	global.test=1
	}
	} else {
	scrPlayerGetWeapon(objPlayer.object_index,object_index,ammo)
	instance_destroy()
	global.test=1
	}

	}
	}
	}
	objPlayer.image_xscale=1
	objPlayer.image_yscale=1
	if global.test=0 scrThrowWeapon()



}
