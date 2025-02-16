function scrPlayerDieMelee() {
	type=scrEnemyGetMelee(global.sprite)
	if object_index=objPigButcher {
	my_id=instance_create(x,y,objPlayerDead)
	my_id.direction=point_direction(global.my_id.x,global.my_id.y,x,y)
	my_id.speed=1+random(2)
	my_id.friction=0.15
	if type=0 my_id.sprite_index=sprPigDeadBlunt
	if type=1 my_id.sprite_index=sprPigDeadCut
	my_id.image_index=floor(random(sprite_get_number(my_id.sprite_index)))
	my_id.alarm[0]=6
	my_id.image_angle=my_id.direction
	scrDropWeapon()
	scrMeleeBlood(x,y)
	dir=point_direction(global.my_id.x,global.my_id.y,x,y)
	my_id=instance_create(x+lengthdir_x(24,dir),y+lengthdir_y(24,dir),objMaskDrop)
	my_id.speed=3+random(2)
	my_id.direction=dir-15+random(20)
	instance_destroy()
	}
	if object_index=objWriter {
	my_id=instance_create(x,y,objPlayerDead)
	my_id.direction=point_direction(global.my_id.x,global.my_id.y,x,y)
	my_id.speed=1+random(2)
	my_id.friction=0.15
	if kills<2 {
	if type=0 my_id.sprite_index=sprWriterDeadBlunt
	if type=1 my_id.sprite_index=sprWriterDeadCut
	} else {
	if type=0 my_id.sprite_index=sprWriter2DeadBlunt
	if type=1 my_id.sprite_index=sprWriter2DeadCut
	}
	my_id.image_index=floor(random(sprite_get_number(my_id.sprite_index)))
	my_id.alarm[0]=6
	my_id.image_angle=my_id.direction
	scrDropWeapon()
	scrMeleeBlood(x,y)
	instance_destroy()
	}
	if object_index=objRat {
	my_id=instance_create(x,y,objPlayerDead)
	my_id.direction=point_direction(global.my_id.x,global.my_id.y,x,y)
	my_id.speed=1+random(2)
	my_id.friction=0.15
	if type=0 my_id.sprite_index=sprRatDeadBlunt
	if type=1 my_id.sprite_index=sprRatDeadCut
	my_id.image_index=floor(random(sprite_get_number(my_id.sprite_index)))
	my_id.alarm[0]=6
	my_id.image_angle=my_id.direction
	scrDropWeapon()
	scrMeleeBlood(x,y)
	instance_destroy()
	}
	if object_index=objSon {
	my_id=instance_create(x,y,objPlayerDead)
	my_id.direction=point_direction(global.my_id.x,global.my_id.y,x,y)
	my_id.speed=1+random(2)
	my_id.friction=0.15
	if type=0 my_id.sprite_index=sprSonDeadBlunt
	if type=1 my_id.sprite_index=sprSonDeadCut
	my_id.image_index=floor(random(sprite_get_number(my_id.sprite_index)))
	my_id.alarm[0]=6
	my_id.image_angle=my_id.direction
	scrDropWeapon()
	scrMeleeBlood(x,y)
	instance_destroy()
	}
	if object_index=objSonLSD {
	my_id=instance_create(x,y,objPlayerDead)
	my_id.direction=point_direction(global.my_id.x,global.my_id.y,x,y)
	my_id.speed=1+random(2)
	my_id.friction=0.15
	if type=0 my_id.sprite_index=sprSonDeadBluntLSD
	if type=1 my_id.sprite_index=sprSonDeadCutLSD
	my_id.image_index=floor(random(sprite_get_number(my_id.sprite_index)))
	my_id.alarm[0]=6
	my_id.image_angle=my_id.direction
	scrDropWeapon()
	scrMeleeBlood(x,y)
	instance_destroy()
	}
	if object_index=objPlayerHenchman {
	my_id=instance_create(x,y,objPlayerDead)
	my_id.direction=point_direction(global.my_id.x,global.my_id.y,x,y)
	my_id.speed=1+random(2)
	my_id.friction=0.15
	if type=0 my_id.sprite_index=sprHenchmanDeadBlunt
	if type=1 my_id.sprite_index=sprHenchmanDeadCut
	my_id.image_index=floor(random(sprite_get_number(my_id.sprite_index)))
	my_id.alarm[0]=6
	my_id.image_angle=my_id.direction
	scrDropWeapon()
	scrMeleeBlood(x,y)
	instance_destroy()
	}
	if object_index=objPlayerTiger {
	my_id=instance_create(x,y,objPlayerDead)
	my_id.direction=point_direction(global.my_id.x,global.my_id.y,x,y)
	my_id.speed=1+random(2)
	my_id.friction=0.15
	if type=0 my_id.sprite_index=sprTigerDeadBlunt
	if type=1 my_id.sprite_index=sprTigerDeadCut
	my_id.image_index=floor(random(sprite_get_number(my_id.sprite_index)))
	my_id.alarm[0]=6
	my_id.image_angle=my_id.direction
	scrDropWeapon()
	scrMeleeBlood(x,y)
	dir=point_direction(global.my_id.x,global.my_id.y,x,y)
	my_id=instance_create(x+lengthdir_x(24,dir),y+lengthdir_y(24,dir),objMaskDrop)
	my_id.speed=3+random(2)
	my_id.direction=dir-15+random(20)
	my_id.sprite_index=choose(sprMaskDropFansFront,sprMaskDropFansBack)
	my_id.image_index=0
	instance_destroy()
	}
	if object_index=objPlayerZebra {
	if sprite_index=sprZebraRoll nothing=1 else {
	my_id=instance_create(x,y,objPlayerDead)
	my_id.direction=point_direction(global.my_id.x,global.my_id.y,x,y)
	my_id.speed=1+random(2)
	my_id.friction=0.15
	if type=0 my_id.sprite_index=sprZebraDeadBlunt
	if type=1 my_id.sprite_index=sprZebraDeadCut
	my_id.image_index=floor(random(sprite_get_number(my_id.sprite_index)))
	my_id.alarm[0]=6
	my_id.image_angle=my_id.direction
	scrDropWeapon()
	scrMeleeBlood(x,y)
	dir=point_direction(global.my_id.x,global.my_id.y,x,y)
	my_id=instance_create(x+lengthdir_x(24,dir),y+lengthdir_y(24,dir),objMaskDrop)
	my_id.speed=3+random(2)
	my_id.direction=dir-15+random(20)
	my_id.sprite_index=choose(sprMaskDropFansFront,sprMaskDropFansBack)
	my_id.image_index=3
	instance_destroy()
	}
	}
	if object_index=objPlayerSwanChainsaw {
	my_id=instance_create(x,y,objPlayerDead)
	my_id.direction=point_direction(global.my_id.x,global.my_id.y,x,y)
	my_id.speed=1+random(2)
	my_id.friction=0.15
	if type=0 my_id.sprite_index=sprSwanDeadBlunt
	if type=1 my_id.sprite_index=sprSwanDeadCut
	my_id.image_index=floor(random(sprite_get_number(my_id.sprite_index)))
	my_id.alarm[0]=6
	my_id.image_angle=my_id.direction
	scrDropWeapon()
	scrMeleeBlood(x,y)
	dir=point_direction(global.my_id.x,global.my_id.y,x,y)
	my_id=instance_create(x+lengthdir_x(24,dir),y+lengthdir_y(24,dir),objMaskDrop)
	my_id.speed=3+random(2)
	my_id.direction=dir-15+random(20)
	my_id.sprite_index=choose(sprMaskDropFansFront,sprMaskDropFansBack)
	my_id.image_index=1
	instance_destroy()
	}
	if object_index=objCop {
	my_id=instance_create(x,y,objPlayerDead)
	my_id.direction=point_direction(global.my_id.x,global.my_id.y,x,y)
	my_id.speed=1+random(2)
	my_id.friction=0.15
	if type=0 my_id.sprite_index=sprCopDeadBlunt
	if type=1 my_id.sprite_index=sprCopDeadCut
	my_id.image_index=floor(random(sprite_get_number(my_id.sprite_index)))
	my_id.alarm[0]=6
	my_id.image_angle=my_id.direction
	scrDropWeapon()
	scrMeleeBlood(x,y)
	instance_destroy()
	}
	if object_index=objPlayerCobra {
	my_id=instance_create(x,y,objPlayerDead)
	my_id.direction=point_direction(global.my_id.x,global.my_id.y,x,y)
	my_id.speed=1+random(2)
	my_id.friction=0.15
	if room=rmMethLabFloor3 {
	if type=0 my_id.sprite_index=sprCobraWounded2
	if type=1 my_id.sprite_index=sprCobraWounded1
	my_id.image_speed=0.1
	my_id.wait=100
	my_id.drag=1
	bgm_Stop(global.currentsong)
	sound_play(sndLevelComplete)
	} else my_id.sprite_index=sprCobraDeadMelee
	my_id.image_index=floor(random(sprite_get_number(my_id.sprite_index)))
	my_id.alarm[0]=6
	my_id.image_angle=my_id.direction
	scrDropWeapon()
	scrMeleeBlood(x,y)
	instance_destroy()
	}
	if object_index=objPlayerBear {
	my_id=instance_create(x,y,objPlayerDead)
	my_id.direction=point_direction(global.my_id.x,global.my_id.y,x,y)
	my_id.speed=1+random(2)
	my_id.friction=0.15
	my_id.sprite_index=sprBearDeadMelee
	my_id.image_index=floor(random(sprite_get_number(my_id.sprite_index)))
	my_id.alarm[0]=6
	my_id.image_angle=my_id.direction
	scrDropWeapon()
	scrMeleeBlood(x,y)
	instance_destroy()
	}
	if object_index=objNicke {
	my_id=instance_create(x,y,objPlayerDead)
	my_id.direction=point_direction(global.my_id.x,global.my_id.y,x,y)
	my_id.speed=1+random(2)
	my_id.friction=0.15
	if type=0 my_id.sprite_index=sprNickeDeadCut
	if type=1 my_id.sprite_index=sprNickeDeadCut
	my_id.image_index=floor(random(sprite_get_number(my_id.sprite_index)))
	my_id.alarm[0]=6
	my_id.image_angle=my_id.direction
	scrDropWeapon()
	scrMeleeBlood(x,y)
	instance_destroy()
	}

	if instance_exists(objPlayerDead) {
	sound_play(sndHit)
	sound_play(sndPunch)
	}



}
