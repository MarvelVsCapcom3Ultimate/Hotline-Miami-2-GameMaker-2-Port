function scrPlayerDieShot(argument0, argument1) {
	//scrPlayerDieShot(direction)
	if object_index=objPigButcher {
	my_id=instance_create(x,y,objPlayerDead)
	my_id.direction=argument0
	my_id.speed=1+random(2)
	my_id.friction=0.15
	my_id.sprite_index=sprPigDeadShot
	if argument1<=2 my_id.image_index=choose(0,2) else my_id.image_index=1
	my_id.alarm[0]=6
	my_id.image_angle=my_id.direction
	scrDropWeapon()
	dir=argument0
	my_id=instance_create(x+lengthdir_x(24,dir),y+lengthdir_y(24,dir),objMaskDrop)
	my_id.speed=3+random(2)
	my_id.direction=dir-15+random(20)
	instance_destroy()
	}
	if object_index=objWriter {
	my_id=instance_create(x,y,objPlayerDead)
	my_id.direction=argument0
	my_id.speed=1+random(2)
	my_id.friction=0.15
	if kills<2 {
	if argument1>2 my_id.sprite_index=sprWriterDeadShotgun else my_id.sprite_index=sprWriterDeadMachinegun
	} else {
	if argument1>2 my_id.sprite_index=sprWriter2DeadShotgun else my_id.sprite_index=sprWriter2DeadMachinegun
	}
	my_id.image_index=floor(random(sprite_get_number(my_id.sprite_index)))
	my_id.alarm[0]=6
	my_id.image_angle=my_id.direction
	scrDropWeapon()
	instance_destroy()
	}
	if object_index=objRat {
	my_id=instance_create(x,y,objPlayerDead)
	my_id.direction=argument0
	my_id.speed=1+random(2)
	my_id.friction=0.15
	if argument1>2 my_id.sprite_index=sprRatDeadShotgun else my_id.sprite_index=sprRatDeadMachinegun
	my_id.image_index=floor(random(sprite_get_number(my_id.sprite_index)))
	my_id.alarm[0]=6
	my_id.image_angle=my_id.direction
	scrDropWeapon()
	instance_destroy()
	}
	if object_index=objSon {
	my_id=instance_create(x,y,objPlayerDead)
	my_id.direction=argument0
	my_id.speed=1+random(2)
	my_id.friction=0.15
	if argument1>2 my_id.sprite_index=sprSonDeadShotgun else my_id.sprite_index=sprSonDeadMachinegun
	my_id.image_index=floor(random(sprite_get_number(my_id.sprite_index)))
	my_id.alarm[0]=6
	my_id.image_angle=my_id.direction
	scrDropWeapon()
	instance_destroy()
	}
	if object_index=objPlayerHenchman {
	my_id=instance_create(x,y,objPlayerDead)
	my_id.direction=argument0
	my_id.speed=1+random(2)
	my_id.friction=0.15
	if argument1>2 my_id.sprite_index=sprHenchmanDeadShotgun else my_id.sprite_index=sprHenchmanDeadMachinegun
	my_id.image_index=floor(random(sprite_get_number(my_id.sprite_index)))
	my_id.alarm[0]=6
	my_id.image_angle=my_id.direction
	scrDropWeapon()
	instance_destroy()
	}
	if object_index=objPlayerTiger {
	my_id=instance_create(x,y,objPlayerDead)
	my_id.direction=argument0
	my_id.speed=1+random(2)
	my_id.friction=0.15
	if argument1>2 my_id.sprite_index=sprTigerDeadShotgun else my_id.sprite_index=sprTigerDeadMachinegun
	my_id.image_index=floor(random(sprite_get_number(my_id.sprite_index)))
	my_id.alarm[0]=6
	my_id.image_angle=my_id.direction
	scrDropWeapon()
	dir=point_direction(global.my_id.x,global.my_id.y,x,y)
	my_id=instance_create(x+lengthdir_x(24,dir),y+lengthdir_y(24,dir),objMaskDrop)
	my_id.speed=3+random(2)
	my_id.direction=argument0
	my_id.sprite_index=choose(sprMaskDropFansFront,sprMaskDropFansBack)
	my_id.image_index=0
	instance_destroy()
	}
	if object_index=objPlayerZebra {
	my_id=instance_create(x,y,objPlayerDead)
	my_id.direction=argument0
	my_id.speed=1+random(2)
	my_id.friction=0.15
	if argument1>2 my_id.sprite_index=sprZebraDeadShotgun else my_id.sprite_index=sprZebraDeadMachinegun
	my_id.image_index=floor(random(sprite_get_number(my_id.sprite_index)))
	my_id.alarm[0]=6
	my_id.image_angle=my_id.direction
	scrDropWeapon()
	dir=point_direction(global.my_id.x,global.my_id.y,x,y)
	my_id=instance_create(x+lengthdir_x(24,dir),y+lengthdir_y(24,dir),objMaskDrop)
	my_id.speed=3+random(2)
	my_id.direction=argument0
	my_id.sprite_index=choose(sprMaskDropFansFront,sprMaskDropFansBack)
	my_id.image_index=3
	instance_destroy()
	}
	if object_index=objPlayerBear {
	my_id=instance_create(x,y,objPlayerDead)
	my_id.direction=argument0
	my_id.speed=1+random(2)
	my_id.friction=0.15
	my_id.sprite_index=sprBearDeadShot
	my_id.image_index=floor(random(sprite_get_number(my_id.sprite_index)))
	my_id.alarm[0]=6
	my_id.image_angle=my_id.direction
	scrDropWeapon()
	dir=point_direction(global.my_id.x,global.my_id.y,x,y)
	my_id=instance_create(x+lengthdir_x(24,dir),y+lengthdir_y(24,dir),objMaskDrop)
	my_id.speed=3+random(2)
	my_id.direction=argument0
	my_id.sprite_index=choose(sprMaskDropFansFront,sprMaskDropFansBack)
	my_id.image_index=2
	instance_destroy()
	}
	if object_index=objPlayerSwanChainsaw {
	my_id=instance_create(x,y,objPlayerDead)
	my_id.direction=argument0
	my_id.speed=1+random(2)
	my_id.friction=0.15
	if argument1>2 my_id.sprite_index=sprSwanDeadShotgun else my_id.sprite_index=sprSwanDeadMachinegun
	my_id.image_index=floor(random(sprite_get_number(my_id.sprite_index)))
	my_id.alarm[0]=6
	my_id.image_angle=my_id.direction
	scrDropWeapon()
	dir=point_direction(global.my_id.x,global.my_id.y,x,y)
	my_id=instance_create(x+lengthdir_x(24,argument0),y+lengthdir_y(24,argument0),objMaskDrop)
	my_id.speed=3+random(2)
	my_id.direction=argument0
	my_id.sprite_index=choose(sprMaskDropFansFront,sprMaskDropFansBack)
	my_id.image_index=1
	instance_destroy()
	}
	if object_index=objPlayerSwanGun {
	my_id=instance_create(x,y,objPlayerDead)
	my_id.direction=argument0
	my_id.speed=1+random(2)
	my_id.friction=0.15
	if argument1>2 my_id.sprite_index=sprSwanDeadShotgun else my_id.sprite_index=sprSwanDeadMachinegun
	my_id.image_index=floor(random(sprite_get_number(my_id.sprite_index)))
	my_id.alarm[0]=6
	my_id.image_angle=my_id.direction
	scrDropWeapon()
	dir=point_direction(global.my_id.x,global.my_id.y,x,y)
	my_id=instance_create(x+lengthdir_x(24,argument0),y+lengthdir_y(24,argument0),objMaskDrop)
	my_id.speed=3+random(2)
	my_id.direction=argument0
	my_id.sprite_index=choose(sprMaskDropFansFront,sprMaskDropFansBack)
	my_id.image_index=1
	instance_destroy()
	}
	if object_index=objNicke {
	my_id=instance_create(x,y,objPlayerDead)
	my_id.direction=argument0
	my_id.speed=1+random(2)
	my_id.friction=0.15
	if argument1>2 my_id.sprite_index=sprNickeDeadShotgun else my_id.sprite_index=sprNickeDeadMachinegun
	my_id.image_index=floor(random(sprite_get_number(my_id.sprite_index)))
	my_id.alarm[0]=6
	my_id.image_angle=my_id.direction
	scrDropWeapon()
	dir=point_direction(global.my_id.x,global.my_id.y,x,y)
	instance_destroy()
	}
	if object_index=objCop {
	my_id=instance_create(x,y,objPlayerDead)
	my_id.direction=argument0
	my_id.speed=1+random(2)
	my_id.friction=0.15
	if argument1>2 my_id.sprite_index=sprCopDeadShotgun else my_id.sprite_index=sprCopDeadMachinegun
	my_id.image_index=floor(random(sprite_get_number(my_id.sprite_index)))
	my_id.alarm[0]=6
	my_id.image_angle=my_id.direction
	scrDropWeapon()
	dir=point_direction(global.my_id.x,global.my_id.y,x,y)
	instance_destroy()
	}
	if object_index=objPlayerCobra {
	my_id=instance_create(x,y,objPlayerDead)
	my_id.direction=argument0
	my_id.speed=1+random(2)
	my_id.friction=0.15
	if room=rmMethLabFloor3 {
	my_id.sprite_index=sprCobraWounded1
	my_id.image_speed=0.1
	my_id.drag=1
	my_id.wait=100
	bgm_Stop(global.currentsong)
	sound_play(sndLevelComplete)
	} else my_id.sprite_index=sprCobraDeadShot
	my_id.image_index=floor(random(sprite_get_number(my_id.sprite_index)))
	my_id.alarm[0]=6
	my_id.image_angle=my_id.direction
	scrDropWeapon()
	dir=point_direction(global.my_id.x,global.my_id.y,x,y)
	instance_destroy()
	}



}
