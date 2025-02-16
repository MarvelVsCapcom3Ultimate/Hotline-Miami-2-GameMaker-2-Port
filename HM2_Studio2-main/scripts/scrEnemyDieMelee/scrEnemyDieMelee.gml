function scrEnemyDieMelee(argument0) {
	type = scrGetMelee(objPlayer.sprite_index);
	if (type == 0) 
	{
		sound_play(sndHit)
		sound_play(sndPunch)
		global.shake=8
		my_id=instance_create(x,y,objDeadBody)
		my_id.direction=point_direction(objPlayer.x,objPlayer.y,x,y)
		my_id.speed=2+random(2)
		my_id.friction=0.15
		my_id.sprite_index=scrGetBlunt(argument0)
		my_id.image_index=floor(random(sprite_get_number(my_id.sprite_index)))
		my_id.alarm[0]=6
		my_id.image_angle=my_id.direction
		scrEnemyDropWeapon()
		scrMeleeBlood(x,y)
		with (instance_create(x, y - 24, objPoints))
		{
			objPoints.str = "800pts";
		}
		global.myscore+=800
		objEffector.roomkills++;
		with objWriter 
		{
			kills += 1; 
			objEffector.killamount = 1;
		}
	}
	if type=1 
	{
	sound_play(sndHit)
	sound_play(sndPunch)
	global.shake=8
	my_id=instance_create(x,y,objDeadBody)
	my_id.direction=point_direction(objPlayer.x,objPlayer.y,x,y)
	my_id.speed=2+random(2)
	my_id.friction=0.15
	my_id.sprite_index=scrGetSharp(argument0)
	my_id.image_index=floor(random(sprite_get_number(my_id.sprite_index)))
	my_id.alarm[0]=6
	my_id.image_angle=my_id.direction
	scrEnemyDropWeapon()
	scrMeleeBlood(x,y)
	with (instance_create(x, y - 24, objPoints))
	{
		objPoints.str = "800pts";
	}
	global.myscore+=800
	objEffector.roomkills++;
	with objWriter {kills+=1 objEffector.killamount=1}
	}
	if type=2 {
	death=choose(0,1+floor(random(5)),1+floor(random(5)))
	if object_get_parent(argument0)=objDog {
	death=choose(0,2)
	my_id=instance_create(x,y,objBodyPiece)
	my_id.direction=point_direction(objPlayer.x,objPlayer.y,x,y)-5+random(10)
	my_id.speed=3+random(1)
	my_id.friction=0.15
	my_id.sprite_index=scrGetSevered(argument0)
	my_id.image_index=0+death
	my_id.alarm[0]=6
	my_id.image_angle=my_id.direction
	//1 lower
	my_id=instance_create(x,y,objBodyPiece)
	my_id.direction=point_direction(objPlayer.x,objPlayer.y,x,y)-5+random(10)
	my_id.speed=1+random(1)
	my_id.friction=0.15
	my_id.sprite_index=scrGetSevered(argument0)
	my_id.image_index=1+death
	my_id.alarm[0]=6
	my_id.image_angle=my_id.direction
	scrMeleeBlood(x,y)
	with (instance_create(x, y - 24, objPoints))
	{
		objPoints.str = "800pts";
	}
	global.myscore+=800
	objEffector.roomkills++;
	} else {
	if death=0 {
	sound_play(sndHit)
	sound_play(sndPunch)
	global.shake=8
	my_id=instance_create(x,y,objDeadBody)
	my_id.direction=point_direction(objPlayer.x,objPlayer.y,x,y)
	my_id.speed=2+random(2)
	my_id.friction=0.15
	my_id.sprite_index=scrGetSlash(argument0)
	my_id.image_index=floor(random(sprite_get_number(my_id.sprite_index)))
	my_id.alarm[0]=6
	my_id.image_angle=my_id.direction
	scrEnemyDropWeapon()
	scrMeleeBlood(x,y)
	with (instance_create(x, y - 24, objPoints))
	{
		objPoints.str = "800pts";
	}
	global.myscore+=800
	objEffector.roomkills++;
	}

	if death=1 {
	sound_play(sndHit)
	sound_play(sndPunch)
	//0 upper 
	my_id=instance_create(x,y,objBodyPiece)
	my_id.direction=point_direction(objPlayer.x,objPlayer.y,x,y)-5+random(10)
	my_id.speed=3+random(1)
	my_id.friction=0.15
	my_id.sprite_index=scrGetSevered(argument0)
	my_id.image_index=0
	my_id.alarm[0]=6
	my_id.image_angle=my_id.direction
	//1 lower
	my_id=instance_create(x,y,objBodyPiece)
	my_id.direction=point_direction(objPlayer.x,objPlayer.y,x,y)-5+random(10)
	my_id.speed=1+random(1)
	my_id.friction=0.15
	my_id.sprite_index=scrGetSevered(argument0)
	my_id.image_index=1
	my_id.alarm[0]=6
	my_id.image_angle=my_id.direction

	scrEnemyDropWeapon()
	scrMeleeBlood(x,y)
	with (instance_create(x, y - 24, objPoints))
	{
		objPoints.str = "800pts";
	}
	global.myscore+=800
	objEffector.roomkills++;
	}

	if death=2 {
	sound_play(sndHit)
	sound_play(sndPunch)
	//2 upper 
	my_id=instance_create(x,y,objBodyPiece)
	my_id.direction=point_direction(objPlayer.x,objPlayer.y,x,y)-5+random(10)
	my_id.speed=3+random(1)
	my_id.friction=0.15
	my_id.sprite_index=scrGetSevered(argument0)
	my_id.image_index=2
	my_id.alarm[0]=6
	my_id.image_angle=my_id.direction
	//3 lower
	my_id=instance_create(x,y,objBodyPiece)
	my_id.direction=point_direction(objPlayer.x,objPlayer.y,x,y)-5+random(10)
	my_id.speed=1+random(1)
	my_id.friction=0.15
	my_id.sprite_index=scrGetSevered(argument0)
	my_id.image_index=3
	my_id.alarm[0]=6
	my_id.image_angle=my_id.direction

	scrEnemyDropWeapon()
	scrMeleeBlood(x,y)
	with (instance_create(x, y - 24, objPoints))
	{
		objPoints.str = "800pts";
	}
	global.myscore+=800
	objEffector.roomkills++;
	}

	if death=3 {
	sound_play(sndHit)
	sound_play(sndPunch)
	//4 body
	my_id=instance_create(x,y,objBodyPiece)
	my_id.direction=point_direction(objPlayer.x,objPlayer.y,x,y)
	my_id.speed=2+random(1)
	my_id.friction=0.15
	my_id.sprite_index=scrGetSevered(argument0)
	my_id.image_index=4
	my_id.alarm[0]=6
	my_id.image_angle=my_id.direction
	my_id.image_yscale=1
	//5 left arm
	my_id=instance_create(x,y,objBodyPiece)
	my_id.direction=point_direction(objPlayer.x,objPlayer.y,x,y)+45
	my_id.speed=3+random(1)
	my_id.friction=0.15
	my_id.sprite_index=scrGetSevered(argument0)
	my_id.image_index=5
	//my_id.alarm[0]=6
	my_id.image_angle=my_id.direction
	my_id.image_yscale=1

	scrEnemyDropWeapon()
	scrMeleeBlood(x,y)
	with (instance_create(x, y - 24, objPoints))
	{
		objPoints.str = "800pts";
	}
	global.myscore+=800
	objEffector.roomkills++;

	}

	if death=4 {
	sound_play(sndHit)
	sound_play(sndPunch)
	//4 body
	my_id=instance_create(x,y,objBodyPiece)
	my_id.direction=point_direction(objPlayer.x,objPlayer.y,x,y)
	my_id.speed=2+random(1)
	my_id.friction=0.15
	my_id.sprite_index=scrGetSevered(argument0)
	my_id.image_index=4
	my_id.alarm[0]=6
	my_id.image_angle=my_id.direction
	my_id.image_yscale=1
	//6 right arm
	my_id=instance_create(x,y,objBodyPiece)
	my_id.direction=point_direction(objPlayer.x,objPlayer.y,x,y)-45
	my_id.speed=3+random(1)
	my_id.friction=0.15
	my_id.sprite_index=scrGetSevered(argument0)
	my_id.image_index=6
	//my_id.alarm[0]=6
	my_id.image_angle=my_id.direction
	my_id.image_yscale=1

	scrEnemyDropWeapon()
	scrMeleeBlood(x,y)
	with (instance_create(x, y - 24, objPoints))
	{
		objPoints.str = "800pts";
	}
	global.myscore+=800
	objEffector.roomkills++;
	}

	if death=5 {
	sound_play(sndHit)
	sound_play(sndPunch)
	global.shake=8
	my_id=instance_create(x,y,objBodyPiece)
	my_id.direction=point_direction(objPlayer.x,objPlayer.y,x,y)
	my_id.speed=2+random(2)
	my_id.friction=0.15
	my_id.sprite_index=scrGetSevered(argument0)
	my_id.image_index=7
	my_id.alarm[0]=6
	my_id.image_angle=my_id.direction

	my_id=instance_create(x,y,objSeveredHead)
	my_id.direction=random(360)
	my_id.speed=1+random(2)

	scrEnemyDropWeapon()
	scrMeleeBlood(x,y)
	with (instance_create(x, y - 24, objPoints))
	{
		objPoints.str = "800pts";
	}
	global.myscore+=800
	objEffector.roomkills++;
	}
	}
	}

	if type=4 {
	if object_get_parent(argument0)=objDog nothing=1 else {
	sound_play(sndPunch)
	global.shake=4
	my_id=instance_create(x,y,objKnockedOut)
	my_id.direction=point_direction(objPlayer.x,objPlayer.y,x,y)
	my_id.speed=2+random(2)
	my_id.friction=0.15
	my_id.sprite_index=scrGetKnockedOut(argument0)
	my_id.image_angle=my_id.direction-180
	my_id.enemyx=my_id.x
	my_id.enemyy=my_id.y
	if instance_exists(objLSD) {
	flame=instance_create(x,y,objMafiaFlameOut)
	flame.direction=my_id.direction
	flame.image_angle=my_id.image_angle
	flame.speed=my_id.speed*0.5
	flame.friction=0.15
	}
	if objPlayer.sprite_index=sprCobraAttackBottle {objPlayer.sprite_index=sprCobraAttackBottleBroken sound_play(sndBottleBreak)}
	scrEnemyDropWeapon()
	}
	}
	if type=5 {
	sound_play(sndTaser)
	sound_play(sndHit)
	global.shake=4
	my_id=instance_create(x,y,objDeadBody)
	my_id.direction=point_direction(objPlayer.x,objPlayer.y,x,y)
	my_id.speed=2+random(2)
	my_id.friction=0.15
	my_id.sprite_index=scrGetElectric(argument0)
	my_id.image_index=floor(random(sprite_get_number(my_id.sprite_index)))
	my_id.image_angle=my_id.direction
	scrEnemyDropWeapon()
	with (instance_create(x, y - 24, objPoints))
	{
		objPoints.str = "800pts";
	}
	global.myscore+=800
	objEffector.roomkills++;
	}
	if type=6 {
	sound_play(sndDoorHit)
	sound_play(sndBoxingBag)
	global.shake=4
	my_id=instance_create(x,y,objDeadBody)
	my_id.direction=point_direction(objPlayer.x,objPlayer.y,x,y)
	my_id.speed=2+random(2)
	my_id.friction=0.15
	my_id.sprite_index=scrGetHurt(argument0)
	my_id.image_index=floor(random(sprite_get_number(my_id.sprite_index)))
	my_id.image_angle=my_id.direction
	if my_id.sprite_index=sprEMafiaHurtBlunt1 or my_id.sprite_index=sprEMafiaHurtBlunt2 or my_id.sprite_index=sprEMafiaHurtBlunt3 or my_id.sprite_index=sprEMafiaHurtBlunt4 or my_id.sprite_index=sprEGangHurtBlunt1 or my_id.sprite_index=sprEGangHurtBlunt2 or my_id.sprite_index=sprEGangHurtBlunt3 or my_id.sprite_index=sprEGangHurtBlunt4  my_id.image_speed=0.15
	scrEnemyDropWeapon()
	with (instance_create(x, y - 24, objPoints))
	{
		objPoints.str = "800pts";
	}
	global.myscore+=800
	objEffector.roomkills++;
	}
	instance_destroy()



}
