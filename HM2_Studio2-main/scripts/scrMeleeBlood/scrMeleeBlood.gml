function scrMeleeBlood(argument0, argument1) {
	if objPlayer.object_index=objPigButcher {
	repeat (6) {
	my_id=instance_create(argument0,argument1,objSplat)
	my_id.direction=random(360)
	my_id.speed=2+random(2)
	}
	repeat (5) {
	my_id=instance_create(argument0,argument1,objSmudge)
	my_id.direction=random(360)
	my_id.speed=3+random(3)
	my_id.image_angle=my_id.direction
	}
	repeat(3) {
	my_id=instance_create(argument0-12+random(24),argument1-12+random(24),objBigBlood)
	}
	} else {
	repeat (2) {
	my_id=instance_create(argument0,argument1,objSplat)
	my_id.direction=random(360)
	my_id.speed=2+random(2)
	}
	repeat (4) {
	my_id=instance_create(argument0,argument1,objSmudge)
	my_id.direction=random(360)
	my_id.speed=3+random(3)
	my_id.image_angle=my_id.direction
	}
	}



}
