function scrBloodShotSmoke(argument0, argument1, argument2, argument3) {
	//scrBloodShot(x,y,bullets,direction)
	repeat (3+argument2) {
	my_id=instance_create(argument0,argument1,objSplat)
	my_id.direction=random(360)
	my_id.speed=2+random(2)
	}
	repeat (3+argument2) {
	my_id=instance_create(argument0,argument1,objSmudge)
	my_id.direction=argument3-20+random(40)
	my_id.speed=3+random(3)
	my_id.image_angle=my_id.direction
	}
	my_id=instance_create(argument0,argument1,objSmokeHit)
	my_id.color1=c_red
	my_id.color2=c_maroon
	my_id.image_angle=argument2
	my_id.direction=argument2
	my_id.speed=random(1)
	if round(random(1)) {
	my_id=instance_create(argument0,argument1,objBloodSquirt)
	my_id.image_angle=random(360)
	}



}
