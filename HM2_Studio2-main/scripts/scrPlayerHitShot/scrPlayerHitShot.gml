function scrPlayerHitShot() {
	global.test=0
	with other {
	if place_meeting(x,y,objWall) or place_meeting(x,y,objSolid) {
	addx=lengthdir_x(4,direction-180)
	addy=lengthdir_y(4,direction-180)
	while place_meeting(x,y,objWall) or place_meeting(x,y,objSolid) {
	x+=addx
	y+=addy
	}
	if place_meeting(x,y,objPlayer) global.test=1
	} else global.test=1
	}
	with other instance_destroy()
	if global.test=1 {
	global.my_id=id
	bullets=0
	with objBullet {
	if place_meeting(x,y,global.my_id) {
	global.my_id.bullets+=1
	my_id=instance_create(x,y,objSmokeHit)
	my_id.color1=c_red
	my_id.color2=c_maroon
	my_id.image_angle=image_angle
	my_id.direction=image_angle
	my_id.speed=random(1)
	instance_destroy()
	}
	}
	if energie>0 {
	energie-=1
	//get shot
	scrBloodShot(x,y,bullets,other.direction)
	} else {
	//die
	scrBloodShotDead(x,y,bullets,other.direction)
	}
	}



}
