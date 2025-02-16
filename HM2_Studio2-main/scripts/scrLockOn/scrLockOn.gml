function scrLockOn() {
	var previousx,previousy;
	if instance_exists(global.enemy) {global.enemy=-1234} else {
	previousx=x
	previousy=y
	x=global.mousex
	y=global.mousey
	with objEnemy {
	if !instance_exists(global.enemy) {if place_meeting(x,y,objPlayer) global.enemy=id}
	}
	x=previousx
	y=previousy
	}



}
