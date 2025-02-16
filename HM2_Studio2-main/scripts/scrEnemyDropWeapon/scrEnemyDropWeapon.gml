function scrEnemyDropWeapon() {
	my_id=-1234
	//VICTIMS
	if sprite_index=sprVictim2WalkBat my_id=instance_create(x,y,objBat)
	if sprite_index=sprVictim2AttackBat my_id=instance_create(x,y,objBat)
	//GANG
	if sprite_index=sprEGangWalk9mm my_id=instance_create(x,y,obj9mm)
	if sprite_index=sprEGangWalkUzi my_id=instance_create(x,y,objUzi)
	if sprite_index=sprEGangWalkShotgun my_id=instance_create(x,y,objShotgun)
	if sprite_index=sprEGangWalkBat my_id=instance_create(x,y,objBat)
	if sprite_index=sprEGangWalkKnife my_id=instance_create(x,y,objButterfly)
	if sprite_index=sprEGangWalkPipe my_id=instance_create(x,y,objPipe)
	if sprite_index=sprEGangWalkChain my_id=instance_create(x,y,objChain)
	if sprite_index=sprEGangAttack9mm my_id=instance_create(x,y,obj9mm)
	if sprite_index=sprEGangAttackUzi my_id=instance_create(x,y,objUzi)
	if sprite_index=sprEGangAttackShotgun my_id=instance_create(x,y,objShotgun)
	if sprite_index=sprEGangAttackBat my_id=instance_create(x,y,objBat)
	if sprite_index=sprEGangAttackKnife or sprite_index=sprEGangIdleKnife {my_id=instance_create(x,y,objButterfly) ammo=0}
	if sprite_index=sprEGangAttackPipe or sprite_index=sprEGangIdlePipe {my_id=instance_create(x,y,objPipe) ammo=0}
	if sprite_index=sprEGangAttackChain my_id=instance_create(x,y,objChain)
	if sprite_index=sprEGangIdleSmoke {my_id=instance_create(x,y,choose(objShotgun,objUzi,obj9mm)) if my_id.object_index=objShotgun ammo=6 if my_id.object_index=objUzi ammo=30 if my_id.object_index=obj9mm ammo=20}
	//SOLDIERS
	if sprite_index=sprSoldierWalkKalashnikov my_id=instance_create(x,y,objKalashnikov)
	if sprite_index=sprSoldierAttackKalashnikov my_id=instance_create(x,y,objKalashnikov)
	if sprite_index=sprSoldierWalkMachete my_id=instance_create(x,y,objMachete)
	if sprite_index=sprSoldierAttackMachete my_id=instance_create(x,y,objMachete)
	if sprite_index=sprFatSoldierWalkKnife my_id=instance_create(x,y,objKnife)
	if sprite_index=sprFatSoldierWalkGun my_id=instance_create(x,y,objUzi)
	if sprite_index=sprFatSoldierAttackKnife my_id=instance_create(x,y,objKnife)
	if sprite_index=sprFatSoldierAttackGun my_id=instance_create(x,y,objUzi)
	if sprite_index=sprSoldierIdleRain {my_id=instance_create(x,y,objPoncho) my_id.image_angle=direction my_id=instance_create(x,y,objKalashnikov)}
	if sprite_index=sprSoldierIdlePonchoSmoke {my_id=instance_create(x,y,objPoncho) my_id.image_angle=direction my_id=instance_create(x,y,objKalashnikov)}
	if sprite_index=sprSoldierHiding {my_id=instance_create(x,y,objKalashnikov)}
	//MAFIA
	if sprite_index=sprEMafiaWalkM16 my_id=instance_create(x,y,objM16)
	if sprite_index=sprEMafiaWalkDoubleBarrel my_id=instance_create(x,y,objDoubleBarrel)
	if sprite_index=sprEMafiaWalkShotgun my_id=instance_create(x,y,objShotgun)
	if sprite_index=sprEMafiaWalkBat my_id=instance_create(x,y,objBat)
	if sprite_index=sprEMafiaWalkKnife my_id=instance_create(x,y,objKnife)
	if sprite_index=sprEMafiaWalkPipe my_id=instance_create(x,y,objPipe)
	if sprite_index=sprEMafiaWalkClub my_id=instance_create(x,y,objClub)
	if sprite_index=sprEMafiaWalkSilencer my_id=instance_create(x,y,objSilencer)
	if sprite_index=sprEMafiaWalkKalashnikov my_id=instance_create(x,y,objKalashnikov)
	if sprite_index=sprEMafiaAttackDoubleBarrel1 or sprite_index=sprEMafiaAttackDoubleBarrel2 my_id=instance_create(x,y,objDoubleBarrel)
	if sprite_index=sprEMafiaAttackM16 my_id=instance_create(x,y,objM16)
	if sprite_index=sprEMafiaAttackShotgun my_id=instance_create(x,y,objShotgun)
	if sprite_index=sprEMafiaAttackBat my_id=instance_create(x,y,objBat)
	if sprite_index=sprEMafiaAttackKnife {my_id=instance_create(x,y,objKnife) ammo=0}
	if sprite_index=sprEMafiaAttackPipe {my_id=instance_create(x,y,objPipe) ammo=0}
	if sprite_index=sprEMafiaAttackSilencer my_id=instance_create(x,y,objSilencer)
	if sprite_index=sprEMafiaIdlePhoneSilencer my_id=instance_create(x,y,objSilencer)
	if sprite_index=sprEMafiaAttackKalashnikov my_id=instance_create(x,y,objKalashnikov)
	if sprite_index=sprEMafiaWalkShotgunLSD my_id=instance_create(x,y,objShotgun)
	if sprite_index=sprEMafiaAttackShotgunLSD my_id=instance_create(x,y,objShotgun)
	if sprite_index=sprEMafiaWalkUziLSD my_id=instance_create(x,y,objUzi)
	if sprite_index=sprEMafiaAttackUziLSD my_id=instance_create(x,y,objUzi)
	if sprite_index=sprEMafiaAttackKalashnikovLSD my_id=instance_create(x,y,objKalashnikov)
	if sprite_index=sprEMafiaWalkKalashnikovLSD my_id=instance_create(x,y,objKalashnikov)
	if sprite_index=sprEMafiaWalkClubLSD my_id=instance_create(x,y,objClub)
	if sprite_index=sprEMafiaAttackClubLSD my_id=instance_create(x,y,objClub)
	//COLOMBIAN
	if sprite_index=sprColombianWalkSilencer my_id=instance_create(x,y,objSilencer)
	if sprite_index=sprColombianWalkFamae my_id=instance_create(x,y,objFamae)
	if sprite_index=sprColombianWalkShotgun my_id=instance_create(x,y,objShotgun)
	if sprite_index=sprColombianWalkMendoza my_id=instance_create(x,y,objMendoza)
	if sprite_index=sprColombianWalkKnife my_id=instance_create(x,y,objButterfly)
	if sprite_index=sprColombianWalkPipe my_id=instance_create(x,y,objPipe)
	if sprite_index=sprColombianWalkMachete my_id=instance_create(x,y,objMachete)
	if sprite_index=sprColombianAttackSilencer my_id=instance_create(x,y,objSilencer)
	if sprite_index=sprColombianAttackFamae my_id=instance_create(x,y,objFamae)
	if sprite_index=sprColombianAttackShotgun my_id=instance_create(x,y,objShotgun)
	if sprite_index=sprColombianAttackMendoza my_id=instance_create(x,y,objMendoza)
	if sprite_index=sprColombianAttackKnife {my_id=instance_create(x,y,objKnife) ammo=0}
	if sprite_index=sprColombianAttackPipe or sprite_index=sprColombianIdlePipe {my_id=instance_create(x,y,objPipe) ammo=0}
	if sprite_index=sprColombianAttackMachette my_id=instance_create(x,y,objMachete)
	if sprite_index=sprColombianDodgerAttack my_id=instance_create(x,y,objSword)
	//POLICE
	if sprite_index=sprPoliceWalk9mm my_id=instance_create(x,y,obj9mm)
	if sprite_index=sprPoliceWalkShotgun my_id=instance_create(x,y,objShotgun)
	if sprite_index=sprPoliceWalkStick my_id=instance_create(x,y,objStick)
	//GUARDS
	if sprite_index=sprGuardWalkMagnum my_id=instance_create(x,y,objMagnum)
	if sprite_index=sprGuardWalkShotgun my_id=instance_create(x,y,objShotgun)
	if sprite_index=sprGuardWalkStick my_id=instance_create(x,y,objStick)


	if my_id>0 {
	my_id.direction=random(360)
	my_id.speed=2.5
	my_id.friction=0.25
	my_id.ammo=ammo
	}

	if sprite_index=sprEGangIdleMoney {
	instance_create(x+2,y+8,objMoneyBag)
	}



}
