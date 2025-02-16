function scrEnemyDieShot(argument0, argument1) {
	global.shake=5
	my_id=instance_create(x,y,objDeadBody)
	my_id.direction=other.direction
	my_id.speed=1+random(1)+argument1*0.5
	if my_id.speed>4.5 my_id.speed=4.5
	my_id.friction=0.15
	my_id.sprite_index=scrGetShot(object_index,argument1)
	my_id.image_index=floor(random(sprite_get_number(my_id.sprite_index)))
	if scrBodyIsFlying(my_id.sprite_index) my_id.image_index=0
	my_id.alarm[0]=6
	my_id.image_angle=my_id.direction
	if instance_exists(objLSD) {
	flame=instance_create(x,y,objMafiaFlameOut)
	flame.direction=my_id.direction
	flame.image_angle=my_id.image_angle-180
	flame.speed=my_id.speed*0.5
	flame.friction=0.15
	}
	scrEnemyDropWeapon()
	scrMeleeBlood(x,y)
	with (instance_create(x, y - 24, objPoints))
		objPoints.str = "400pts";
	global.myscore += 400;
	with (objWriter) 
	{
		kills += 1;
		objEffector.killamount = 1;
	}
	instance_destroy();



}
