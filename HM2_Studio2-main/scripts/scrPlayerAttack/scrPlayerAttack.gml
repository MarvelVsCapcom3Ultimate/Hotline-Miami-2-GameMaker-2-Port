function scrPlayerAttack()
{
	if !instance_exists(objConversation)
	{
	//Son LSD
	if ammo > 0
	{
		angle = direction;
		if sprite_index == sprSonWalkShotgunLSD 
		{
			if reload > 0
				reload -= 1;
			else
			{
				sprite_index = sprSonAttackShotgunLSD;
				image_speed = 0.35;
				sound_play(sndLSDShotgun);
				scrHearPlayer();
				ammo -= 1;
				shake = 3;
				reload = 30;
				global.shake = 6;
				mask_index = sprWeaponMask;
				repeat (8)
				{
					my_id = instance_create(x + lengthdir_x(16, dir), y + lengthdir_y(16, dir), objLSDFlame);
					my_id.direction = dir - 20 + random(40);
					my_id.speed = 1 + random(1);
					my_id.image_angle = my_id.direction;
					my_id.amount=amount * 2;
					if my_id.amount > 1
						my_id.amount = 1;
				}
				if place_meeting(x + lengthdir_x(8, dir), y + lengthdir_y(8, dir), objSolid) || place_meeting(x + lengthdir_x(12, dir),y + lengthdir_y(12, dir), objEditorDoorV)
				{
					repeat (8)
					{
						my_id = instance_create(x, y, objSmokeHit);
						global.dir = dir;
						with (my_id)
							move_contact_all(global.dir, 26);
					}
				}
				else
				{
					repeat (8)
					{
						my_id = instance_create(x + lengthdir_x(26, dir), y + lengthdir_y(26, dir), objBullet);
						my_id.sprite_index = sprBulletLSD;
						if instance_exists(my_id)
						{
							my_id.direction = dir - 6 + random(12);
							my_id.speed = 12 + random(4);
							my_id.image_angle = my_id.direction;
						}
					}
				}
				my_id = instance_create(x + lengthdir_x(5, dir - 5 * image_yscale), y + lengthdir_y(5, dir - 5 * image_yscale), objShell);
				my_id.sprite_index = sprShotgunShell;
				my_id.image_angle = dir;
				my_id.direction = dir - 90 * image_yscale - 20 + random(30);
				my_id.speed = 1 + random(3);
				light = 20;
				mask_index = sprMask;
			}
		}


		if sprite_index = sprSonWalkMagnumLSD {
		if reload>0 reload-=1 else {
		sprite_index=sprSonAttackMagnumLSD
		image_speed=0.35
		sound_play(sndLSDMagnum)
		scrHearPlayer()
		ammo-=1
		shake=3
		reload=30
		global.shake=6
		mask_index=sprWeaponMask
		repeat (3) {
		my_id=instance_create(x+lengthdir_x(16,dir),y+lengthdir_y(16,dir),objLSDFlame)
		my_id.direction=dir-20+random(40)
		my_id.speed=1+random(1)
		my_id.image_angle=my_id.direction
		my_id.amount=0
		}
		if place_meeting(x+lengthdir_x(8,dir),y+lengthdir_y(8,dir),objSolid) or place_meeting(x+lengthdir_x(12,dir),y+lengthdir_y(12,dir),objEditorDoorV) {
		repeat (3) {
		my_id=instance_create(x,y,objSmokeHit)
		global.dir=dir
		with my_id move_contact_all(global.dir,26)
		}
		} else {
		my_id=instance_create(x+lengthdir_x(26,dir),y+lengthdir_y(26,dir),objBullet)
		my_id.sprite_index=sprBulletLSD
		if instance_exists(my_id) {
		my_id.direction=dir-6+random(12)
		my_id.speed=12+random(4)
		my_id.image_angle=my_id.direction
		}
		}
		my_id=instance_create(x+lengthdir_x(5,dir-5*image_yscale),y+lengthdir_y(5,dir-5*image_yscale),objShell)
		my_id.sprite_index=sprUziShell
		my_id.image_angle=dir
		my_id.direction=dir-90*image_yscale-20+random(30)
		my_id.speed=1+random(3)
		light=20
		mask_index=sprMask
		}
		}
	}

	if sprite_index=sprSonWalkAxeLSD {
	sprite_index=sprSonAttackAxeLSD
	image_speed=0.35
	image_index=1
	reload=25
	sound_play(choose(sndSwing1,sndSwing2))
	}

	if sprite_index=sprSwanWalkChainsaw {
	sprite_index=sprSwanAttackChainsaw
	image_speed=0.35
	image_index=1
	reload=20
	sound_play(sndChainsawAttack)
	}

	if sprite_index=sprPigWalkUnarmed and (instance_exists(objEnemy) or instance_exists(objVictim)) {
	sprite_index=sprPigAttackPunch
	image_speed=0.35
	image_index=1
	reload=30
	sound_play(choose(sndSwing1,sndSwing2))
	}
	if sprite_index=sprPigWalkHammer {
	sprite_index=sprPigAttackHammer
	image_speed=0.35
	image_index=3
	reload=30
	sound_play(choose(sndSwing1,sndSwing2))
	}
	if sprite_index=sprPigWalkStick {
	sprite_index=sprPigAttackStick
	image_speed=0.35
	image_index=3
	reload=30
	sound_play(choose(sndSwing1,sndSwing2))
	}
	if sprite_index=sprPigWalkTaser {
	sprite_index=sprPigAttackTaser
	image_speed=0.35
	image_index=3
	reload=30
	sound_play(choose(sndSwing1,sndSwing2))
	}
	if sprite_index=sprPigWalkBat {
	sprite_index=sprPigAttackBat
	image_speed=0.35
	image_index=4
	reload=30
	sound_play(choose(sndSwing1,sndSwing2))
	}
	if ammo>0 {
	if sprite_index=sprPigWalkDoubleBarrel {
	ammo-=1
	sprite_index=sprPigAttackDoubleBarrel1
	image_speed=0.35
	image_index=1
	reload=15
	global.shake=4
	sound_play(sndDoubleBarrel)
	repeat (12) {
	my_id=instance_create(x+lengthdir_x(24,dir)+lengthdir_x(6,dir-90*left),y+lengthdir_y(24,dir)+lengthdir_y(6,dir-90*left),objBullet)
	my_id.direction=dir-8+random(16)
	my_id.image_angle=my_id.direction
	my_id.speed=10+random(2)
	}
	}


	if sprite_index=sprPigWalkShotgun {
	if reload>0 reload-=1 else {
	sprite_index=sprPigAttackShotgun
	image_speed=0.5
	sound_play(sndShotgun)
	scrHearPlayer()
	ammo-=1
	shake=3
	reload=30
	global.shake=6
	mask_index=sprWeaponMask
	if place_meeting(x+lengthdir_x(8,dir),y+lengthdir_y(8,dir),objSolid) or place_meeting(x+lengthdir_x(12,dir),y+lengthdir_y(12,dir),objEditorDoorV) {
	repeat (8) {
	my_id=instance_create(x,y,objSmokeHit)
	global.dir=dir
	with my_id move_contact_all(global.dir,26)
	}
	} else {
	repeat (8) {
	my_id=instance_create(x+lengthdir_x(26,dir),y+lengthdir_y(26,dir),objBullet)
	if instance_exists(my_id) {
	my_id.direction=dir-6+random(12)
	my_id.speed=12+random(4)
	my_id.image_angle=my_id.direction
	}
	}
	}
	my_id=instance_create(x+lengthdir_x(5,dir-5*image_yscale),y+lengthdir_y(5,dir-5*image_yscale),objShell)
	my_id.sprite_index=sprShotgunShell
	my_id.image_angle=dir
	my_id.direction=dir-90*image_yscale-20+random(30)
	my_id.speed=1+random(3)
	light=20
	mask_index=sprMask
	}
	}

	if sprite_index=sprPigWalk9mm {
	if reload>0 reload-=1 else {
	sprite_index=sprPigAttack9mm
	image_speed=0.5
	sound_play(snd9mm)
	scrHearPlayer()
	ammo-=1
	shake=3
	reload=14
	global.shake=6
	mask_index=sprWeaponMask
	if place_meeting(x+lengthdir_x(8,dir),y+lengthdir_y(8,dir),objSolid) or place_meeting(x+lengthdir_x(12,dir),y+lengthdir_y(12,dir),objEditorDoorV) {
	my_id=instance_create(x,y,objSmokeHit)
	global.dir=dir
	with my_id move_contact_all(global.dir,26)
	} else {
	my_id=instance_create(x+lengthdir_x(26,dir),y+lengthdir_y(26,dir),objBullet)
	if instance_exists(my_id) {
	my_id.direction=dir-6+random(12)
	my_id.speed=12+random(4)
	my_id.image_angle=my_id.direction
	}
	}
	my_id=instance_create(x+lengthdir_x(5,dir-5*image_yscale),y+lengthdir_y(5,dir-5*image_yscale),objShell)
	my_id.sprite_index=sprUziShell
	my_id.image_angle=dir
	my_id.direction=dir-90*image_yscale-20+random(30)
	my_id.speed=1+random(3)
	light=20
	mask_index=sprMask
	}
	}

	}

	//SON

	if sprite_index=sprSonWalkUnarmed and (instance_exists(objEnemy) or instance_exists(objKnockedOut)) {
	image_speed=0.35
	image_index=1
	reload=25
	sound_play(choose(sndSwing1,sndSwing2)) 
	sprite_index=sprSonAttackPunch 
	}
	if sprite_index=sprSonWalkUnarmed and instance_exists(objBoxingBag) {
	if point_distance(x,y,objBoxingBag.x,objBoxingBag.y)<56 {
	image_speed=0.35
	image_index=1
	reload=25
	sound_play(choose(sndSwing1,sndSwing2)) 
	sprite_index=sprSonAttackPunch 
	}
	}


	if sprite_index=sprSonWalkSword {
	image_speed=0.35
	image_index=1
	reload=32
	sound_play(choose(sndSwing1,sndSwing2)) 
	sprite_index=sprSonAttackSword 
	}
	if sprite_index=sprSonWalkStick {
	image_speed=0.35
	image_index=1
	reload=32
	sound_play(choose(sndSwing1,sndSwing2)) 
	sprite_index=sprSonAttackStick
	}
	if sprite_index=sprSonWalkClub {
	image_speed=0.35
	image_index=1
	reload=32
	sound_play(choose(sndSwing1,sndSwing2)) 
	sprite_index=sprSonAttackClub 
	}
	if sprite_index=sprSonWalkKnife {
	image_speed=0.6
	image_index=1
	reload=16
	sound_play(choose(sndSwing1,sndSwing2)) 
	sprite_index=sprSonAttackKnife 
	}
	if sprite_index=sprSonWalkMachette {
	image_speed=0.35
	image_index=1
	reload=30
	sound_play(choose(sndSwing1,sndSwing2)) 
	sprite_index=sprSonAttackMachette 
	}
	if sprite_index=sprSonWalkPipe {
	image_speed=0.35
	image_index=1
	reload=25
	sound_play(choose(sndSwing1,sndSwing2)) 
	sprite_index=sprSonAttackPipe 
	}

	if ammo>0 {
	angle=direction
	if sprite_index=sprSonWalkShotgun {
	if reload>0 reload-=1 else {
	sprite_index=sprSonAttackShotgun
	image_speed=0.5
	sound_play(sndShotgun)
	scrHearPlayer()
	ammo-=1
	shake=3
	reload=30
	global.shake=6
	mask_index=sprWeaponMask
	if place_meeting(x+lengthdir_x(8,dir),y+lengthdir_y(8,dir),objSolid) or place_meeting(x+lengthdir_x(12,dir),y+lengthdir_y(12,dir),objEditorDoorV) {
	repeat (8) {
	my_id=instance_create(x,y,objSmokeHit)
	global.dir=dir
	with my_id move_contact_all(global.dir,26)
	}
	} else {
	repeat (8) {
	my_id=instance_create(x+lengthdir_x(26,dir),y+lengthdir_y(26,dir),objBullet)
	if instance_exists(my_id) {
	my_id.direction=dir-6+random(12)
	my_id.speed=12+random(4)
	my_id.image_angle=my_id.direction
	}
	}
	}
	my_id=instance_create(x+lengthdir_x(5,dir-5*image_yscale),y+lengthdir_y(5,dir-5*image_yscale),objShell)
	my_id.sprite_index=sprShotgunShell
	my_id.image_angle=dir
	my_id.direction=dir-90*image_yscale-20+random(30)
	my_id.speed=1+random(3)
	light=20
	mask_index=sprMask
	}
	}

	if sprite_index=sprSonWalkFamae {
	if reload>0 reload-=1 else {
	sprite_index=sprSonAttackFamae
	image_speed=0.5
	sound_play(sndFamae)
	scrHearPlayer()
	ammo-=1
	shake=3
	reload=3
	global.shake=6
	mask_index=sprWeaponMask
	if place_meeting(x+lengthdir_x(8,dir),y+lengthdir_y(8,dir),objSolid) or place_meeting(x+lengthdir_x(12,dir),y+lengthdir_y(12,dir),objEditorDoorV) {
	my_id=instance_create(x,y,objSmokeHit)
	global.dir=dir
	with my_id move_contact_all(global.dir,26)
	} else {
	my_id=instance_create(x+lengthdir_x(26,dir),y+lengthdir_y(26,dir),objBullet)
	if instance_exists(my_id) {
	my_id.direction=dir-6+random(12)
	my_id.speed=12+random(4)
	my_id.image_angle=my_id.direction
	}
	}
	my_id=instance_create(x+lengthdir_x(5,dir-5*image_yscale),y+lengthdir_y(5,dir-5*image_yscale),objShell)
	my_id.sprite_index=sprUziShell
	my_id.image_angle=dir
	my_id.direction=dir-90*image_yscale-20+random(30)
	my_id.speed=1+random(3)
	light=20
	mask_index=sprMask
	}
	}

	if sprite_index=sprSonWalkMendoza {
	if reload>0 reload-=1 else {
	sprite_index=sprSonAttackMendoza
	image_speed=0.5
	sound_play(sndMendoza)
	scrHearPlayer()
	ammo-=1
	shake=3
	reload=5
	global.shake=6
	mask_index=sprWeaponMask
	if place_meeting(x+lengthdir_x(8,dir),y+lengthdir_y(8,dir),objSolid) or place_meeting(x+lengthdir_x(12,dir),y+lengthdir_y(12,dir),objEditorDoorV) {
	my_id=instance_create(x,y,objSmokeHit)
	global.dir=dir
	with my_id move_contact_all(global.dir,26)
	} else {
	my_id=instance_create(x+lengthdir_x(26,dir),y+lengthdir_y(26,dir),objBullet)
	if instance_exists(my_id) {
	my_id.direction=dir-3+random(6)
	my_id.speed=12+random(4)
	my_id.image_angle=my_id.direction
	}
	}
	my_id=instance_create(x+lengthdir_x(5,dir-5*image_yscale),y+lengthdir_y(5,dir-5*image_yscale),objShell)
	my_id.sprite_index=sprUziShell
	my_id.image_angle=dir
	my_id.direction=dir-90*image_yscale-20+random(30)
	my_id.speed=1+random(3)
	light=20
	mask_index=sprMask
	}
	}

	if sprite_index=sprSonWalkKalashnikov {
	if reload>0 reload-=1 else {
	sprite_index=sprSonAttackKalashnikov
	image_speed=0.5
	sound_play(sndKalashnikov)
	scrHearPlayer()
	ammo-=1
	shake=3
	reload=6
	global.shake=6
	mask_index=sprWeaponMask
	if place_meeting(x+lengthdir_x(8,dir),y+lengthdir_y(8,dir),objSolid) or place_meeting(x+lengthdir_x(12,dir),y+lengthdir_y(12,dir),objEditorDoorV) {
	my_id=instance_create(x,y,objSmokeHit)
	global.dir=dir
	with my_id move_contact_all(global.dir,26)
	} else {
	my_id=instance_create(x+lengthdir_x(26,dir),y+lengthdir_y(26,dir),objBullet)
	if instance_exists(my_id) {
	my_id.direction=dir-3+random(6)
	my_id.speed=12+random(4)
	my_id.image_angle=my_id.direction
	}
	}
	my_id=instance_create(x+lengthdir_x(5,dir-5*image_yscale),y+lengthdir_y(5,dir-5*image_yscale),objShell)
	my_id.sprite_index=sprUziShell
	my_id.image_angle=dir
	my_id.direction=dir-90*image_yscale-20+random(30)
	my_id.speed=1+random(3)
	light=20
	mask_index=sprMask
	}
	}

	if sprite_index=sprSonWalkUzi {
	if reload>0 reload-=1 else {
	sprite_index=sprSonAttackUzi
	image_speed=0.5
	sound_play(sndUzi)
	scrHearPlayer()
	ammo-=1
	shake=3
	reload=3
	global.shake=3
	mask_index=sprWeaponMask
	if place_meeting(x+lengthdir_x(8,dir),y+lengthdir_y(8,dir),objSolid) or place_meeting(x+lengthdir_x(12,dir),y+lengthdir_y(12,dir),objEditorDoorV) {
	my_id=instance_create(x,y,objSmokeHit)
	global.dir=dir
	with my_id move_contact_all(global.dir,26)
	} else {
	my_id=instance_create(x+lengthdir_x(26,dir),y+lengthdir_y(26,dir),objBullet)
	if instance_exists(my_id) {
	my_id.direction=dir-3+random(6)
	my_id.speed=12+random(4)
	my_id.image_angle=my_id.direction
	}
	}
	my_id=instance_create(x+lengthdir_x(5,dir-5*image_yscale),y+lengthdir_y(5,dir-5*image_yscale),objShell)
	my_id.sprite_index=sprUziShell
	my_id.image_angle=dir
	my_id.direction=dir-90*image_yscale-20+random(30)
	my_id.speed=1+random(3)
	light=20
	mask_index=sprMask
	}
	}

	if sprite_index=sprSonWalkMagnum {
	if reload>0 reload-=1 else {
	sprite_index=sprSonAttackMagnum
	image_speed=0.5
	sound_play(sndMagnum)
	scrHearPlayer()
	ammo-=1
	shake=3
	reload=14
	global.shake=6
	mask_index=sprWeaponMask
	if place_meeting(x+lengthdir_x(8,dir),y+lengthdir_y(8,dir),objSolid) or place_meeting(x+lengthdir_x(12,dir),y+lengthdir_y(12,dir),objEditorDoorV) {
	my_id=instance_create(x,y,objSmokeHit)
	global.dir=dir
	with my_id move_contact_all(global.dir,26)
	} else {
	my_id=instance_create(x+lengthdir_x(26,dir),y+lengthdir_y(26,dir),objBullet)
	if instance_exists(my_id) {
	my_id.direction=dir-6+random(12)
	my_id.speed=12+random(4)
	my_id.image_angle=my_id.direction
	}
	}
	mask_index=sprMask
	}
	}

	if sprite_index=sprSonWalkSilencer {
	if reload>0 reload-=1 else {
	sprite_index=sprSonAttackSilencer
	image_speed=0.5
	sound_play(sndSilencer)
	ammo-=1
	shake=3
	reload=14
	global.shake=6
	mask_index=sprWeaponMask
	if place_meeting(x+lengthdir_x(8,dir),y+lengthdir_y(8,dir),objSolid) or place_meeting(x+lengthdir_x(12,dir),y+lengthdir_y(12,dir),objEditorDoorV) {
	my_id=instance_create(x,y,objSmokeHit)
	global.dir=dir
	with my_id move_contact_all(global.dir,26)
	} else {
	my_id=instance_create(x+lengthdir_x(26,dir),y+lengthdir_y(26,dir),objBullet)
	if instance_exists(my_id) {
	my_id.direction=dir-6+random(12)
	my_id.speed=12+random(4)
	my_id.image_angle=my_id.direction
	}
	}
	my_id=instance_create(x+lengthdir_x(5,dir-5*image_yscale),y+lengthdir_y(5,dir-5*image_yscale),objShell)
	my_id.sprite_index=sprUziShell
	my_id.image_angle=dir
	my_id.direction=dir-90*image_yscale-20+random(30)
	my_id.speed=1+random(3)
	light=20
	mask_index=sprMask
	}
	}

	if sprite_index=sprSonWalkSpecial or sprite_index=sprSonTurnSpecial {
	if reload>0 reload-=1 else {
	sound_play(sndUzi)
	scrHearPlayer()
	ammo-=1
	shake=3
	reload=3
	global.shake=6
	mask_index=sprWeaponMask
	if place_meeting(x+lengthdir_x(8,armangle1),y+lengthdir_y(8,armangle1),objSolid) or place_meeting(x+lengthdir_x(12,armangle1),y+lengthdir_y(12,armangle1),objEditorDoorV) {
	my_id=instance_create(x,y,objSmokeHit)
	global.dir=armangle1
	with my_id move_contact_all(global.dir,26)
	} else {
	my_id=instance_create(x+lengthdir_x(32,armangle1)+lengthdir_x(5,dir+90),y+lengthdir_y(32,armangle1)+lengthdir_y(5,dir+90),objBullet)
	if instance_exists(my_id) {
	my_id.direction=armangle1-4+random(8)
	my_id.speed=12+random(4)
	my_id.image_angle=my_id.direction
	}
	}

	my_id=instance_create(x+lengthdir_x(12,armangle1-5*image_yscale)+lengthdir_x(7,dir+90),y+lengthdir_y(12,armangle1-5*image_yscale)+lengthdir_y(7,dir+90),objShell)
	my_id.sprite_index=sprUziShell
	my_id.image_angle=dir
	my_id.direction=armangle1-90*image_yscale-20+random(30)
	my_id.speed=1+random(3)

	if ammo>1 {
	ammo-=1
	if place_meeting(x+lengthdir_x(8,armangle2),y+lengthdir_y(8,armangle2),objSolid) or place_meeting(x+lengthdir_x(12,armangle2),y+lengthdir_y(12,armangle2),objEditorDoorV) {
	my_id=instance_create(x,y,objSmokeHit)
	global.dir=armangle2
	with my_id move_contact_all(global.dir,26)
	} else {
	my_id=instance_create(x+lengthdir_x(32,armangle2)+lengthdir_x(7,dir-90),y+lengthdir_y(32,armangle2)+lengthdir_y(7,dir-90),objBullet)
	if instance_exists(my_id) {
	my_id.direction=armangle2-4+random(8)
	my_id.speed=12+random(4)
	my_id.image_angle=my_id.direction
	}
	}
	my_id=instance_create(x+lengthdir_x(12,armangle2+5*image_yscale)+lengthdir_x(5,dir-90),y+lengthdir_y(12,armangle2+5*image_yscale)+lengthdir_y(5,dir-90),objShell)
	my_id.sprite_index=sprUziShell
	my_id.image_angle=dir
	my_id.direction=armangle2-90*image_yscale-20+random(30)
	my_id.speed=1+random(3)
	}
	light=20
	mask_index=sprMask
	}
	}


	}



	//HENCHMAN
	if sprite_index=sprHenchmanWalkUnarmed and (instance_exists(objEnemy) or instance_exists(objKnockedOut)) {
	image_speed=0.35
	image_index=1
	reload=25
	sound_play(choose(sndSwing1,sndSwing2)) 
	sprite_index=sprHenchmanAttackPunch 
	}
	if sprite_index=sprHenchmanWalkUnarmed and instance_exists(objBoxingBag) {
	if point_distance(x,y,objBoxingBag.x,objBoxingBag.y)<56 {
	image_speed=0.35
	image_index=1
	reload=25
	sound_play(choose(sndSwing1,sndSwing2)) 
	sprite_index=sprHenchmanAttackPunch 
	}
	}

	if sprite_index=sprHenchmanWalkChain {
	image_speed=0.35
	image_index=1
	reload=32
	sound_play(choose(sndSwing1,sndSwing2)) 
	sprite_index=sprHenchmanAttackChain 
	}
	if sprite_index=sprHenchmanWalkKnife {
	image_speed=0.6
	image_index=1
	reload=16
	sound_play(choose(sndSwing1,sndSwing2)) 
	sprite_index=sprHenchmanAttackKnife 
	}
	if sprite_index=sprHenchmanWalkBat {
	image_speed=0.35
	image_index=1
	reload=30
	sound_play(choose(sndSwing1,sndSwing2)) 
	sprite_index=sprHenchmanAttackBat 
	}
	if sprite_index=sprHenchmanWalkPipe {
	image_speed=0.35
	image_index=1
	reload=25
	sound_play(choose(sndSwing1,sndSwing2)) 
	sprite_index=sprHenchmanAttackPipe 
	}

	if ammo>0 {
	angle=direction
	if sprite_index=sprHenchmanWalkShotgun {
	if reload>0 reload-=1 else {
	sprite_index=sprHenchmanAttackShotgun
	image_speed=0.5
	sound_play(sndShotgun)
	scrHearPlayer()
	ammo-=1
	shake=3
	reload=30
	global.shake=6
	mask_index=sprWeaponMask
	if place_meeting(x+lengthdir_x(8,dir),y+lengthdir_y(8,dir),objSolid) or place_meeting(x+lengthdir_x(12,dir),y+lengthdir_y(12,dir),objEditorDoorV) {
	repeat (8) {
	my_id=instance_create(x,y,objSmokeHit)
	global.dir=dir
	with my_id move_contact_all(global.dir,26)
	}
	} else {
	repeat (8) {
	my_id=instance_create(x+lengthdir_x(26,dir),y+lengthdir_y(26,dir),objBullet)
	if instance_exists(my_id) {
	my_id.direction=dir-6+random(12)
	my_id.speed=12+random(4)
	my_id.image_angle=my_id.direction
	}
	}
	}
	my_id=instance_create(x+lengthdir_x(5,dir-5*image_yscale),y+lengthdir_y(5,dir-5*image_yscale),objShell)
	my_id.sprite_index=sprShotgunShell
	my_id.image_angle=dir
	my_id.direction=dir-90*image_yscale-20+random(30)
	my_id.speed=1+random(3)
	light=20
	mask_index=sprMask
	}
	}

	if sprite_index=sprHenchmanWalkUzi {
	if reload>0 reload-=1 else {
	sprite_index=sprHenchmanAttackUzi
	image_speed=0.5
	sound_play(sndUzi)
	scrHearPlayer()
	ammo-=1
	shake=3
	reload=3
	global.shake=6
	mask_index=sprWeaponMask
	if place_meeting(x+lengthdir_x(8,dir),y+lengthdir_y(8,dir),objSolid) or place_meeting(x+lengthdir_x(12,dir),y+lengthdir_y(12,dir),objEditorDoorV) {
	my_id=instance_create(x,y,objSmokeHit)
	global.dir=dir
	with my_id move_contact_all(global.dir,26)
	} else {
	my_id=instance_create(x+lengthdir_x(26,dir),y+lengthdir_y(26,dir),objBullet)
	if instance_exists(my_id) {
	my_id.direction=dir-6+random(12)
	my_id.speed=12+random(4)
	my_id.image_angle=my_id.direction
	}
	}
	my_id=instance_create(x+lengthdir_x(5,dir-5*image_yscale),y+lengthdir_y(5,dir-5*image_yscale),objShell)
	my_id.sprite_index=sprUziShell
	my_id.image_angle=dir
	my_id.direction=dir-90*image_yscale-20+random(30)
	my_id.speed=1+random(3)
	light=20
	mask_index=sprMask
	}
	}

	if sprite_index=sprHenchmanWalk9mm {
	if reload>0 reload-=1 else {
	sprite_index=sprHenchmanAttack9mm
	image_speed=0.5
	sound_play(snd9mm)
	scrHearPlayer()
	ammo-=1
	shake=3
	reload=14
	global.shake=6
	mask_index=sprWeaponMask
	if place_meeting(x+lengthdir_x(8,dir),y+lengthdir_y(8,dir),objSolid) or place_meeting(x+lengthdir_x(12,dir),y+lengthdir_y(12,dir),objEditorDoorV) {
	my_id=instance_create(x,y,objSmokeHit)
	global.dir=dir
	with my_id move_contact_all(global.dir,26)
	} else {
	my_id=instance_create(x+lengthdir_x(26,dir),y+lengthdir_y(26,dir),objBullet)
	if instance_exists(my_id) {
	my_id.direction=dir-6+random(12)
	my_id.speed=12+random(4)
	my_id.image_angle=my_id.direction
	}
	}
	my_id=instance_create(x+lengthdir_x(5,dir-5*image_yscale),y+lengthdir_y(5,dir-5*image_yscale),objShell)
	my_id.sprite_index=sprUziShell
	my_id.image_angle=dir
	my_id.direction=dir-90*image_yscale-20+random(30)
	my_id.speed=1+random(3)
	light=20
	mask_index=sprMask
	}
	}

	if sprite_index=sprHenchmanWalkSilencer {
	if reload>0 reload-=1 else {
	sprite_index=sprHenchmanAttackSilencer
	image_speed=0.5
	sound_play(sndSilencer)
	ammo-=1
	shake=3
	reload=14
	global.shake=6
	mask_index=sprWeaponMask
	if place_meeting(x+lengthdir_x(8,dir),y+lengthdir_y(8,dir),objSolid) or place_meeting(x+lengthdir_x(12,dir),y+lengthdir_y(12,dir),objEditorDoorV) {
	my_id=instance_create(x,y,objSmokeHit)
	global.dir=dir
	with my_id move_contact_all(global.dir,26)
	} else {
	my_id=instance_create(x+lengthdir_x(26,dir),y+lengthdir_y(26,dir),objBullet)
	if instance_exists(my_id) {
	my_id.direction=dir-6+random(12)
	my_id.speed=12+random(4)
	my_id.image_angle=my_id.direction
	}
	}
	my_id=instance_create(x+lengthdir_x(5,dir-5*image_yscale),y+lengthdir_y(5,dir-5*image_yscale),objShell)
	my_id.sprite_index=sprUziShell
	my_id.image_angle=dir
	my_id.direction=dir-90*image_yscale-20+random(30)
	my_id.speed=1+random(3)
	light=20
	mask_index=sprMask
	}
	}

	}

	//FANS

	//Tiger
	if sprite_index=sprTigerWalkUnarmed and (instance_exists(objEnemy) or instance_exists(objKnockedOut)) {

	image_speed=0.35
	image_index=1
	reload=20
	sound_play(choose(sndSwing1,sndSwing2))
	left=-left
	if left=1 sprite_index=sprTigerAttackPunch1 else sprite_index=sprTigerAttackPunch2
	}

	//Zebra

	//Melee
	if sprite_index=sprZebraWalkUnarmed and (instance_exists(objEnemy) or instance_exists(objKnockedOut)) {
	image_speed=0.35
	image_index=1
	reload=25
	sound_play(choose(sndSwing1,sndSwing2)) 
	sprite_index=sprZebraAttackPunch 
	}
	if sprite_index=sprZebraWalkChain {
	image_speed=0.35
	image_index=1
	reload=32
	sound_play(choose(sndSwing1,sndSwing2)) 
	sprite_index=sprZebraAttackChain 
	}
	if sprite_index=sprZebraWalkKnife {
	image_speed=0.6
	image_index=1
	reload=16
	sound_play(choose(sndSwing1,sndSwing2)) 
	sprite_index=sprZebraAttackKnife 
	}
	if sprite_index=sprZebraWalkBat {
	image_speed=0.35
	image_index=1
	reload=30
	sound_play(choose(sndSwing1,sndSwing2)) 
	sprite_index=sprZebraAttackBat 
	}
	if sprite_index=sprZebraWalkPipe {
	image_speed=0.35
	image_index=1
	reload=25
	sound_play(choose(sndSwing1,sndSwing2)) 
	sprite_index=sprZebraAttackPipe 
	}
	if sprite_index=sprZebraWalkClub {
	image_speed=0.35
	image_index=1
	reload=25
	sound_play(choose(sndSwing1,sndSwing2)) 
	sprite_index=sprZebraAttackClub 
	}

	//Guns
	if ammo>0 {
	angle=direction
	if sprite_index=sprZebraWalkShotgun {
	if reload>0 reload-=1 else {
	sprite_index=sprZebraAttackShotgun
	image_speed=0.5
	sound_play(sndShotgun)
	scrHearPlayer()
	ammo-=1
	shake=3
	reload=30
	global.shake=6
	mask_index=sprWeaponMask
	if place_meeting(x+lengthdir_x(8,dir),y+lengthdir_y(8,dir),objSolid) or place_meeting(x+lengthdir_x(12,dir),y+lengthdir_y(12,dir),objEditorDoorV) {
	repeat (8) {
	my_id=instance_create(x,y,objSmokeHit)
	global.dir=dir
	with my_id move_contact_all(global.dir,26)
	}
	} else {
	repeat (8) {
	my_id=instance_create(x+lengthdir_x(26,dir),y+lengthdir_y(26,dir),objBullet)
	if instance_exists(my_id) {
	my_id.direction=dir-6+random(12)
	my_id.speed=12+random(4)
	my_id.image_angle=my_id.direction
	}
	}
	}
	my_id=instance_create(x+lengthdir_x(5,dir-5*image_yscale),y+lengthdir_y(5,dir-5*image_yscale),objShell)
	my_id.sprite_index=sprShotgunShell
	my_id.image_angle=dir
	my_id.direction=dir-90*image_yscale-20+random(30)
	my_id.speed=1+random(3)
	light=20
	mask_index=sprMask
	}
	}

	if sprite_index=sprZebraWalkUzi {
	if reload>0 reload-=1 else {
	sprite_index=sprZebraAttackUzi
	image_speed=0.5
	sound_play(sndUzi)
	scrHearPlayer()
	ammo-=1
	shake=3
	reload=3
	global.shake=6
	mask_index=sprWeaponMask
	if place_meeting(x+lengthdir_x(8,dir),y+lengthdir_y(8,dir),objSolid) or place_meeting(x+lengthdir_x(12,dir),y+lengthdir_y(12,dir),objEditorDoorV) {
	my_id=instance_create(x,y,objSmokeHit)
	global.dir=dir
	with my_id move_contact_all(global.dir,26)
	} else {
	my_id=instance_create(x+lengthdir_x(26,dir),y+lengthdir_y(26,dir),objBullet)
	if instance_exists(my_id) {
	my_id.direction=dir-6+random(12)
	my_id.speed=12+random(4)
	my_id.image_angle=my_id.direction
	}
	}
	my_id=instance_create(x+lengthdir_x(5,dir-5*image_yscale),y+lengthdir_y(5,dir-5*image_yscale),objShell)
	my_id.sprite_index=sprUziShell
	my_id.image_angle=dir
	my_id.direction=dir-90*image_yscale-20+random(30)
	my_id.speed=1+random(3)
	light=20
	mask_index=sprMask
	}
	}

	if sprite_index=sprZebraWalk9mm {
	if reload>0 reload-=1 else {
	sprite_index=sprZebraAttack9mm
	image_speed=0.5
	sound_play(snd9mm)
	scrHearPlayer()
	ammo-=1
	shake=3
	reload=14
	global.shake=6
	mask_index=sprWeaponMask
	if place_meeting(x+lengthdir_x(8,dir),y+lengthdir_y(8,dir),objSolid) or place_meeting(x+lengthdir_x(12,dir),y+lengthdir_y(12,dir),objEditorDoorV) {
	my_id=instance_create(x,y,objSmokeHit)
	global.dir=dir
	with my_id move_contact_all(global.dir,26)
	} else {
	my_id=instance_create(x+lengthdir_x(26,dir),y+lengthdir_y(26,dir),objBullet)
	if instance_exists(my_id) {
	my_id.direction=dir-6+random(12)
	my_id.speed=12+random(4)
	my_id.image_angle=my_id.direction
	}
	}
	my_id=instance_create(x+lengthdir_x(5,dir-5*image_yscale),y+lengthdir_y(5,dir-5*image_yscale),objShell)
	my_id.sprite_index=sprUziShell
	my_id.image_angle=dir
	my_id.direction=dir-90*image_yscale-20+random(30)
	my_id.speed=1+random(3)
	light=20
	mask_index=sprMask
	}
	}

	if sprite_index=sprZebraWalkDoubleBarrel {
	if reload>0 reload-=1 else {
	if ammo=2 sprite_index=sprZebraAttackDoubleBarrel1 else sprite_index=sprZebraAttackDoubleBarrel2
	image_speed=0.5
	sound_play(sndShotgun)
	scrHearPlayer()
	ammo-=1
	shake=3
	reload=12
	global.shake=8
	mask_index=sprWeaponMask
	if place_meeting(x+lengthdir_x(8,dir),y+lengthdir_y(8,dir),objSolid) or place_meeting(x+lengthdir_x(12,dir),y+lengthdir_y(12,dir),objEditorDoorV) {
	repeat (12) {
	my_id=instance_create(x,y,objSmokeHit)
	global.dir=dir
	with my_id move_contact_all(global.dir,26)
	}
	} else {
	repeat (12) {
	my_id=instance_create(x+lengthdir_x(26,dir),y+lengthdir_y(26,dir),objBullet)
	if instance_exists(my_id) {
	my_id.direction=dir-6+random(12)
	my_id.speed=12+random(4)
	my_id.image_angle=my_id.direction
	}
	}
	}
	light=20
	mask_index=sprMask
	}
	}

	if sprite_index=sprZebraWalkM16 {
	if reload>0 reload-=1 else {
	sprite_index=sprZebraAttackM16
	image_speed=0.5
	sound_play(sndUzi)
	scrHearPlayer()
	ammo-=1
	shake=3
	reload=3
	global.shake=6
	mask_index=sprWeaponMask
	if place_meeting(x+lengthdir_x(8,dir),y+lengthdir_y(8,dir),objSolid) or place_meeting(x+lengthdir_x(12,dir),y+lengthdir_y(12,dir),objEditorDoorV) {
	my_id=instance_create(x,y,objSmokeHit)
	global.dir=dir
	with my_id move_contact_all(global.dir,26)
	} else {
	my_id=instance_create(x+lengthdir_x(26,dir),y+lengthdir_y(26,dir),objBullet)
	if instance_exists(my_id) {
	my_id.direction=dir-6+random(12)
	my_id.speed=12+random(4)
	my_id.image_angle=my_id.direction
	}
	}
	my_id=instance_create(x+lengthdir_x(5,dir-5*image_yscale),y+lengthdir_y(5,dir-5*image_yscale),objShell)
	my_id.sprite_index=sprM16Shell
	my_id.image_angle=dir
	my_id.direction=dir-90*image_yscale-20+random(30)
	my_id.speed=1+random(3)
	light=20
	mask_index=sprMask
	}
	}

	if sprite_index=sprZebraWalkSilencer {
	if reload>0 reload-=1 else {
	sprite_index=sprZebraAttackSilencer
	image_speed=0.5
	sound_play(sndSilencer)
	ammo-=1
	shake=3
	reload=12
	global.shake=6
	mask_index=sprWeaponMask
	if place_meeting(x+lengthdir_x(8,dir),y+lengthdir_y(8,dir),objSolid) or place_meeting(x+lengthdir_x(12,dir),y+lengthdir_y(12,dir),objEditorDoorV) {
	my_id=instance_create(x,y,objSmokeHit)
	global.dir=dir
	with my_id move_contact_all(global.dir,26)
	} else {
	my_id=instance_create(x+lengthdir_x(26,dir),y+lengthdir_y(26,dir),objBullet)
	if instance_exists(my_id) {
	my_id.direction=dir-6+random(12)
	my_id.speed=12+random(4)
	my_id.image_angle=my_id.direction
	}
	}
	my_id=instance_create(x+lengthdir_x(5,dir-5*image_yscale),y+lengthdir_y(5,dir-5*image_yscale),objShell)
	my_id.sprite_index=sprUziShell
	my_id.image_angle=dir
	my_id.direction=dir-90*image_yscale-20+random(30)
	my_id.speed=1+random(3)
	light=20
	mask_index=sprMask
	}
	}

	if sprite_index=sprZebraWalkKalashnikov {
	if reload>0 reload-=1 else {
	sprite_index=sprZebraAttackKalashnikov
	image_speed=0.5
	sound_play(sndKalashnikov)
	scrHearPlayer()
	ammo-=1
	shake=3
	reload=6
	global.shake=6
	mask_index=sprWeaponMask
	if place_meeting(x+lengthdir_x(8,dir),y+lengthdir_y(8,dir),objSolid) or place_meeting(x+lengthdir_x(12,dir),y+lengthdir_y(12,dir),objEditorDoorV) {
	my_id=instance_create(x,y,objSmokeHit)
	global.dir=dir
	with my_id move_contact_all(global.dir,26)
	} else {
	my_id=instance_create(x+lengthdir_x(26,dir),y+lengthdir_y(26,dir),objBullet)
	if instance_exists(my_id) {
	my_id.direction=dir-6+random(12)
	my_id.speed=12+random(4)
	my_id.image_angle=my_id.direction
	}
	}
	my_id=instance_create(x+lengthdir_x(5,dir-5*image_yscale),y+lengthdir_y(5,dir-5*image_yscale),objShell)
	my_id.sprite_index=sprM16Shell
	my_id.image_angle=dir
	my_id.direction=dir-90*image_yscale-20+random(30)
	my_id.speed=1+random(3)
	light=20
	mask_index=sprMask
	}
	}
	}

	//BEAR

	if sprite_index=sprBearWalkUnarmed and (instance_exists(objEnemy) or instance_exists(objKnockedOut)) {
	image_speed=0.35
	image_index=1
	reload=25
	sound_play(choose(sndSwing1,sndSwing2)) 
	sprite_index=sprBearAttackPunch
	}
	if sprite_index=sprBearWalkChain {
	image_speed=0.35
	image_index=1
	reload=32
	sound_play(choose(sndSwing1,sndSwing2)) 
	sprite_index=sprBearAttackChain 
	}
	if sprite_index=sprBearWalkKnife {
	image_speed=0.6
	image_index=1
	reload=16
	sound_play(choose(sndSwing1,sndSwing2)) 
	sprite_index=sprBearAttackKnife 
	}
	if sprite_index=sprBearWalkBat {
	image_speed=0.35
	image_index=1
	reload=30
	sound_play(choose(sndSwing1,sndSwing2)) 
	sprite_index=sprBearAttackBat 
	}
	if sprite_index=sprBearWalkPipe {
	image_speed=0.35
	image_index=1
	reload=25
	sound_play(choose(sndSwing1,sndSwing2)) 
	sprite_index=sprBearAttackPipe 
	}
	if sprite_index=sprBearWalkClub {
	image_speed=0.35
	image_index=1
	reload=25
	sound_play(choose(sndSwing1,sndSwing2)) 
	sprite_index=sprBearAttackClub 
	}



	if ammo>0 {
	angle=direction
	if sprite_index=sprBearWalkShotgun {
	if reload>0 reload-=1 else {
	sprite_index=sprBearAttackShotgun
	image_speed=0.5
	sound_play(sndShotgun)
	scrHearPlayer()
	ammo-=1
	shake=3
	reload=30
	global.shake=6
	mask_index=sprWeaponMask
	if place_meeting(x+lengthdir_x(8,dir),y+lengthdir_y(8,dir),objSolid) or place_meeting(x+lengthdir_x(12,dir),y+lengthdir_y(12,dir),objEditorDoorV) {
	repeat (8) {
	my_id=instance_create(x,y,objSmokeHit)
	global.dir=dir
	with my_id move_contact_all(global.dir,26)
	}
	} else {
	repeat (8) {
	my_id=instance_create(x+lengthdir_x(26,dir),y+lengthdir_y(26,dir),objBullet)
	if instance_exists(my_id) {
	my_id.direction=dir-6+random(12)
	my_id.speed=12+random(4)
	my_id.image_angle=my_id.direction
	}
	}
	}
	my_id=instance_create(x+lengthdir_x(5,dir-5*image_yscale),y+lengthdir_y(5,dir-5*image_yscale),objShell)
	my_id.sprite_index=sprShotgunShell
	my_id.image_angle=dir
	my_id.direction=dir-90*image_yscale-20+random(30)
	my_id.speed=1+random(3)
	light=20
	mask_index=sprMask
	}
	}

	if sprite_index=sprBearWalkUzi {
	if reload>0 reload-=1 else {
	sprite_index=sprBearAttackUzi
	image_speed=0.5
	sound_play(sndUzi)
	scrHearPlayer()
	ammo-=1
	shake=3
	reload=3
	global.shake=6
	mask_index=sprWeaponMask
	if place_meeting(x+lengthdir_x(8,dir),y+lengthdir_y(8,dir),objSolid) or place_meeting(x+lengthdir_x(12,dir),y+lengthdir_y(12,dir),objEditorDoorV) {
	my_id=instance_create(x,y,objSmokeHit)
	global.dir=dir
	with my_id move_contact_all(global.dir,26)
	} else {
	my_id=instance_create(x+lengthdir_x(26,dir),y+lengthdir_y(26,dir),objBullet)
	if instance_exists(my_id) {
	my_id.direction=dir-6+random(12)
	my_id.speed=12+random(4)
	my_id.image_angle=my_id.direction
	}
	}
	my_id=instance_create(x+lengthdir_x(5,dir-5*image_yscale),y+lengthdir_y(5,dir-5*image_yscale),objShell)
	my_id.sprite_index=sprUziShell
	my_id.image_angle=dir
	my_id.direction=dir-90*image_yscale-20+random(30)
	my_id.speed=1+random(3)
	light=20
	mask_index=sprMask
	}
	}

	if sprite_index=sprBearWalk9mm {
	if reload>0 reload-=1 else {
	sprite_index=sprBearAttack9mm
	image_speed=0.5
	sound_play(snd9mm)
	scrHearPlayer()
	ammo-=1
	shake=3
	reload=14
	global.shake=6
	mask_index=sprWeaponMask
	if place_meeting(x+lengthdir_x(8,dir),y+lengthdir_y(8,dir),objSolid) or place_meeting(x+lengthdir_x(12,dir),y+lengthdir_y(12,dir),objEditorDoorV) {
	my_id=instance_create(x,y,objSmokeHit)
	global.dir=dir
	with my_id move_contact_all(global.dir,26)
	} else {
	my_id=instance_create(x+lengthdir_x(26,dir),y+lengthdir_y(26,dir),objBullet)
	if instance_exists(my_id) {
	my_id.direction=dir-6+random(12)
	my_id.speed=12+random(4)
	my_id.image_angle=my_id.direction
	}
	}
	my_id=instance_create(x+lengthdir_x(5,dir-5*image_yscale),y+lengthdir_y(5,dir-5*image_yscale),objShell)
	my_id.sprite_index=sprUziShell
	my_id.image_angle=dir
	my_id.direction=dir-90*image_yscale-20+random(30)
	my_id.speed=1+random(3)
	light=20
	mask_index=sprMask
	}
	}

	if sprite_index=sprBearWalkSpecial or sprite_index=sprBearTurnSpecial {
	if reload>0 reload-=1 else {
	sound_play(sndUzi)
	scrHearPlayer()
	ammo-=1
	shake=3
	reload=3
	global.shake=6
	mask_index=sprWeaponMask
	if place_meeting(x+lengthdir_x(8,armangle1),y+lengthdir_y(8,armangle1),objSolid) or place_meeting(x+lengthdir_x(12,armangle1),y+lengthdir_y(12,armangle1),objEditorDoorV) {
	my_id=instance_create(x,y,objSmokeHit)
	global.dir=armangle1
	with my_id move_contact_all(global.dir,26)
	} else {
	my_id=instance_create(x+lengthdir_x(32,armangle1)+lengthdir_x(7,dir+90),y+lengthdir_y(32,armangle1)+lengthdir_y(7,dir+90),objBullet)
	if instance_exists(my_id) {
	my_id.direction=armangle1-4+random(8)
	my_id.speed=12+random(4)
	my_id.image_angle=my_id.direction
	}
	}

	my_id=instance_create(x+lengthdir_x(12,armangle1-5*image_yscale)+lengthdir_x(7,dir+90),y+lengthdir_y(12,armangle1-5*image_yscale)+lengthdir_y(7,dir+90),objShell)
	my_id.sprite_index=sprUziShell
	my_id.image_angle=dir
	my_id.direction=armangle1-90*image_yscale-20+random(30)
	my_id.speed=1+random(3)

	if ammo>1 {
	ammo-=1
	if place_meeting(x+lengthdir_x(8,armangle2),y+lengthdir_y(8,armangle2),objSolid) or place_meeting(x+lengthdir_x(12,armangle2),y+lengthdir_y(12,armangle2),objEditorDoorV) {
	my_id=instance_create(x,y,objSmokeHit)
	global.dir=armangle2
	with my_id move_contact_all(global.dir,26)
	} else {
	my_id=instance_create(x+lengthdir_x(32,armangle2)+lengthdir_x(7,dir-90),y+lengthdir_y(32,armangle2)+lengthdir_y(7,dir-90),objBullet)
	if instance_exists(my_id) {
	my_id.direction=armangle2-4+random(8)
	my_id.speed=12+random(4)
	my_id.image_angle=my_id.direction
	}
	}
	my_id=instance_create(x+lengthdir_x(12,armangle2+5*image_yscale)+lengthdir_x(7,dir-90),y+lengthdir_y(12,armangle2+5*image_yscale)+lengthdir_y(7,dir-90),objShell)
	my_id.sprite_index=sprUziShell
	my_id.image_angle=dir
	my_id.direction=armangle2-90*image_yscale-20+random(30)
	my_id.speed=1+random(3)
	}
	light=20
	mask_index=sprMask
	}
	}


	if sprite_index=sprBearWalkDoubleBarrel {
	if reload>0 reload-=1 else {
	if ammo=2 sprite_index=sprBearAttackDoubleBarrel1 else sprite_index=sprBearAttackDoubleBarrel2
	image_speed=0.5
	sound_play(sndShotgun)
	scrHearPlayer()
	ammo-=1
	shake=3
	reload=12
	global.shake=8
	mask_index=sprWeaponMask
	if place_meeting(x+lengthdir_x(8,dir),y+lengthdir_y(8,dir),objSolid) or place_meeting(x+lengthdir_x(12,dir),y+lengthdir_y(12,dir),objEditorDoorV) {
	repeat (12) {
	my_id=instance_create(x,y,objSmokeHit)
	global.dir=dir
	with my_id move_contact_all(global.dir,26)
	}
	} else {
	repeat (12) {
	my_id=instance_create(x+lengthdir_x(26,dir),y+lengthdir_y(26,dir),objBullet)
	if instance_exists(my_id) {
	my_id.direction=dir-6+random(12)
	my_id.speed=12+random(4)
	my_id.image_angle=my_id.direction
	}
	}
	}
	light=20
	mask_index=sprMask
	}
	}

	if sprite_index=sprBearWalkM16 {
	if reload>0 reload-=1 else {
	sprite_index=sprBearAttackM16
	image_speed=0.5
	sound_play(sndUzi)
	scrHearPlayer()
	ammo-=1
	shake=3
	reload=3
	global.shake=6
	mask_index=sprWeaponMask
	if place_meeting(x+lengthdir_x(8,dir),y+lengthdir_y(8,dir),objSolid) or place_meeting(x+lengthdir_x(12,dir),y+lengthdir_y(12,dir),objEditorDoorV) {
	my_id=instance_create(x,y,objSmokeHit)
	global.dir=dir
	with my_id move_contact_all(global.dir,26)
	} else {
	my_id=instance_create(x+lengthdir_x(26,dir),y+lengthdir_y(26,dir),objBullet)
	if instance_exists(my_id) {
	my_id.direction=dir-6+random(12)
	my_id.speed=12+random(4)
	my_id.image_angle=my_id.direction
	}
	}
	my_id=instance_create(x+lengthdir_x(5,dir-5*image_yscale),y+lengthdir_y(5,dir-5*image_yscale),objShell)
	my_id.sprite_index=sprM16Shell
	my_id.image_angle=dir
	my_id.direction=dir-90*image_yscale-20+random(30)
	my_id.speed=1+random(3)
	light=20
	mask_index=sprMask
	}
	}

	if sprite_index=sprBearWalkSilencer {
	if reload>0 reload-=1 else {
	sprite_index=sprBearAttackSilencer
	image_speed=0.5
	sound_play(sndSilencer)
	ammo-=1
	shake=3
	reload=12
	global.shake=6
	mask_index=sprWeaponMask
	if place_meeting(x+lengthdir_x(8,dir),y+lengthdir_y(8,dir),objSolid) or place_meeting(x+lengthdir_x(12,dir),y+lengthdir_y(12,dir),objEditorDoorV) {
	my_id=instance_create(x,y,objSmokeHit)
	global.dir=dir
	with my_id move_contact_all(global.dir,26)
	} else {
	my_id=instance_create(x+lengthdir_x(26,dir),y+lengthdir_y(26,dir),objBullet)
	if instance_exists(my_id) {
	my_id.direction=dir-6+random(12)
	my_id.speed=12+random(4)
	my_id.image_angle=my_id.direction
	}
	}
	my_id=instance_create(x+lengthdir_x(5,dir-5*image_yscale),y+lengthdir_y(5,dir-5*image_yscale),objShell)
	my_id.sprite_index=sprUziShell
	my_id.image_angle=dir
	my_id.direction=dir-90*image_yscale-20+random(30)
	my_id.speed=1+random(3)
	light=20
	mask_index=sprMask
	}
	}

	if sprite_index=sprBearWalkKalashnikov {
	if reload>0 reload-=1 else {
	sprite_index=sprBearAttackKalashnikov
	image_speed=0.5
	sound_play(sndKalashnikov)
	scrHearPlayer()
	ammo-=1
	shake=3
	reload=6
	global.shake=6
	mask_index=sprWeaponMask
	if place_meeting(x+lengthdir_x(8,dir),y+lengthdir_y(8,dir),objSolid) or place_meeting(x+lengthdir_x(12,dir),y+lengthdir_y(12,dir),objEditorDoorV) {
	my_id=instance_create(x,y,objSmokeHit)
	global.dir=dir
	with my_id move_contact_all(global.dir,26)
	} else {
	my_id=instance_create(x+lengthdir_x(26,dir),y+lengthdir_y(26,dir),objBullet)
	if instance_exists(my_id) {
	my_id.direction=dir-6+random(12)
	my_id.speed=12+random(4)
	my_id.image_angle=my_id.direction
	}
	}
	my_id=instance_create(x+lengthdir_x(5,dir-5*image_yscale),y+lengthdir_y(5,dir-5*image_yscale),objShell)
	my_id.sprite_index=sprM16Shell
	my_id.image_angle=dir
	my_id.direction=dir-90*image_yscale-20+random(30)
	my_id.speed=1+random(3)
	light=20
	mask_index=sprMask
	}
	}

	}


	/*
	reload=3
	global.shake=3
	sound_play(sndM16)
	my_id=instance_create(x+lengthdir_x(32,armangle1)+lengthdir_x(7,dir+90),y+lengthdir_y(32,armangle1)+lengthdir_y(7,dir+90),objBullet)
	my_id.direction=armangle1-4+random(8)
	my_id.speed=12
	my_id.image_angle=my_id.direction
	if ammo>0 {
	ammo-=1
	my_id=instance_create(x+lengthdir_x(32,armangle2)+lengthdir_x(7,dir-90),y+lengthdir_y(32,armangle2)+lengthdir_y(7,dir-90),objBullet)
	my_id.direction=armangle2-4+random(8)
	my_id.speed=12
	my_id.image_angle=my_id.direction
	}
	}
	}

	}
	*/

	//SWAN


	if sprite_index=sprSwanWalkShotgun {
	if reload>0 reload-=1 else {
	if instance_exists(global.enemy) dir=point_direction(x,y,global.enemy.x,global.enemy.y) else dir=point_direction(x,y,global.mousex,global.mousey)
	sprite_index=sprSwanAttackShotgun
	image_speed=0.5
	sound_play(sndShotgun)
	scrHearPlayer()
	ammo-=1
	shake=3
	reload=30
	global.shake=6
	mask_index=sprWeaponMask
	if place_meeting(x+lengthdir_x(8,dir),y+lengthdir_y(8,dir),objSolid) or place_meeting(x+lengthdir_x(12,dir),y+lengthdir_y(12,dir),objEditorDoorV) {
	repeat (8) {
	my_id=instance_create(x,y,objSmokeHit)
	global.dir=dir
	with my_id move_contact_all(global.dir,26)
	}
	} else {
	repeat (8) {
	my_id=instance_create(x+lengthdir_x(26,dir),y+lengthdir_y(26,dir),objBullet)
	if instance_exists(my_id) {
	my_id.direction=dir-6+random(12)
	my_id.speed=12+random(4)
	my_id.image_angle=my_id.direction
	}
	}
	}
	my_id=instance_create(x+lengthdir_x(5,dir-5*image_yscale),y+lengthdir_y(5,dir-5*image_yscale),objShell)
	my_id.sprite_index=sprShotgunShell
	my_id.image_angle=dir
	my_id.direction=dir-90*image_yscale-20+random(30)
	my_id.speed=1+random(3)
	light=20
	mask_index=sprMask
	}
	}

	if sprite_index=sprSwanWalkUzi {
	if reload>0 reload-=1 else {
	if instance_exists(global.enemy) dir=point_direction(x,y,global.enemy.x,global.enemy.y) else dir=point_direction(x,y,global.mousex,global.mousey)
	sprite_index=sprSwanAttackUzi
	image_speed=0.5
	sound_play(sndUzi)
	scrHearPlayer()
	ammo-=1
	shake=3
	reload=3
	global.shake=6
	mask_index=sprWeaponMask
	if place_meeting(x+lengthdir_x(8,dir),y+lengthdir_y(8,dir),objSolid) or place_meeting(x+lengthdir_x(12,dir),y+lengthdir_y(12,dir),objEditorDoorV) {
	my_id=instance_create(x,y,objSmokeHit)
	global.dir=dir
	with my_id move_contact_all(global.dir,26)
	} else {
	my_id=instance_create(x+lengthdir_x(26,dir),y+lengthdir_y(26,dir),objBullet)
	if instance_exists(my_id) {
	my_id.direction=dir-6+random(12)
	my_id.speed=12+random(4)
	my_id.image_angle=my_id.direction
	}
	}
	my_id=instance_create(x+lengthdir_x(5,dir-5*image_yscale),y+lengthdir_y(5,dir-5*image_yscale),objShell)
	my_id.sprite_index=sprUziShell
	my_id.image_angle=dir
	my_id.direction=dir-90*image_yscale-20+random(30)
	my_id.speed=1+random(3)
	light=20
	mask_index=sprMask
	}
	}

	if sprite_index=sprSwanWalk9mm {
	if reload>0 reload-=1 else {
	if instance_exists(global.enemy) dir=point_direction(x,y,global.enemy.x,global.enemy.y) else dir=point_direction(x,y,global.mousex,global.mousey)
	sprite_index=sprSwanAttack9mm
	image_speed=0.5
	sound_play(snd9mm)
	scrHearPlayer()
	ammo-=1
	shake=3
	reload=14
	global.shake=6
	mask_index=sprWeaponMask
	if place_meeting(x+lengthdir_x(8,dir),y+lengthdir_y(8,dir),objSolid) or place_meeting(x+lengthdir_x(12,dir),y+lengthdir_y(12,dir),objEditorDoorV) {
	my_id=instance_create(x,y,objSmokeHit)
	global.dir=dir
	with my_id move_contact_all(global.dir,26)
	} else {
	my_id=instance_create(x+lengthdir_x(26,dir),y+lengthdir_y(26,dir),objBullet)
	if instance_exists(my_id) {
	my_id.direction=dir-6+random(12)
	my_id.speed=12+random(4)
	my_id.image_angle=my_id.direction
	}
	}
	my_id=instance_create(x+lengthdir_x(5,dir-5*image_yscale),y+lengthdir_y(5,dir-5*image_yscale),objShell)
	my_id.sprite_index=sprUziShell
	my_id.image_angle=dir
	my_id.direction=dir-90*image_yscale-20+random(30)
	my_id.speed=1+random(3)
	light=20
	mask_index=sprMask
	}
	}

	if sprite_index=sprSwanWalkDoubleBarrel {
	if reload>0 reload-=1 else {
	if ammo=2 sprite_index=sprSwanAttackDoubleBarrel1 else sprite_index=sprSwanAttackDoubleBarrel2
	image_speed=0.5
	sound_play(sndShotgun)
	scrHearPlayer()
	ammo-=1
	shake=3
	reload=12
	global.shake=8
	mask_index=sprWeaponMask
	if place_meeting(x+lengthdir_x(8,dir),y+lengthdir_y(8,dir),objSolid) or place_meeting(x+lengthdir_x(12,dir),y+lengthdir_y(12,dir),objEditorDoorV) {
	repeat (12) {
	my_id=instance_create(x,y,objSmokeHit)
	global.dir=dir
	with my_id move_contact_all(global.dir,26)
	}
	} else {
	repeat (12) {
	my_id=instance_create(x+lengthdir_x(26,dir),y+lengthdir_y(26,dir),objBullet)
	if instance_exists(my_id) {
	my_id.direction=dir-6+random(12)
	my_id.speed=12+random(4)
	my_id.image_angle=my_id.direction
	}
	}
	}
	light=20
	mask_index=sprMask
	}
	}

	if sprite_index=sprSwanWalkM16 {
	if reload>0 reload-=1 else {
	sprite_index=sprSwanAttackM16
	image_speed=0.5
	sound_play(sndUzi)
	scrHearPlayer()
	ammo-=1
	shake=3
	reload=3
	global.shake=6
	mask_index=sprWeaponMask
	if place_meeting(x+lengthdir_x(8,dir),y+lengthdir_y(8,dir),objSolid) or place_meeting(x+lengthdir_x(12,dir),y+lengthdir_y(12,dir),objEditorDoorV) {
	my_id=instance_create(x,y,objSmokeHit)
	global.dir=dir
	with my_id move_contact_all(global.dir,26)
	} else {
	my_id=instance_create(x+lengthdir_x(26,dir),y+lengthdir_y(26,dir),objBullet)
	if instance_exists(my_id) {
	my_id.direction=dir-6+random(12)
	my_id.speed=12+random(4)
	my_id.image_angle=my_id.direction
	}
	}
	my_id=instance_create(x+lengthdir_x(5,dir-5*image_yscale),y+lengthdir_y(5,dir-5*image_yscale),objShell)
	my_id.sprite_index=sprM16Shell
	my_id.image_angle=dir
	my_id.direction=dir-90*image_yscale-20+random(30)
	my_id.speed=1+random(3)
	light=20
	mask_index=sprMask
	}
	}

	if sprite_index=sprSwanWalkSilencer {
	if reload>0 reload-=1 else {
	sprite_index=sprSwanAttackSilencer
	image_speed=0.5
	sound_play(sndSilencer)
	ammo-=1
	shake=3
	reload=12
	global.shake=6
	mask_index=sprWeaponMask
	if place_meeting(x+lengthdir_x(8,dir),y+lengthdir_y(8,dir),objSolid) or place_meeting(x+lengthdir_x(12,dir),y+lengthdir_y(12,dir),objEditorDoorV) {
	my_id=instance_create(x,y,objSmokeHit)
	global.dir=dir
	with my_id move_contact_all(global.dir,26)
	} else {
	my_id=instance_create(x+lengthdir_x(26,dir),y+lengthdir_y(26,dir),objBullet)
	if instance_exists(my_id) {
	my_id.direction=dir-6+random(12)
	my_id.speed=12+random(4)
	my_id.image_angle=my_id.direction
	}
	}
	my_id=instance_create(x+lengthdir_x(5,dir-5*image_yscale),y+lengthdir_y(5,dir-5*image_yscale),objShell)
	my_id.sprite_index=sprUziShell
	my_id.image_angle=dir
	my_id.direction=dir-90*image_yscale-20+random(30)
	my_id.speed=1+random(3)
	light=20
	mask_index=sprMask
	}
	}

	if sprite_index=sprSwanWalkKalashnikov {
	if reload>0 reload-=1 else {
	sprite_index=sprSwanAttackKalashnikov
	image_speed=0.5
	sound_play(sndKalashnikov)
	scrHearPlayer()
	ammo-=1
	shake=3
	reload=6
	global.shake=6
	mask_index=sprWeaponMask
	if place_meeting(x+lengthdir_x(8,dir),y+lengthdir_y(8,dir),objSolid) or place_meeting(x+lengthdir_x(12,dir),y+lengthdir_y(12,dir),objEditorDoorV) {
	my_id=instance_create(x,y,objSmokeHit)
	global.dir=dir
	with my_id move_contact_all(global.dir,26)
	} else {
	my_id=instance_create(x+lengthdir_x(26,dir),y+lengthdir_y(26,dir),objBullet)
	if instance_exists(my_id) {
	my_id.direction=dir-6+random(12)
	my_id.speed=12+random(4)
	my_id.image_angle=my_id.direction
	}
	}
	my_id=instance_create(x+lengthdir_x(5,dir-5*image_yscale),y+lengthdir_y(5,dir-5*image_yscale),objShell)
	my_id.sprite_index=sprM16Shell
	my_id.image_angle=dir
	my_id.direction=dir-90*image_yscale-20+random(30)
	my_id.speed=1+random(3)
	light=20
	mask_index=sprMask
	}
	}



	}



	//Nicke
	if sprite_index=sprNickeWalkKnife {
	image_speed=0.5
	image_index=1
	reload=22
	sound_play(choose(sndSwing1,sndSwing2)) 
	sprite_index=sprNickeAttackKnife 
	}

	if sprite_index=sprNickeWalkKnifeShotgun {
	image_speed=0.5
	image_index=1
	reload=22
	sound_play(choose(sndSwing1,sndSwing2)) 
	sprite_index=sprNickeAttackKnifeShotgun 
	}

	if sprite_index=sprNickeWalkKnifeMachinegun {
	image_speed=0.5
	image_index=1
	reload=22
	sound_play(choose(sndSwing1,sndSwing2)) 
	sprite_index=sprNickeAttackKnifeMachinegun 
	}

	if sprite_index=sprNickeWalkKnifeHeavy {
	image_speed=0.5
	image_index=1
	reload=22
	sound_play(choose(sndSwing1,sndSwing2)) 
	sprite_index=sprNickeAttackKnifeHeavy 
	}

	if sprite_index=sprNickeWalkKnifeFlameThrower {
	image_speed=0.5
	image_index=1
	reload=22
	sound_play(choose(sndSwing1,sndSwing2)) 
	sprite_index=sprNickeAttackKnifeFlameThrower
	}

	if sprite_index=sprNickeWalkKnifeSniper {
	image_speed=0.5
	image_index=1
	reload=22
	sound_play(choose(sndSwing1,sndSwing2)) 
	sprite_index=sprNickeAttackKnifeSniper 
	}

	if ammo>0 {
	angle=direction

	if sprite_index=sprNickeWalkHeavy {
	if reload>0 reload-=1 else {
	sprite_index=sprNickeAttackHeavy
	image_speed=0.5
	sound_play(sndHeavy)
	scrHearPlayer()
	ammo-=1
	shake=3
	reload=4+round(random(2))
	global.shake=6
	mask_index=sprWeaponMask
	if place_meeting(x+lengthdir_x(8,dir),y+lengthdir_y(8,dir),objSolid) or place_meeting(x+lengthdir_x(12,dir),y+lengthdir_y(12,dir),objEditorDoorV) {
	my_id=instance_create(x,y,objSmokeHit)
	global.dir=dir
	with my_id move_contact_all(global.dir,26)
	} else {
	my_id=instance_create(x+lengthdir_x(26,dir),y+lengthdir_y(26,dir),objBullet)
	if instance_exists(my_id) {
	my_id.direction=dir-2+random(4)
	my_id.speed=15+random(4)
	my_id.image_angle=my_id.direction
	}
	}
	my_id=instance_create(x+lengthdir_x(5,dir-5*image_yscale),y+lengthdir_y(5,dir-5*image_yscale),objShell)
	my_id.sprite_index=sprM16Shell
	my_id.image_angle=dir
	my_id.direction=dir-90*image_yscale-20+random(30)
	my_id.speed=1+random(3)
	light=20
	mask_index=sprMask
	}
	}

	if sprite_index=sprNickeWalkMachinegun{
	if reload>0 reload-=1 else {
	sprite_index=sprNickeAttackMachinegun
	image_speed=0.5
	sound_play(sndM16)
	scrHearPlayer()
	ammo-=1
	shake=3
	reload=3
	global.shake=6
	mask_index=sprWeaponMask
	if place_meeting(x+lengthdir_x(8,dir),y+lengthdir_y(8,dir),objSolid) or place_meeting(x+lengthdir_x(12,dir),y+lengthdir_y(12,dir),objEditorDoorV) {
	my_id=instance_create(x,y,objSmokeHit)
	global.dir=dir
	with my_id move_contact_all(global.dir,26)
	} else {
	my_id=instance_create(x+lengthdir_x(26,dir),y+lengthdir_y(26,dir),objBullet)
	if instance_exists(my_id) {
	my_id.direction=dir-4+random(8)
	my_id.speed=12+random(4)
	my_id.image_angle=my_id.direction
	}
	}
	my_id=instance_create(x+lengthdir_x(5,dir-5*image_yscale),y+lengthdir_y(5,dir-5*image_yscale),objShell)
	my_id.sprite_index=sprM16Shell
	my_id.image_angle=dir
	my_id.direction=dir-90*image_yscale-20+random(30)
	my_id.speed=1+random(3)
	light=20
	mask_index=sprMask
	}
	}

	if sprite_index=sprNickeWalkShotgun or sprite_index=sprNickeReloadShotgun {
	if reload>0 reload-=1 else {
	sprite_index=sprNickeAttackShotgun
	image_speed=0.5
	sound_play(sndShotgun)
	scrHearPlayer()
	ammo-=1
	shake=3
	reload=30
	global.shake=6
	mask_index=sprWeaponMask
	if place_meeting(x+lengthdir_x(8,dir),y+lengthdir_y(8,dir),objSolid) or place_meeting(x+lengthdir_x(12,dir),y+lengthdir_y(12,dir),objEditorDoorV) {
	repeat (8) {
	my_id=instance_create(x,y,objSmokeHit)
	global.dir=dir
	with my_id move_contact_all(global.dir,26)
	}
	} else {
	repeat (8) {
	my_id=instance_create(x+lengthdir_x(26,dir),y+lengthdir_y(26,dir),objBullet)
	if instance_exists(my_id) {
	my_id.direction=dir-6+random(12)
	my_id.speed=12+random(4)
	my_id.image_angle=my_id.direction
	}
	}
	}
	my_id=instance_create(x+lengthdir_x(5,dir-5*image_yscale),y+lengthdir_y(5,dir-5*image_yscale),objShell)
	my_id.sprite_index=sprShotgunShell
	my_id.image_angle=dir
	my_id.direction=dir-90*image_yscale-20+random(30)
	my_id.speed=1+random(3)
	light=20
	mask_index=sprMask
	}
	}

	if sprite_index=sprNickeWalkSniper {
	if reload>0 reload-=1 else {
	sprite_index=sprNickeAttackSniper
	image_speed=0.35
	sound_play(sndSniper)
	scrHearPlayer()
	ammo-=1
	shake=3
	reload=3
	global.shake=6
	mask_index=sprWeaponMask
	if place_meeting(x+lengthdir_x(8,dir),y+lengthdir_y(8,dir),objSolid) or place_meeting(x+lengthdir_x(12,dir),y+lengthdir_y(12,dir),objEditorDoorV) {
	my_id=instance_create(x,y,objSmokeHit)
	global.dir=dir
	with my_id move_contact_all(global.dir,26)
	} else {
	my_id=instance_create(x+lengthdir_x(26,dir),y+lengthdir_y(26,dir),objBullet)
	if instance_exists(my_id) {
	my_id.direction=dir
	my_id.speed=32
	my_id.image_xscale=2
	my_id.image_angle=my_id.direction
	}
	}
	my_id=instance_create(x+lengthdir_x(5,dir-5*image_yscale),y+lengthdir_y(5,dir-5*image_yscale),objShell)
	my_id.sprite_index=sprM16Shell
	my_id.image_angle=dir
	my_id.direction=dir-90*image_yscale-20+random(30)
	my_id.speed=1+random(3)
	light=20
	mask_index=sprMask
	}
	}


	if sprite_index=sprNickeWalkFlameThrower {
	if reload>0 reload-=1 else {
	sprite_index=sprNickeAttackFlameThrower
	image_speed=1
	//sound_play(snd9mm)
	scrHearPlayer()
	ammo-=1
	//shake=3
	reload=0
	//global.shake=6
	mask_index=sprWeaponMask
	if place_meeting(x+lengthdir_x(8,dir),y+lengthdir_y(8,dir),objSolid) or place_meeting(x+lengthdir_x(12,dir),y+lengthdir_y(12,dir),objEditorDoorV) {
	my_id=instance_create(x,y,objSmokeHit)
	global.dir=dir
	with my_id move_contact_all(global.dir,26)
	} else {
	my_id=instance_create(x+lengthdir_x(20,dir),y+lengthdir_y(20,dir),objFlame)
	if instance_exists(my_id) {
	my_id.direction=dir-1+random(2)
	my_id.speed=8
	my_id.image_angle=my_id.direction
	if instance_exists(lastflame) my_id.target=lastflame
	lastflame=my_id
	}
	}
	light=20
	mask_index=sprMask
	}
	}

	}

	//Cop

	//Melee
	if sprite_index=sprCopWalkUnarmed and (instance_exists(objEnemy) or instance_exists(objKnockedOut)) {
	image_speed=0.35
	image_index=1
	reload=25
	sound_play(choose(sndSwing1,sndSwing2)) 
	sprite_index=sprCopAttackPunch 
	}
	if sprite_index=sprCopWalkChain {
	image_speed=0.35
	image_index=1
	reload=32
	sound_play(choose(sndSwing1,sndSwing2)) 
	sprite_index=sprCopAttackChain 
	}
	if sprite_index=sprCopWalkKnife {
	image_speed=0.6
	image_index=1
	reload=16
	sound_play(choose(sndSwing1,sndSwing2)) 
	sprite_index=sprCopAttackKnife 
	}
	if sprite_index=sprCopWalkBat {
	image_speed=0.35
	image_index=1
	reload=30
	sound_play(choose(sndSwing1,sndSwing2)) 
	sprite_index=sprCopAttackBat 
	}
	if sprite_index=sprCopWalkPipe {
	image_speed=0.35
	image_index=1
	reload=25
	sound_play(choose(sndSwing1,sndSwing2)) 
	sprite_index=sprCopAttackPipe 
	}

	if sprite_index=sprCopWalkMachete {
	image_speed=0.35
	image_index=1
	reload=25
	sound_play(choose(sndSwing1,sndSwing2)) 
	sprite_index=sprCopAttackMachette 
	}
	if sprite_index=sprCopWalkStick {
	image_speed=0.35
	image_index=1
	reload=25
	sound_play(choose(sndSwing1,sndSwing2)) 
	sprite_index=sprCopAttackStick
	}

	//Guns
	if ammo>0 {
	angle=direction

	if sprite_index=sprCopWalkShotgun or sprite_index=sprCopTurnShotgun{
	if reload>0 reload-=1 else {
	if sprite_index=sprCopWalkShotgun sprite_index=sprCopAttackShotgun
	image_speed=0.5
	sound_play(sndShotgun)
	scrHearPlayer()
	ammo-=1
	shake=3
	reload=30
	global.shake=6
	mask_index=sprWeaponMask
	if place_meeting(x+lengthdir_x(8,dir),y+lengthdir_y(8,dir),objSolid) or place_meeting(x+lengthdir_x(12,dir),y+lengthdir_y(12,dir),objEditorDoorV) {
	repeat (8) {
	my_id=instance_create(x,y,objSmokeHit)
	global.dir=dir
	with my_id move_contact_all(global.dir,26)
	}
	} else {
	repeat (8) {
	my_id=instance_create(x+lengthdir_x(26,dir),y+lengthdir_y(26,dir),objBullet)
	if instance_exists(my_id) {
	my_id.direction=dir-6+random(12)
	my_id.speed=12+random(4)
	my_id.image_angle=my_id.direction
	}
	}
	}
	my_id=instance_create(x+lengthdir_x(5,dir-5*image_yscale),y+lengthdir_y(5,dir-5*image_yscale),objShell)
	my_id.sprite_index=sprShotgunShell
	my_id.image_angle=dir
	my_id.direction=dir-90*image_yscale-20+random(30)
	my_id.speed=1+random(3)
	light=20
	mask_index=sprMask
	}
	}

	if sprite_index=sprCopWalkUzi  {
	if reload>0 reload-=1 else {
	sprite_index=sprCopAttackUzi
	image_speed=0.5
	sound_play(sndUzi)
	scrHearPlayer()
	ammo-=1
	shake=3
	reload=3
	global.shake=6
	mask_index=sprWeaponMask
	if place_meeting(x+lengthdir_x(8,dir),y+lengthdir_y(8,dir),objSolid) or place_meeting(x+lengthdir_x(12,dir),y+lengthdir_y(12,dir),objEditorDoorV) {
	my_id=instance_create(x,y,objSmokeHit)
	global.dir=dir
	with my_id move_contact_all(global.dir,26)
	} else {
	my_id=instance_create(x+lengthdir_x(26,dir),y+lengthdir_y(26,dir),objBullet)
	if instance_exists(my_id) {
	my_id.direction=dir-6+random(12)
	my_id.speed=12+random(4)
	my_id.image_angle=my_id.direction
	}
	}
	my_id=instance_create(x+lengthdir_x(5,dir-5*image_yscale),y+lengthdir_y(5,dir-5*image_yscale),objShell)
	my_id.sprite_index=sprUziShell
	my_id.image_angle=dir
	my_id.direction=dir-90*image_yscale-20+random(30)
	my_id.speed=1+random(3)
	light=20
	mask_index=sprMask
	}
	}

	if sprite_index=sprCopWalkFamae  {
	if reload>0 reload-=1 else {
	sprite_index=sprCopAttackFamae
	image_speed=0.5
	sound_play(sndFamae)
	scrHearPlayer()
	ammo-=1
	shake=3
	reload=3
	global.shake=6
	mask_index=sprWeaponMask
	if place_meeting(x+lengthdir_x(8,dir),y+lengthdir_y(8,dir),objSolid) or place_meeting(x+lengthdir_x(12,dir),y+lengthdir_y(12,dir),objEditorDoorV) {
	my_id=instance_create(x,y,objSmokeHit)
	global.dir=dir
	with my_id move_contact_all(global.dir,26)
	} else {
	my_id=instance_create(x+lengthdir_x(26,dir),y+lengthdir_y(26,dir),objBullet)
	if instance_exists(my_id) {
	my_id.direction=dir-6+random(12)
	my_id.speed=12+random(4)
	my_id.image_angle=my_id.direction
	}
	}
	my_id=instance_create(x+lengthdir_x(5,dir-5*image_yscale),y+lengthdir_y(5,dir-5*image_yscale),objShell)
	my_id.sprite_index=sprUziShell
	my_id.image_angle=dir
	my_id.direction=dir-90*image_yscale-20+random(30)
	my_id.speed=1+random(3)
	light=20
	mask_index=sprMask
	}
	}

	if sprite_index=sprCopWalkMendoza  {
	if reload>0 reload-=1 else {
	sprite_index=sprCopAttackMendoza
	image_speed=0.5
	sound_play(sndMendoza)
	scrHearPlayer()
	ammo-=1
	shake=3
	reload=5
	global.shake=6
	mask_index=sprWeaponMask
	if place_meeting(x+lengthdir_x(8,dir),y+lengthdir_y(8,dir),objSolid) or place_meeting(x+lengthdir_x(12,dir),y+lengthdir_y(12,dir),objEditorDoorV) {
	my_id=instance_create(x,y,objSmokeHit)
	global.dir=dir
	with my_id move_contact_all(global.dir,26)
	} else {
	my_id=instance_create(x+lengthdir_x(26,dir),y+lengthdir_y(26,dir),objBullet)
	if instance_exists(my_id) {
	my_id.direction=dir-6+random(12)
	my_id.speed=12+random(4)
	my_id.image_angle=my_id.direction
	}
	}
	my_id=instance_create(x+lengthdir_x(5,dir-5*image_yscale),y+lengthdir_y(5,dir-5*image_yscale),objShell)
	my_id.sprite_index=sprUziShell
	my_id.image_angle=dir
	my_id.direction=dir-90*image_yscale-20+random(30)
	my_id.speed=1+random(3)
	light=20
	mask_index=sprMask
	}
	}

	if sprite_index=sprCopWalk9mm {
	if reload>0 reload-=1 else {
	sprite_index=sprCopAttack9mm
	image_speed=0.5
	sound_play(snd9mm)
	scrHearPlayer()
	ammo-=1
	shake=3
	reload=14
	global.shake=6
	mask_index=sprWeaponMask
	if place_meeting(x+lengthdir_x(8,dir),y+lengthdir_y(8,dir),objSolid) or place_meeting(x+lengthdir_x(12,dir),y+lengthdir_y(12,dir),objEditorDoorV) {
	my_id=instance_create(x,y,objSmokeHit)
	global.dir=dir
	with my_id move_contact_all(global.dir,26)
	} else {
	my_id=instance_create(x+lengthdir_x(26,dir),y+lengthdir_y(26,dir),objBullet)
	if instance_exists(my_id) {
	my_id.direction=dir-6+random(12)
	my_id.speed=12+random(4)
	my_id.image_angle=my_id.direction
	}
	}
	my_id=instance_create(x+lengthdir_x(5,dir-5*image_yscale),y+lengthdir_y(5,dir-5*image_yscale),objShell)
	my_id.sprite_index=sprUziShell
	my_id.image_angle=dir
	my_id.direction=dir-90*image_yscale-20+random(30)
	my_id.speed=1+random(3)
	light=20
	mask_index=sprMask
	}
	}

	}

	//RAT


	if sprite_index=sprRatWalkUnarmed and (instance_exists(objEnemy) or instance_exists(objKnockedOut)) {
	image_speed=0.35
	image_index=1
	reload=25
	sound_play(choose(sndSwing1,sndSwing2)) 
	sprite_index=sprRatAttackPunch 
	}
	if sprite_index=sprRatWalkKnife {
	image_speed=0.6
	image_index=1
	reload=16
	sound_play(choose(sndSwing1,sndSwing2)) 
	sprite_index=sprRatAttackKnife 
	}
	if sprite_index=sprRatWalkBat {
	image_speed=0.35
	image_index=1
	reload=30
	sound_play(choose(sndSwing1,sndSwing2)) 
	sprite_index=sprRatAttackBat 
	}
	if sprite_index=sprRatWalkClub {
	image_speed=0.35
	image_index=1
	reload=25
	sound_play(choose(sndSwing1,sndSwing2)) 
	sprite_index=sprRatAttackClub
	}

	//Guns
	if ammo>0 {
	angle=direction
	if sprite_index=sprRatWalkShotgun or sprite_index=sprRatTurnShotgun {
	if reload>0 reload-=1 else {
	if sprite_index=sprRatWalkShotgun {
	sprite_index=sprRatAttackShotgun
	image_speed=0.3
	}
	sound_play(sndShotgun)
	scrHearPlayer()
	ammo-=1
	shake=3
	reload=30
	global.shake=6
	mask_index=sprWeaponMask
	if place_meeting(x+lengthdir_x(8,dir),y+lengthdir_y(8,dir),objSolid) or place_meeting(x+lengthdir_x(12,dir),y+lengthdir_y(12,dir),objEditorDoorV) {
	repeat (8) {
	my_id=instance_create(x,y,objSmokeHit)
	global.dir=dir
	with my_id move_contact_all(global.dir,26)
	}
	} else {
	repeat (8) {
	my_id=instance_create(x+lengthdir_x(26,dir),y+lengthdir_y(26,dir),objBullet)
	if instance_exists(my_id) {
	my_id.direction=dir-6+random(12)
	my_id.speed=12+random(4)
	my_id.image_angle=my_id.direction
	}
	}
	}
	my_id=instance_create(x+lengthdir_x(5,dir-5*image_yscale),y+lengthdir_y(5,dir-5*image_yscale),objShell)
	my_id.sprite_index=sprShotgunShell
	my_id.image_angle=dir
	my_id.direction=dir-90*image_yscale-20+random(30)
	my_id.speed=1+random(3)
	light=20
	mask_index=sprMask
	}
	}

	if sprite_index=sprRatWalkDoubleBarrel {
	if reload>0 reload-=1 else {
	if ammo=2 sprite_index=sprRatAttackDoubleBarrel1 else sprite_index=sprRatAttackDoubleBarrel2
	image_speed=0.5
	sound_play(sndShotgun)
	scrHearPlayer()
	ammo-=1
	shake=3
	reload=12
	global.shake=8
	mask_index=sprWeaponMask
	if place_meeting(x+lengthdir_x(8,dir),y+lengthdir_y(8,dir),objSolid) or place_meeting(x+lengthdir_x(12,dir),y+lengthdir_y(12,dir),objEditorDoorV) {
	repeat (12) {
	my_id=instance_create(x,y,objSmokeHit)
	global.dir=dir
	with my_id move_contact_all(global.dir,26)
	}
	} else {
	repeat (12) {
	my_id=instance_create(x+lengthdir_x(26,dir),y+lengthdir_y(26,dir),objBullet)
	if instance_exists(my_id) {
	my_id.direction=dir-6+random(12)
	my_id.speed=12+random(4)
	my_id.image_angle=my_id.direction
	}
	}
	}
	light=20
	mask_index=sprMask
	}
	}

	if sprite_index=sprRatWalkM16 {
	if reload>0 reload-=1 else {
	sprite_index=sprRatAttackM16
	image_speed=0.5
	sound_play(sndUzi)
	scrHearPlayer()
	ammo-=1
	shake=3
	reload=3
	global.shake=6
	mask_index=sprWeaponMask
	if place_meeting(x+lengthdir_x(8,dir),y+lengthdir_y(8,dir),objSolid) or place_meeting(x+lengthdir_x(12,dir),y+lengthdir_y(12,dir),objEditorDoorV) {
	my_id=instance_create(x,y,objSmokeHit)
	global.dir=dir
	with my_id move_contact_all(global.dir,26)
	} else {
	my_id=instance_create(x+lengthdir_x(26,dir),y+lengthdir_y(26,dir),objBullet)
	if instance_exists(my_id) {
	my_id.direction=dir-6+random(12)
	my_id.speed=12+random(4)
	my_id.image_angle=my_id.direction
	}
	}
	my_id=instance_create(x+lengthdir_x(5,dir-5*image_yscale),y+lengthdir_y(5,dir-5*image_yscale),objShell)
	my_id.sprite_index=sprM16Shell
	my_id.image_angle=dir
	my_id.direction=dir-90*image_yscale-20+random(30)
	my_id.speed=1+random(3)
	light=20
	mask_index=sprMask
	}
	}

	if sprite_index=sprRatWalkSilencer {
	if reload>0 reload-=1 else {
	sprite_index=sprRatAttackSilencer
	image_speed=0.5
	sound_play(sndSilencer)
	ammo-=1
	shake=3
	reload=12
	global.shake=6
	mask_index=sprWeaponMask
	if place_meeting(x+lengthdir_x(8,dir),y+lengthdir_y(8,dir),objSolid) or place_meeting(x+lengthdir_x(12,dir),y+lengthdir_y(12,dir),objEditorDoorV) {
	my_id=instance_create(x,y,objSmokeHit)
	global.dir=dir
	with my_id move_contact_all(global.dir,26)
	} else {
	my_id=instance_create(x+lengthdir_x(26,dir),y+lengthdir_y(26,dir),objBullet)
	if instance_exists(my_id) {
	my_id.direction=dir-6+random(12)
	my_id.speed=12+random(4)
	my_id.image_angle=my_id.direction
	}
	}
	my_id=instance_create(x+lengthdir_x(5,dir-5*image_yscale),y+lengthdir_y(5,dir-5*image_yscale),objShell)
	my_id.sprite_index=sprUziShell
	my_id.image_angle=dir
	my_id.direction=dir-90*image_yscale-20+random(30)
	my_id.speed=1+random(3)
	light=20
	mask_index=sprMask
	}
	}

	if sprite_index=sprRatWalkKalashnikov {
	if reload>0 reload-=1 else {
	sprite_index=sprRatAttackKalashnikov
	image_speed=0.5
	sound_play(sndKalashnikov)
	scrHearPlayer()
	ammo-=1
	shake=3
	reload=6
	global.shake=6
	mask_index=sprWeaponMask
	if place_meeting(x+lengthdir_x(8,dir),y+lengthdir_y(8,dir),objSolid) or place_meeting(x+lengthdir_x(12,dir),y+lengthdir_y(12,dir),objEditorDoorV) {
	my_id=instance_create(x,y,objSmokeHit)
	global.dir=dir
	with my_id move_contact_all(global.dir,26)
	} else {
	my_id=instance_create(x+lengthdir_x(26,dir),y+lengthdir_y(26,dir),objBullet)
	if instance_exists(my_id) {
	my_id.direction=dir-6+random(12)
	my_id.speed=12+random(4)
	my_id.image_angle=my_id.direction
	}
	}
	my_id=instance_create(x+lengthdir_x(5,dir-5*image_yscale),y+lengthdir_y(5,dir-5*image_yscale),objShell)
	my_id.sprite_index=sprM16Shell
	my_id.image_angle=dir
	my_id.direction=dir-90*image_yscale-20+random(30)
	my_id.speed=1+random(3)
	light=20
	mask_index=sprMask
	}
	}

	if sprite_index=sprRatWalkUzi {
	if reload>0 reload-=1 else {
	sprite_index=sprRatAttackUzi
	image_speed=0.5
	sound_play(snd9mm)
	scrHearPlayer()
	ammo-=1
	shake=3
	reload=5
	global.shake=6
	mask_index=sprWeaponMask
	if place_meeting(x+lengthdir_x(8,dir),y+lengthdir_y(8,dir),objSolid) or place_meeting(x+lengthdir_x(12,dir),y+lengthdir_y(12,dir),objEditorDoorV) {
	my_id=instance_create(x,y,objSmokeHit)
	global.dir=dir
	with my_id move_contact_all(global.dir,26)
	} else {
	my_id=instance_create(x+lengthdir_x(26,dir),y+lengthdir_y(26,dir),objBullet)
	if instance_exists(my_id) {
	my_id.direction=dir-6+random(12)
	my_id.speed=12+random(4)
	my_id.image_angle=my_id.direction
	}
	}
	my_id=instance_create(x+lengthdir_x(5,dir-5*image_yscale),y+lengthdir_y(5,dir-5*image_yscale),objShell)
	my_id.sprite_index=sprUziShell
	my_id.image_angle=dir
	my_id.direction=dir-90*image_yscale-20+random(30)
	my_id.speed=1+random(3)
	light=20
	mask_index=sprMask
	}
	}

	if sprite_index=sprRatWalkSilencedUzi {
	if reload>0 reload-=1 else {
	sprite_index=sprRatAttackSilencedUzi
	image_speed=0.5
	sound_play(sndSilencer)
	scrHearPlayer()
	ammo-=1
	shake=3
	reload=5
	global.shake=6
	mask_index=sprWeaponMask
	if place_meeting(x+lengthdir_x(8,dir),y+lengthdir_y(8,dir),objSolid) or place_meeting(x+lengthdir_x(12,dir),y+lengthdir_y(12,dir),objEditorDoorV) {
	my_id=instance_create(x,y,objSmokeHit)
	global.dir=dir
	with my_id move_contact_all(global.dir,26)
	} else {
	my_id=instance_create(x+lengthdir_x(26,dir),y+lengthdir_y(26,dir),objBullet)
	if instance_exists(my_id) {
	my_id.direction=dir-6+random(12)
	my_id.speed=12+random(4)
	my_id.image_angle=my_id.direction
	}
	}
	my_id=instance_create(x+lengthdir_x(5,dir-5*image_yscale),y+lengthdir_y(5,dir-5*image_yscale),objShell)
	my_id.sprite_index=sprUziShell
	my_id.image_angle=dir
	my_id.direction=dir-90*image_yscale-20+random(30)
	my_id.speed=1+random(3)
	light=20
	mask_index=sprMask
	}
	}
	}


	//WRITER

	if sprite_index=sprWriterWalkUnarmed and (instance_exists(objEnemy) or instance_exists(objKnockedOut)) {
	image_speed=0.35
	image_index=1
	reload=25
	sound_play(choose(sndSwing1,sndSwing2)) 
	sprite_index=sprWriterAttackPunch 
	}
	if sprite_index=sprWriter2WalkUnarmed and (instance_exists(objEnemy) or instance_exists(objKnockedOut)) {
	image_speed=0.35
	image_index=1
	reload=25
	sound_play(choose(sndSwing1,sndSwing2)) 
	sprite_index=sprWriter2AttackPunch 
	}
	if sprite_index=sprWriter2WalkKnife {
	image_speed=0.6
	image_index=1
	reload=16
	sound_play(choose(sndSwing1,sndSwing2)) 
	sprite_index=sprWriter2AttackKnife 
	}
	if sprite_index=sprWriterWalkBat {
	image_speed=0.35
	image_index=1
	reload=30
	sound_play(choose(sndSwing1,sndSwing2)) 
	sprite_index=sprWriterAttackBat 
	}
	if sprite_index=sprWriter2WalkBat {
	image_speed=0.35
	image_index=1
	reload=30
	sound_play(choose(sndSwing1,sndSwing2)) 
	sprite_index=sprWriter2AttackBat 
	}
	if sprite_index=sprWriterWalkChain {
	image_speed=0.35
	image_index=1
	reload=30
	sound_play(choose(sndSwing1,sndSwing2)) 
	sprite_index=sprWriterAttackChain
	}
	if sprite_index=sprWriter2WalkChain {
	image_speed=0.35
	image_index=1
	reload=30
	sound_play(choose(sndSwing1,sndSwing2)) 
	sprite_index=sprWriter2AttackChain
	}
	if sprite_index=sprWriterWalkClub {
	image_speed=0.35
	image_index=1
	reload=25
	sound_play(choose(sndSwing1,sndSwing2)) 
	sprite_index=sprWriterAttackClub
	}
	if sprite_index=sprWriter2WalkClub {
	image_speed=0.35
	image_index=1
	reload=25
	sound_play(choose(sndSwing1,sndSwing2)) 
	sprite_index=sprWriter2AttackClub
	}
	if sprite_index=sprWriterWalkPipe {
	image_speed=0.35
	image_index=1
	reload=25
	sound_play(choose(sndSwing1,sndSwing2)) 
	sprite_index=sprWriterAttackPipe
	}
	if sprite_index=sprWriter2WalkPipe {
	image_speed=0.35
	image_index=1
	reload=25
	sound_play(choose(sndSwing1,sndSwing2)) 
	sprite_index=sprWriter2AttackPipe
	}

	//Guns
	if ammo>0 {
	angle=direction
	if sprite_index=sprWriter2WalkShotgun {
	if reload>0 reload-=1 else {
	sprite_index=sprWriter2AttackShotgun
	image_speed=0.3
	sound_play(sndShotgun)
	scrHearPlayer()
	ammo-=1
	shake=3
	reload=30
	global.shake=6
	mask_index=sprWeaponMask
	if place_meeting(x+lengthdir_x(8,dir),y+lengthdir_y(8,dir),objSolid) or place_meeting(x+lengthdir_x(12,dir),y+lengthdir_y(12,dir),objEditorDoorV) {
	repeat (8) {
	my_id=instance_create(x,y,objSmokeHit)
	global.dir=dir
	with my_id move_contact_all(global.dir,26)
	}
	} else {
	repeat (8) {
	my_id=instance_create(x+lengthdir_x(26,dir),y+lengthdir_y(26,dir),objBullet)
	if instance_exists(my_id) {
	my_id.direction=dir-6+random(12)
	my_id.speed=12+random(4)
	my_id.image_angle=my_id.direction
	}
	}
	}
	my_id=instance_create(x+lengthdir_x(5,dir-5*image_yscale),y+lengthdir_y(5,dir-5*image_yscale),objShell)
	my_id.sprite_index=sprShotgunShell
	my_id.image_angle=dir
	my_id.direction=dir-90*image_yscale-20+random(30)
	my_id.speed=1+random(3)
	light=20
	mask_index=sprMask
	}
	}

	if sprite_index=sprWriter2WalkDoubleBarrel {
	if reload>0 reload-=1 else {
	if ammo=2 sprite_index=sprWriter2AttackDoubleBarrel1 else sprite_index=sprWriter2AttackDoubleBarrel2
	image_speed=0.5
	sound_play(sndShotgun)
	scrHearPlayer()
	ammo-=1
	shake=3
	reload=12
	global.shake=8
	mask_index=sprWeaponMask
	if place_meeting(x+lengthdir_x(8,dir),y+lengthdir_y(8,dir),objSolid) or place_meeting(x+lengthdir_x(12,dir),y+lengthdir_y(12,dir),objEditorDoorV) {
	repeat (12) {
	my_id=instance_create(x,y,objSmokeHit)
	global.dir=dir
	with my_id move_contact_all(global.dir,26)
	}
	} else {
	repeat (12) {
	my_id=instance_create(x+lengthdir_x(26,dir),y+lengthdir_y(26,dir),objBullet)
	if instance_exists(my_id) {
	my_id.direction=dir-6+random(12)
	my_id.speed=12+random(4)
	my_id.image_angle=my_id.direction
	}
	}
	}
	light=20
	mask_index=sprMask
	}
	}

	if sprite_index=sprWriter2WalkM16 {
	if reload>0 reload-=1 else {
	sprite_index=sprWriter2AttackM16
	image_speed=0.5
	sound_play(sndUzi)
	scrHearPlayer()
	ammo-=1
	shake=3
	reload=3
	global.shake=6
	mask_index=sprWeaponMask
	if place_meeting(x+lengthdir_x(8,dir),y+lengthdir_y(8,dir),objSolid) or place_meeting(x+lengthdir_x(12,dir),y+lengthdir_y(12,dir),objEditorDoorV) {
	my_id=instance_create(x,y,objSmokeHit)
	global.dir=dir
	with my_id move_contact_all(global.dir,26)
	} else {
	my_id=instance_create(x+lengthdir_x(26,dir)+lengthdir_x(7,dir-90),y+lengthdir_y(26,dir)+lengthdir_y(7,dir-90),objBullet)
	if instance_exists(my_id) {
	my_id.direction=dir-6+random(12)
	my_id.speed=12+random(4)
	my_id.image_angle=my_id.direction
	}
	}
	my_id=instance_create(x+lengthdir_x(5,dir-5*image_yscale),y+lengthdir_y(5,dir-5*image_yscale),objShell)
	my_id.sprite_index=sprM16Shell
	my_id.image_angle=dir
	my_id.direction=dir-90*image_yscale-20+random(30)
	my_id.speed=1+random(3)
	light=20
	mask_index=sprMask
	}
	}

	if sprite_index=sprWriter2WalkSilencer {
	if reload>0 reload-=1 else {
	sprite_index=sprWriter2AttackSilencer
	image_speed=0.5
	sound_play(sndSilencer)
	ammo-=1
	shake=3
	reload=12
	global.shake=6
	mask_index=sprWeaponMask
	if place_meeting(x+lengthdir_x(8,dir),y+lengthdir_y(8,dir),objSolid) or place_meeting(x+lengthdir_x(12,dir),y+lengthdir_y(12,dir),objEditorDoorV) {
	my_id=instance_create(x,y,objSmokeHit)
	global.dir=dir
	with my_id move_contact_all(global.dir,26)
	} else {
	my_id=instance_create(x+lengthdir_x(26,dir)+lengthdir_x(7,dir-90),y+lengthdir_y(26,dir)+lengthdir_y(7,dir-90),objBullet)
	if instance_exists(my_id) {
	my_id.direction=dir-6+random(12)
	my_id.speed=12+random(4)
	my_id.image_angle=my_id.direction
	}
	}
	my_id=instance_create(x+lengthdir_x(5,dir-5*image_yscale),y+lengthdir_y(5,dir-5*image_yscale),objShell)
	my_id.sprite_index=sprUziShell
	my_id.image_angle=dir
	my_id.direction=dir-90*image_yscale-20+random(30)
	my_id.speed=1+random(3)
	light=20
	mask_index=sprMask
	}
	}

	if sprite_index=sprWriter2Walk9mm {
	if reload>0 reload-=1 else {
	sprite_index=sprWriter2Attack9mm
	image_speed=0.5
	sound_play(snd9mm)
	ammo-=1
	shake=3
	reload=12
	global.shake=6
	mask_index=sprWeaponMask
	if place_meeting(x+lengthdir_x(8,dir),y+lengthdir_y(8,dir),objSolid) or place_meeting(x+lengthdir_x(12,dir),y+lengthdir_y(12,dir),objEditorDoorV) {
	my_id=instance_create(x,y,objSmokeHit)
	global.dir=dir
	with my_id move_contact_all(global.dir,26)
	} else {
	my_id=instance_create(x+lengthdir_x(26,dir),y+lengthdir_y(26,dir),objBullet)
	if instance_exists(my_id) {
	my_id.direction=dir-6+random(12)
	my_id.speed=12+random(4)
	my_id.image_angle=my_id.direction
	}
	}
	my_id=instance_create(x+lengthdir_x(5,dir-5*image_yscale),y+lengthdir_y(5,dir-5*image_yscale),objShell)
	my_id.sprite_index=sprUziShell
	my_id.image_angle=dir
	my_id.direction=dir-90*image_yscale-20+random(30)
	my_id.speed=1+random(3)
	light=20
	mask_index=sprMask
	}
	}

	if sprite_index=sprWriter2WalkUzi {
	if reload>0 reload-=1 else {
	sprite_index=sprWriter2AttackUzi
	image_speed=0.5
	sound_play(sndUzi)
	scrHearPlayer()
	ammo-=1
	shake=3
	reload=5
	global.shake=6
	mask_index=sprWeaponMask
	if place_meeting(x+lengthdir_x(8,dir),y+lengthdir_y(8,dir),objSolid) or place_meeting(x+lengthdir_x(12,dir),y+lengthdir_y(12,dir),objEditorDoorV) {
	my_id=instance_create(x,y,objSmokeHit)
	global.dir=dir
	with my_id move_contact_all(global.dir,26)
	} else {
	my_id=instance_create(x+lengthdir_x(26,dir),y+lengthdir_y(26,dir),objBullet)
	if instance_exists(my_id) {
	my_id.direction=dir-6+random(12)
	my_id.speed=12+random(4)
	my_id.image_angle=my_id.direction
	}
	}
	my_id=instance_create(x+lengthdir_x(5,dir-5*image_yscale),y+lengthdir_y(5,dir-5*image_yscale),objShell)
	my_id.sprite_index=sprUziShell
	my_id.image_angle=dir
	my_id.direction=dir-90*image_yscale-20+random(30)
	my_id.speed=1+random(3)
	light=20
	mask_index=sprMask
	}
	}

	if sprite_index=sprWriter2WalkKalashnikov {
	if reload>0 reload-=1 else {
	sprite_index=sprWriter2AttackKalashnikov
	image_speed=0.5
	sound_play(sndKalashnikov)
	scrHearPlayer()
	ammo-=1
	shake=3
	reload=6
	global.shake=6
	mask_index=sprWeaponMask
	if place_meeting(x+lengthdir_x(8,dir),y+lengthdir_y(8,dir),objSolid) or place_meeting(x+lengthdir_x(12,dir),y+lengthdir_y(12,dir),objEditorDoorV) {
	my_id=instance_create(x,y,objSmokeHit)
	global.dir=dir
	with my_id move_contact_all(global.dir,26)
	} else {
	my_id=instance_create(x+lengthdir_x(26,dir)+lengthdir_x(7,dir-90),y+lengthdir_y(26,dir)+lengthdir_y(7,dir-90),objBullet)
	if instance_exists(my_id) {
	my_id.direction=dir-6+random(12)
	my_id.speed=12+random(4)
	my_id.image_angle=my_id.direction
	}
	}
	my_id=instance_create(x+lengthdir_x(5,dir-5*image_yscale),y+lengthdir_y(5,dir-5*image_yscale),objShell)
	my_id.sprite_index=sprM16Shell
	my_id.image_angle=dir
	my_id.direction=dir-90*image_yscale-20+random(30)
	my_id.speed=1+random(3)
	light=20
	mask_index=sprMask
	}
	}
	}


	//COBRA

	if sprite_index=sprCobraWalkUnarmed and (instance_exists(objEnemy) or instance_exists(objKnockedOut)) {
	image_speed=0.35
	image_index=1
	reload=25
	sound_play(choose(sndSwing1,sndSwing2)) 
	sprite_index=sprCobraAttackPunch 
	}
	if sprite_index=sprCobraWalkBottle {
	image_speed=0.35
	image_index=1
	reload=22
	sound_play(choose(sndSwing1,sndSwing2)) 
	sprite_index=sprCobraAttackBottle 
	}
	if sprite_index=sprCobraWalkBottleBroken {
	image_speed=0.35
	image_index=1
	reload=18
	sound_play(choose(sndSwing1,sndSwing2)) 
	sprite_index=sprCobraAttackBottleBroken 
	}
	if sprite_index=sprCobraWalkKnife {
	image_speed=0.6
	image_index=1
	reload=16
	sound_play(choose(sndSwing1,sndSwing2)) 
	sprite_index=sprCobraAttackKnife 
	}
	if sprite_index=sprCobraWalkBat {
	image_speed=0.35
	image_index=1
	reload=30
	sound_play(choose(sndSwing1,sndSwing2)) 
	sprite_index=sprCobraAttackBat 
	}
	if sprite_index=sprCobraWalkClub {
	image_speed=0.35
	image_index=1
	reload=25
	sound_play(choose(sndSwing1,sndSwing2)) 
	sprite_index=sprCobraAttackClub
	}

	//Guns
	if ammo>0 {
	angle=direction
	if sprite_index=sprCobraWalkShotgun {
	if reload>0 reload-=1 else {
	sprite_index=sprCobraAttackShotgun
	image_speed=0.3
	sound_play(sndShotgun)
	scrHearPlayer()
	ammo-=1
	shake=3
	reload=30
	global.shake=6
	mask_index=sprWeaponMask
	if place_meeting(x+lengthdir_x(8,dir),y+lengthdir_y(8,dir),objSolid) or place_meeting(x+lengthdir_x(12,dir),y+lengthdir_y(12,dir),objEditorDoorV) {
	repeat (8) {
	my_id=instance_create(x,y,objSmokeHit)
	global.dir=dir
	with my_id move_contact_all(global.dir,26)
	}
	} else {
	repeat (8) {
	my_id=instance_create(x+lengthdir_x(26,dir),y+lengthdir_y(26,dir),objBullet)
	if instance_exists(my_id) {
	my_id.direction=dir-6+random(12)
	my_id.speed=12+random(4)
	my_id.image_angle=my_id.direction
	}
	}
	}
	my_id=instance_create(x+lengthdir_x(5,dir-5*image_yscale),y+lengthdir_y(5,dir-5*image_yscale),objShell)
	my_id.sprite_index=sprShotgunShell
	my_id.image_angle=dir
	my_id.direction=dir-90*image_yscale-20+random(30)
	my_id.speed=1+random(3)
	light=20
	mask_index=sprMask
	}
	}

	if sprite_index=sprCobraWalkDoubleBarrel {
	if reload>0 reload-=1 else {
	if ammo=2 sprite_index=sprCobraAttackDoubleBarrel1 else sprite_index=sprCobraAttackDoubleBarrel2
	image_speed=0.5
	sound_play(sndShotgun)
	scrHearPlayer()
	ammo-=1
	shake=3
	reload=12
	global.shake=8
	mask_index=sprWeaponMask
	if place_meeting(x+lengthdir_x(8,dir),y+lengthdir_y(8,dir),objSolid) or place_meeting(x+lengthdir_x(12,dir),y+lengthdir_y(12,dir),objEditorDoorV) {
	repeat (12) {
	my_id=instance_create(x,y,objSmokeHit)
	global.dir=dir
	with my_id move_contact_all(global.dir,26)
	}
	} else {
	repeat (12) {
	my_id=instance_create(x+lengthdir_x(26,dir),y+lengthdir_y(26,dir),objBullet)
	if instance_exists(my_id) {
	my_id.direction=dir-6+random(12)
	my_id.speed=12+random(4)
	my_id.image_angle=my_id.direction
	}
	}
	}
	light=20
	mask_index=sprMask
	}
	}

	if sprite_index=sprCobraWalkM16 {
	if reload>0 reload-=1 else {
	sprite_index=sprCobraAttackM16
	image_speed=0.5
	sound_play(sndUzi)
	scrHearPlayer()
	ammo-=1
	shake=3
	reload=3
	global.shake=6
	mask_index=sprWeaponMask
	if place_meeting(x+lengthdir_x(8,dir),y+lengthdir_y(8,dir),objSolid) or place_meeting(x+lengthdir_x(12,dir),y+lengthdir_y(12,dir),objEditorDoorV) {
	my_id=instance_create(x,y,objSmokeHit)
	global.dir=dir
	with my_id move_contact_all(global.dir,26)
	} else {
	my_id=instance_create(x+lengthdir_x(26,dir),y+lengthdir_y(26,dir),objBullet)
	if instance_exists(my_id) {
	my_id.direction=dir-6+random(12)
	my_id.speed=12+random(4)
	my_id.image_angle=my_id.direction
	}
	}
	my_id=instance_create(x+lengthdir_x(5,dir-5*image_yscale),y+lengthdir_y(5,dir-5*image_yscale),objShell)
	my_id.sprite_index=sprM16Shell
	my_id.image_angle=dir
	my_id.direction=dir-90*image_yscale-20+random(30)
	my_id.speed=1+random(3)
	light=20
	mask_index=sprMask
	}
	}

	if sprite_index=sprCobraWalkMP5 {
	if reload>0 reload-=1 else {
	sprite_index=sprCobraAttackMP5
	image_speed=0.5
	sound_play(snd9mm)
	scrHearPlayer()
	ammo-=1
	shake=3
	reload=3
	global.shake=6
	mask_index=sprWeaponMask
	if place_meeting(x+lengthdir_x(8,dir),y+lengthdir_y(8,dir),objSolid) or place_meeting(x+lengthdir_x(12,dir),y+lengthdir_y(12,dir),objEditorDoorV) {
	my_id=instance_create(x,y,objSmokeHit)
	global.dir=dir
	with my_id move_contact_all(global.dir,26)
	} else {
	my_id=instance_create(x+lengthdir_x(26,dir),y+lengthdir_y(26,dir),objBullet)
	if instance_exists(my_id) {
	my_id.direction=dir-6+random(12)
	my_id.speed=12+random(4)
	my_id.image_angle=my_id.direction
	}
	}
	my_id=instance_create(x+lengthdir_x(5,dir-5*image_yscale),y+lengthdir_y(5,dir-5*image_yscale),objShell)
	my_id.sprite_index=sprUziShell
	my_id.image_angle=dir
	my_id.direction=dir-90*image_yscale-20+random(30)
	my_id.speed=1+random(3)
	light=20
	mask_index=sprMask
	}
	}

	if sprite_index=sprCobraWalkSilencer {
	if reload>0 reload-=1 else {
	sprite_index=sprCobraAttackSilencer
	image_speed=0.5
	sound_play(sndSilencer)
	ammo-=1
	shake=3
	reload=12
	global.shake=6
	mask_index=sprWeaponMask
	if place_meeting(x+lengthdir_x(8,dir),y+lengthdir_y(8,dir),objSolid) or place_meeting(x+lengthdir_x(12,dir),y+lengthdir_y(12,dir),objEditorDoorV) {
	my_id=instance_create(x,y,objSmokeHit)
	global.dir=dir
	with my_id move_contact_all(global.dir,26)
	} else {
	my_id=instance_create(x+lengthdir_x(26,dir),y+lengthdir_y(26,dir),objBullet)
	if instance_exists(my_id) {
	my_id.direction=dir-6+random(12)
	my_id.speed=12+random(4)
	my_id.image_angle=my_id.direction
	}
	}
	my_id=instance_create(x+lengthdir_x(5,dir-5*image_yscale),y+lengthdir_y(5,dir-5*image_yscale),objShell)
	my_id.sprite_index=sprUziShell
	my_id.image_angle=dir
	my_id.direction=dir-90*image_yscale-20+random(30)
	my_id.speed=1+random(3)
	light=20
	mask_index=sprMask
	}
	}

	if sprite_index=sprCobraWalkUzi {
	if reload>0 reload-=1 else {
	sprite_index=sprCobraAttackUzi
	image_speed=0.5
	sound_play(snd9mm)
	scrHearPlayer()
	ammo-=1
	shake=3
	reload=5
	global.shake=6
	mask_index=sprWeaponMask
	if place_meeting(x+lengthdir_x(8,dir),y+lengthdir_y(8,dir),objSolid) or place_meeting(x+lengthdir_x(12,dir),y+lengthdir_y(12,dir),objEditorDoorV) {
	my_id=instance_create(x,y,objSmokeHit)
	global.dir=dir
	with my_id move_contact_all(global.dir,26)
	} else {
	my_id=instance_create(x+lengthdir_x(26,dir),y+lengthdir_y(26,dir),objBullet)
	if instance_exists(my_id) {
	my_id.direction=dir-6+random(12)
	my_id.speed=12+random(4)
	my_id.image_angle=my_id.direction
	}
	}
	my_id=instance_create(x+lengthdir_x(5,dir-5*image_yscale),y+lengthdir_y(5,dir-5*image_yscale),objShell)
	my_id.sprite_index=sprUziShell
	my_id.image_angle=dir
	my_id.direction=dir-90*image_yscale-20+random(30)
	my_id.speed=1+random(3)
	light=20
	mask_index=sprMask
	}
	}

	if sprite_index=sprCobraWalkKalashnikov {
	if reload>0 reload-=1 else {
	sprite_index=sprCobraAttackKalashnikov
	image_speed=0.5
	sound_play(sndKalashnikov)
	scrHearPlayer()
	ammo-=1
	shake=3
	reload=6
	global.shake=6
	mask_index=sprWeaponMask
	if place_meeting(x+lengthdir_x(8,dir),y+lengthdir_y(8,dir),objSolid) or place_meeting(x+lengthdir_x(12,dir),y+lengthdir_y(12,dir),objEditorDoorV) {
	my_id=instance_create(x,y,objSmokeHit)
	global.dir=dir
	with my_id move_contact_all(global.dir,26)
	} else {
	my_id=instance_create(x+lengthdir_x(26,dir),y+lengthdir_y(26,dir),objBullet)
	if instance_exists(my_id) {
	my_id.direction=dir-6+random(12)
	my_id.speed=12+random(4)
	my_id.image_angle=my_id.direction
	}
	}
	my_id=instance_create(x+lengthdir_x(5,dir-5*image_yscale),y+lengthdir_y(5,dir-5*image_yscale),objShell)
	my_id.sprite_index=sprM16Shell
	my_id.image_angle=dir
	my_id.direction=dir-90*image_yscale-20+random(30)
	my_id.speed=1+random(3)
	light=20
	mask_index=sprMask
	}
	}
	}



}
