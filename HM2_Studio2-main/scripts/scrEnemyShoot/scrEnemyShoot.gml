function scrEnemyShoot() {
	if ammo>0 {
	//angle=direction

	//GUARD

	if sprite_index=sprGuardWalkShotgun or sprite_index=sprGuardAttackShotgun  {
	if reload>0 reload-=1 else {
	sound_play(sndShotgun)
	ammo-=1
	reload=60
	global.shake=6
	mask_index=sprWeaponMask
	if place_meeting(x+lengthdir_x(8,angle),y+lengthdir_y(8,angle),objSolid) {
	repeat (8) {
	my_id=instance_create(x,y,objSmokeHit)
	global.dir=angle
	with my_id move_contact_all(global.dir,26)
	}
	} else {
	repeat (8) {
	my_id=instance_create(x+lengthdir_x(26,angle),y+lengthdir_y(26,angle),objEBullet)
	if instance_exists(my_id) {
	my_id.direction=angle-6+random(12)
	my_id.speed=12+random(4)
	my_id.image_angle=my_id.direction
	}
	}
	}
	my_id=instance_create(x+lengthdir_x(5,angle-5*image_yscale),y+lengthdir_y(5,angle-5*image_yscale),objShell)
	my_id.sprite_index=sprShotgunShell
	my_id.image_angle=angle
	my_id.direction=angle-90*image_yscale-20+random(30)
	my_id.speed=1+random(3)
	light=20
	mask_index=sprMask
	}
	}

	if sprite_index=sprGuardWalkMagnum or sprite_index=sprGuardAttackMagnum {
	if reload>0 reload-=1 else {
	sound_play(sndMagnum)
	ammo-=1
	shake=3
	reload=20
	global.shake=6
	//mask_index=sprWeaponMask
	if place_meeting(x+lengthdir_x(8,angle),y+lengthdir_y(8,angle),objSolid) {
	my_id=instance_create(x,y,objSmokeHit)
	global.dir=angle
	with my_id move_contact_all(global.dir,26)
	} else {
	my_id=instance_create(x+lengthdir_x(26,angle),y+lengthdir_y(26,angle),objEBullet)
	if instance_exists(my_id) {
	my_id.direction=angle-6+random(12)
	my_id.speed=12+random(4)
	my_id.image_angle=my_id.direction
	bullet2=instance_create(my_id.x,my_id.y,objEBullet)
	bullet2.direction=my_id.direction
	bullet2.speed=my_id.speed
	bullet2.image_angle=my_id.image_angle
	}
	}
	light=20
	mask_index=sprMask
	}
	}


	//POLICE

	if sprite_index=sprPoliceWalkShotgun or sprite_index=sprPoliceAttackShotgun  {
	if reload>0 reload-=1 else {
	sound_play(sndShotgun)
	ammo-=1
	reload=60
	global.shake=6
	mask_index=sprWeaponMask
	if place_meeting(x+lengthdir_x(8,angle),y+lengthdir_y(8,angle),objSolid) {
	repeat (8) {
	my_id=instance_create(x,y,objSmokeHit)
	global.dir=angle
	with my_id move_contact_all(global.dir,26)
	}
	} else {
	repeat (8) {
	my_id=instance_create(x+lengthdir_x(26,angle),y+lengthdir_y(26,angle),objEBullet)
	if instance_exists(my_id) {
	my_id.direction=angle-6+random(12)
	my_id.speed=12+random(4)
	my_id.image_angle=my_id.direction
	}
	}
	}
	my_id=instance_create(x+lengthdir_x(5,angle-5*image_yscale),y+lengthdir_y(5,angle-5*image_yscale),objShell)
	my_id.sprite_index=sprShotgunShell
	my_id.image_angle=angle
	my_id.direction=angle-90*image_yscale-20+random(30)
	my_id.speed=1+random(3)
	light=20
	mask_index=sprMask
	}
	}

	if sprite_index=sprPoliceWalk9mm or sprite_index=sprPoliceAttack9mm {
	if reload>0 reload-=1 else {
	sound_play(snd9mm)
	ammo-=1
	shake=3
	reload=20
	global.shake=6
	//mask_index=sprWeaponMask
	if place_meeting(x+lengthdir_x(8,angle),y+lengthdir_y(8,angle),objSolid) {
	my_id=instance_create(x,y,objSmokeHit)
	global.dir=angle
	with my_id move_contact_all(global.dir,26)
	} else {
	my_id=instance_create(x+lengthdir_x(26,angle),y+lengthdir_y(26,angle),objEBullet)
	if instance_exists(my_id) {
	my_id.direction=angle-6+random(12)
	my_id.speed=12+random(4)
	my_id.image_angle=my_id.direction
	}
	}
	my_id=instance_create(x+lengthdir_x(5,angle-5*image_yscale),y+lengthdir_y(5,angle-5*image_yscale),objShell)
	my_id.sprite_index=sprUziShell
	my_id.image_angle=angle
	my_id.direction=angle-90*image_yscale-20+random(30)
	my_id.speed=1+random(3)
	light=20
	mask_index=sprMask
	}
	}

	//COLOMBIANS

	if sprite_index=sprColombianWalkFamae or sprite_index=sprColombianAttackFamae {
	if reload>0 reload-=1 else {
	ammo-=1
	light=10
	global.shake=3
	sound_play(sndFamae)
	mask_index=sprWeaponMask
	reload=5
	if place_meeting(x+lengthdir_x(8,angle),y+lengthdir_y(8,angle),objSolid) {
	my_id=instance_create(x,y,objSmokeHit)
	my_id.image_angle=image_angle
	global.dir=angle
	with my_id {
	move_contact_solid(global.dir,16)
	}
	} else {
	my_id=instance_create(x+lengthdir_x(26,angle),y+lengthdir_y(26,angle),objEBullet)
	if instance_exists(my_id) {
	my_id.direction=angle-10+random(20)
	my_id.speed=12+random(4)
	my_id.image_angle=my_id.direction
	}
	}
	my_id=instance_create(x+lengthdir_x(5,angle-5*image_yscale),y+lengthdir_y(5,angle-5*image_yscale),objShell)
	my_id.sprite_index=sprM16Shell
	my_id.image_angle=angle
	my_id.direction=angle-90*image_yscale-20+random(30)
	my_id.speed=1+random(3)
	mask_index=sprMask
	}
	}

	if sprite_index=sprColombianWalkMendoza or sprite_index=sprColombianAttackMendoza {
	if reload>0 reload-=1 else {
	ammo-=1
	light=10
	global.shake=3
	sound_play(sndMendoza)
	mask_index=sprWeaponMask
	reload=5
	if place_meeting(x+lengthdir_x(8,angle),y+lengthdir_y(8,angle),objSolid) {
	my_id=instance_create(x,y,objSmokeHit)
	my_id.image_angle=image_angle
	global.dir=angle
	with my_id {
	move_contact_solid(global.dir,16)
	}
	} else {
	my_id=instance_create(x+lengthdir_x(26,angle),y+lengthdir_y(26,angle),objEBullet)
	if instance_exists(my_id) {
	my_id.direction=angle-10+random(20)
	my_id.speed=12+random(4)
	my_id.image_angle=my_id.direction
	}
	}
	my_id=instance_create(x+lengthdir_x(5,angle-5*image_yscale),y+lengthdir_y(5,angle-5*image_yscale),objShell)
	my_id.sprite_index=sprM16Shell
	my_id.image_angle=angle
	my_id.direction=angle-90*image_yscale-20+random(30)
	my_id.speed=1+random(3)
	mask_index=sprMask
	}
	}

	if sprite_index=sprColombianWalkShotgun or sprite_index=sprColombianAttackShotgun  {
	if reload>0 reload-=1 else {
	sound_play(sndShotgun)
	ammo-=1
	reload=60
	global.shake=6
	mask_index=sprWeaponMask
	if place_meeting(x+lengthdir_x(8,angle),y+lengthdir_y(8,angle),objSolid) {
	repeat (8) {
	my_id=instance_create(x,y,objSmokeHit)
	global.dir=angle
	with my_id move_contact_all(global.dir,26)
	}
	} else {
	repeat (8) {
	my_id=instance_create(x+lengthdir_x(26,angle),y+lengthdir_y(26,angle),objEBullet)
	if instance_exists(my_id) {
	my_id.direction=angle-6+random(12)
	my_id.speed=12+random(4)
	my_id.image_angle=my_id.direction
	}
	}
	}
	my_id=instance_create(x+lengthdir_x(5,angle-5*image_yscale),y+lengthdir_y(5,angle-5*image_yscale),objShell)
	my_id.sprite_index=sprShotgunShell
	my_id.image_angle=angle
	my_id.direction=angle-90*image_yscale-20+random(30)
	my_id.speed=1+random(3)
	light=20
	mask_index=sprMask
	}
	}


	if sprite_index=sprColombianWalkSilencer {
	if reload>0 reload-=1 else {
	sound_play(sndSilencer)
	ammo-=1
	reload=10
	global.shake=2
	if place_meeting(x+lengthdir_x(8,angle),y+lengthdir_y(8,angle),objSolid) {
	my_id=instance_create(x,y,objSmokeHit)
	my_id.image_angle=image_angle
	global.dir=angle
	with my_id {
	move_contact_solid(global.dir,16)
	}
	} else {
	my_id=instance_create(x+lengthdir_x(20,angle),y+lengthdir_y(20,angle),objEBullet)
	if instance_exists(my_id) {
	my_id.direction=angle-3+random(6)
	my_id.speed=16
	my_id.image_angle=my_id.direction
	}
	}
	my_id=instance_create(x+lengthdir_x(16,angle-4*image_yscale),y+lengthdir_y(16,angle-4*image_yscale),objShell)
	my_id.sprite_index=sprUziShell
	my_id.image_angle=angle
	my_id.direction=angle-90*image_yscale-20+random(30)
	my_id.speed=1+random(3)
	light=12
	}
	}



	//MAFIA

	if sprite_index=sprEMafiaWalkM16 or sprite_index=sprEMafiaAttackM16 {
	if reload>0 reload-=1 else {
	ammo-=1
	light=10
	global.shake=3
	sound_play(sndM16)
	mask_index=sprWeaponMask
	reload=5
	if place_meeting(x+lengthdir_x(8,angle),y+lengthdir_y(8,angle),objSolid) {
	my_id=instance_create(x,y,objSmokeHit)
	my_id.image_angle=image_angle
	global.dir=angle
	with my_id {
	move_contact_solid(global.dir,16)
	}
	} else {
	my_id=instance_create(x+lengthdir_x(26,angle),y+lengthdir_y(26,angle),objEBullet)
	if instance_exists(my_id) {
	my_id.direction=angle-10+random(20)
	my_id.speed=12+random(4)
	my_id.image_angle=my_id.direction
	}
	}
	my_id=instance_create(x+lengthdir_x(5,angle-5*image_yscale),y+lengthdir_y(5,angle-5*image_yscale),objShell)
	my_id.sprite_index=sprM16Shell
	my_id.image_angle=angle
	my_id.direction=angle-90*image_yscale-20+random(30)
	my_id.speed=1+random(3)
	mask_index=sprMask
	}
	}

	if sprite_index=sprEMafiaWalkKalashnikov or sprite_index=sprEMafiaAttackKalashnikov {
	if reload>0 reload-=1 else {
	ammo-=1
	light=10
	global.shake=3
	sound_play(sndKalashnikov)
	mask_index=sprWeaponMask
	reload=5
	if place_meeting(x+lengthdir_x(8,angle),y+lengthdir_y(8,angle),objSolid) {
	my_id=instance_create(x,y,objSmokeHit)
	my_id.image_angle=image_angle
	global.dir=angle
	with my_id {
	move_contact_solid(global.dir,16)
	}
	} else {
	my_id=instance_create(x+lengthdir_x(26,angle),y+lengthdir_y(26,angle),objEBullet)
	if instance_exists(my_id) {
	my_id.direction=angle-10+random(20)
	my_id.speed=12+random(4)
	my_id.image_angle=my_id.direction
	}
	}
	my_id=instance_create(x+lengthdir_x(5,angle-5*image_yscale),y+lengthdir_y(5,angle-5*image_yscale),objShell)
	my_id.sprite_index=sprM16Shell
	my_id.image_angle=angle
	my_id.direction=angle-90*image_yscale-20+random(30)
	my_id.speed=1+random(3)
	mask_index=sprMask
	}
	}

	if sprite_index=sprEMafiaWalkShotgun or sprite_index=sprEMafiaAttackShotgun  {
	if reload>0 reload-=1 else {
	sound_play(sndShotgun)
	ammo-=1
	reload=60
	global.shake=6
	mask_index=sprWeaponMask
	if place_meeting(x+lengthdir_x(8,angle),y+lengthdir_y(8,angle),objSolid) {
	repeat (8) {
	my_id=instance_create(x,y,objSmokeHit)
	global.dir=angle
	with my_id move_contact_all(global.dir,26)
	}
	} else {
	repeat (8) {
	my_id=instance_create(x+lengthdir_x(26,angle),y+lengthdir_y(26,angle),objEBullet)
	if instance_exists(my_id) {
	my_id.direction=angle-6+random(12)
	my_id.speed=12+random(4)
	my_id.image_angle=my_id.direction
	}
	}
	}
	my_id=instance_create(x+lengthdir_x(5,angle-5*image_yscale),y+lengthdir_y(5,angle-5*image_yscale),objShell)
	my_id.sprite_index=sprShotgunShell
	my_id.image_angle=angle
	my_id.direction=angle-90*image_yscale-20+random(30)
	my_id.speed=1+random(3)
	light=20
	mask_index=sprMask
	}
	}

	if sprite_index=sprEMafiaWalkUziLSD or sprite_index=sprEMafiaAttackUziLSD {
	if reload>0 reload-=1 else {
	sound_play(sndUzi)
	ammo-=1
	shake=3
	reload=3
	global.shake=6
	//mask_index=sprWeaponMask
	if place_meeting(x+lengthdir_x(8,angle),y+lengthdir_y(8,angle),objSolid) {
	my_id=instance_create(x,y,objSmokeHit)
	global.dir=angle
	with my_id move_contact_all(global.dir,26)
	} else {
	my_id=instance_create(x+lengthdir_x(26,angle),y+lengthdir_y(26,angle),objEBullet)
	if instance_exists(my_id) {
	my_id.direction=angle-6+random(12)
	my_id.speed=12+random(4)
	my_id.image_angle=my_id.direction
	}
	}
	my_id=instance_create(x+lengthdir_x(5,angle-5*image_yscale),y+lengthdir_y(5,angle-5*image_yscale),objShell)
	my_id.sprite_index=sprUziShell
	my_id.image_angle=angle
	my_id.direction=angle-90*image_yscale-20+random(30)
	my_id.speed=1+random(3)
	light=20
	mask_index=sprMask
	}
	}

	if sprite_index=sprEMafiaWalkShotgunLSD or sprite_index=sprEMafiaAttackShotgunLSD {
	if reload>0 reload-=1 else {
	sound_play(sndShotgun)
	ammo-=1
	reload=60
	global.shake=6
	mask_index=sprWeaponMask
	if place_meeting(x+lengthdir_x(8,angle),y+lengthdir_y(8,angle),objSolid) {
	repeat (8) {
	my_id=instance_create(x,y,objSmokeHit)
	global.dir=angle
	with my_id move_contact_all(global.dir,26)
	}
	} else {
	repeat (8) {
	my_id=instance_create(x+lengthdir_x(26,angle),y+lengthdir_y(26,angle),objEBullet)
	if instance_exists(my_id) {
	my_id.direction=angle-6+random(12)
	my_id.speed=12+random(4)
	my_id.image_angle=my_id.direction
	}
	}
	}
	my_id=instance_create(x+lengthdir_x(5,angle-5*image_yscale),y+lengthdir_y(5,angle-5*image_yscale),objShell)
	my_id.sprite_index=sprShotgunShell
	my_id.image_angle=angle
	my_id.direction=angle-90*image_yscale-20+random(30)
	my_id.speed=1+random(3)
	light=20
	mask_index=sprMask
	}
	}

	if sprite_index=sprEMafiaWalkKalashnikovLSD or sprite_index=sprEMafiaAttackKalashnikovLSD {
	if reload>0 reload-=1 else {
	ammo-=1
	light=10
	global.shake=3
	sound_play(sndKalashnikov)
	mask_index=sprWeaponMask
	reload=5
	if place_meeting(x+lengthdir_x(8,angle),y+lengthdir_y(8,angle),objSolid) {
	my_id=instance_create(x,y,objSmokeHit)
	my_id.image_angle=image_angle
	global.dir=angle
	with my_id {
	move_contact_solid(global.dir,16)
	}
	} else {
	my_id=instance_create(x+lengthdir_x(26,angle),y+lengthdir_y(26,angle),objEBullet)
	if instance_exists(my_id) {
	my_id.direction=angle-10+random(20)
	my_id.speed=12+random(4)
	my_id.image_angle=my_id.direction
	}
	}
	my_id=instance_create(x+lengthdir_x(5,angle-5*image_yscale),y+lengthdir_y(5,angle-5*image_yscale),objShell)
	my_id.sprite_index=sprM16Shell
	my_id.image_angle=angle
	my_id.direction=angle-90*image_yscale-20+random(30)
	my_id.speed=1+random(3)
	mask_index=sprMask
	}
	}


	if sprite_index=sprEMafiaWalkDoubleBarrel or sprite_index=sprEMafiaAttackDoubleBarrel1 or sprite_index=sprEMafiaAttackDoubleBarrel2 {
	if reload>0 reload-=1 else {
	sound_play(sndDoubleBarrel)
	ammo-=1
	reload=15
	mask_index=sprWeaponMask
	global.shake=6
	if place_meeting(x+lengthdir_x(8,angle),y+lengthdir_y(8,angle),objSolid) {
	repeat (16) {
	my_id=instance_create(x,y,objSmokeHit)
	global.dir=angle
	with my_id move_contact_all(global.dir,26)
	}
	} else {
	repeat (16) {
	my_id=instance_create(x+lengthdir_x(26,angle),y+lengthdir_y(26,angle),objEBullet)
	if instance_exists(my_id) {
	my_id.direction=angle-10+random(20)
	my_id.speed=12+random(4)
	my_id.image_angle=my_id.direction
	}
	}
	}
	light=20
	mask_index=sprMask
	}
	}


	if sprite_index=sprEMafiaWalkSilencer {
	if reload>0 reload-=1 else {
	sound_play(sndSilencer)
	ammo-=1
	reload=10
	global.shake=2
	if place_meeting(x+lengthdir_x(8,angle),y+lengthdir_y(8,angle),objSolid) {
	my_id=instance_create(x,y,objSmokeHit)
	my_id.image_angle=image_angle
	global.dir=angle
	with my_id {
	move_contact_solid(global.dir,16)
	}
	} else {
	my_id=instance_create(x+lengthdir_x(20,angle),y+lengthdir_y(20,angle),objEBullet)
	if instance_exists(my_id) {
	my_id.direction=angle-3+random(6)
	my_id.speed=16
	my_id.image_angle=my_id.direction
	}
	}
	my_id=instance_create(x+lengthdir_x(16,angle-4*image_yscale),y+lengthdir_y(16,angle-4*image_yscale),objShell)
	my_id.sprite_index=sprUziShell
	my_id.image_angle=angle
	my_id.direction=angle-90*image_yscale-20+random(30)
	my_id.speed=1+random(3)
	light=12
	}
	}

	// GANG
	if sprite_index=sprEGangWalkShotgun or sprite_index=sprEGangAttackShotgun {
	if reload>0 reload-=1 else {
	sound_play(sndShotgun)
	ammo-=1
	shake=3
	reload=60
	global.shake=6
	//mask_index=sprWeaponMask
	if place_meeting(x+lengthdir_x(8,angle),y+lengthdir_y(8,angle),objSolid) {
	repeat (8) {
	my_id=instance_create(x,y,objSmokeHit)
	global.dir=angle
	with my_id move_contact_all(global.dir,26)
	}
	} else {
	repeat (8) {
	my_id=instance_create(x+lengthdir_x(26,angle),y+lengthdir_y(26,angle),objEBullet)
	if instance_exists(my_id) {
	my_id.direction=angle-6+random(12)
	my_id.speed=12+random(4)
	my_id.image_angle=my_id.direction
	}
	}
	}
	my_id=instance_create(x+lengthdir_x(5,angle-5*image_yscale),y+lengthdir_y(5,angle-5*image_yscale),objShell)
	my_id.sprite_index=sprShotgunShell
	my_id.image_angle=angle
	my_id.direction=angle-90*image_yscale-20+random(30)
	my_id.speed=1+random(3)
	light=20
	mask_index=sprMask
	}
	}

	if sprite_index=sprEGangWalkUzi or sprite_index=sprEGangAttackUzi {
	if reload>0 reload-=1 else {
	sound_play(sndUzi)
	ammo-=1
	shake=3
	reload=3
	global.shake=6
	//mask_index=sprWeaponMask
	if place_meeting(x+lengthdir_x(8,angle),y+lengthdir_y(8,angle),objSolid) {
	my_id=instance_create(x,y,objSmokeHit)
	global.dir=angle
	with my_id move_contact_all(global.dir,26)
	} else {
	my_id=instance_create(x+lengthdir_x(26,angle),y+lengthdir_y(26,angle),objEBullet)
	if instance_exists(my_id) {
	my_id.direction=angle-6+random(12)
	my_id.speed=12+random(4)
	my_id.image_angle=my_id.direction
	}
	}
	my_id=instance_create(x+lengthdir_x(5,angle-5*image_yscale),y+lengthdir_y(5,angle-5*image_yscale),objShell)
	my_id.sprite_index=sprUziShell
	my_id.image_angle=angle
	my_id.direction=angle-90*image_yscale-20+random(30)
	my_id.speed=1+random(3)
	light=20
	mask_index=sprMask
	}
	}

	if sprite_index=sprEGangWalk9mm or sprite_index=sprEGangAttack9mm {
	if reload>0 reload-=1 else {
	sound_play(snd9mm)
	ammo-=1
	shake=3
	reload=20
	global.shake=6
	//mask_index=sprWeaponMask
	if place_meeting(x+lengthdir_x(8,angle),y+lengthdir_y(8,angle),objSolid) {
	my_id=instance_create(x,y,objSmokeHit)
	global.dir=angle
	with my_id move_contact_all(global.dir,26)
	} else {
	my_id=instance_create(x+lengthdir_x(26,angle),y+lengthdir_y(26,angle),objEBullet)
	if instance_exists(my_id) {
	my_id.direction=angle-6+random(12)
	my_id.speed=12+random(4)
	my_id.image_angle=my_id.direction
	}
	}
	my_id=instance_create(x+lengthdir_x(5,angle-5*image_yscale),y+lengthdir_y(5,angle-5*image_yscale),objShell)
	my_id.sprite_index=sprUziShell
	my_id.image_angle=angle
	my_id.direction=angle-90*image_yscale-20+random(30)
	my_id.speed=1+random(3)
	light=20
	mask_index=sprMask
	}
	}

	if sprite_index=sprSoldierWalkKalashnikov or sprite_index=sprSoldierAttackKalashnikov or sprite_index=sprSoldierHiding {
	if reload>0 reload-=1 else {
	sound_play(sndKalashnikov)
	ammo-=1
	shake=3
	reload=4
	global.shake=6
	//mask_index=sprWeaponMask
	if place_meeting(x+lengthdir_x(8,angle),y+lengthdir_y(8,angle),objSolid) {
	my_id=instance_create(x,y,objSmokeHit)
	global.dir=angle
	with my_id move_contact_all(global.dir,26)
	} else {
	my_id=instance_create(x+lengthdir_x(26,angle),y+lengthdir_y(26,angle),objEBullet)
	if instance_exists(my_id) {
	my_id.direction=angle-6+random(12)
	my_id.speed=12+random(4)
	my_id.image_angle=my_id.direction
	}
	}
	my_id=instance_create(x+lengthdir_x(5,angle-5*image_yscale),y+lengthdir_y(5,angle-5*image_yscale),objShell)
	my_id.sprite_index=sprUziShell
	my_id.image_angle=angle
	my_id.direction=angle-90*image_yscale-20+random(30)
	my_id.speed=1+random(3)
	light=20
	mask_index=sprMask
	}
	}

	if sprite_index=sprSoldierHiding {
	if reload>0 reload-=1 else {
	sound_play(sndKalashnikov)
	ammo-=1
	shake=3
	reload=4
	global.shake=6
	//mask_index=sprWeaponMask
	if place_meeting(x+lengthdir_x(8,angle),y+lengthdir_y(8,angle),objSolid) {
	my_id=instance_create(x,y,objSmokeHit)
	global.dir=angle
	with my_id move_contact_all(global.dir,26)
	} else {
	my_id=instance_create(x+lengthdir_x(26,angle),y+lengthdir_y(26,angle),objEBullet)
	if instance_exists(my_id) {
	my_id.direction=angle-6+random(12)
	my_id.speed=12+random(4)
	my_id.image_angle=my_id.direction
	}
	}
	my_id=instance_create(x+lengthdir_x(5,angle-5*image_yscale),y+lengthdir_y(5,angle-5*image_yscale),objShell)
	my_id.sprite_index=sprUziShell
	my_id.image_angle=angle
	my_id.direction=angle-90*image_yscale-20+random(30)
	my_id.speed=1+random(3)
	light=20
	mask_index=sprMask
	}
	}

	if sprite_index=sprFatSoldierWalkGun or sprite_index=sprFatSoldierAttackGun  {
	if reload>0 reload-=1 else {
	sound_play(sndUzi)
	ammo-=1
	shake=3
	reload=4
	global.shake=6
	//mask_index=sprWeaponMask
	if place_meeting(x+lengthdir_x(8,angle),y+lengthdir_y(8,angle),objSolid) {
	my_id=instance_create(x,y,objSmokeHit)
	global.dir=angle
	with my_id move_contact_all(global.dir,26)
	} else {
	my_id=instance_create(x+lengthdir_x(26,angle-16),y+lengthdir_y(26,angle-16),objEBullet)
	if instance_exists(my_id) {
	my_id.direction=angle-8+random(16)
	my_id.speed=12+random(4)
	my_id.image_angle=my_id.direction
	}
	}
	my_id=instance_create(x+lengthdir_x(5,angle-5*image_yscale),y+lengthdir_y(5,angle-5*image_yscale),objShell)
	my_id.sprite_index=sprUziShell
	my_id.image_angle=angle
	my_id.direction=angle-90*image_yscale-20+random(30)
	my_id.speed=1+random(3)
	light=20
	mask_index=sprMask
	}
	}

	sprite_index=scrGetAttack(sprite_index)
	image_index=0
	image_speed=0.25

	}



}
