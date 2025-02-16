function scrEnemyGetWeapon(argument0) {
	if object_get_parent(object_index)=objEGang {
	if argument0=objBat sprite_index=sprEGangWalkBat
	if argument0=objButterfly sprite_index=sprEGangWalkKnife
	if argument0=obj9mm sprite_index=sprEGangWalk9mm
	if argument0=objShotgun sprite_index=sprEGangWalkShotgun
	if argument0=objChain sprite_index=sprEGangWalkChain
	if argument0=objPipe sprite_index=sprEGangWalkPipe
	if argument0=objUzi sprite_index=sprEGangWalkUzi
	ammo=target.ammo
	if scrIsMelee(argument0) {sprite=sprite_index my_id=instance_create(x,y,objEGangMeleeRandom) my_id.sprite_index=sprite my_id.direction=direction instance_destroy()}
	}

	if object_get_parent(object_index)=objEMafia {
	if argument0=objKalashnikov {if instance_exists(objLSD) sprite_index=sprEMafiaWalkKalashnikovLSD else sprite_index=sprEMafiaWalkKalashnikov}
	if argument0=objBat sprite_index=sprEMafiaWalkBat
	if argument0=objPipe sprite_index=sprEMafiaWalkPipe
	if argument0=objClub sprite_index=sprEMafiaWalkClub
	if argument0=objKnife sprite_index=sprEMafiaWalkKnife
	if argument0=objM16 sprite_index=sprEMafiaWalkM16
	if argument0=objShotgun {if instance_exists(objLSD) sprite_index=sprEMafiaWalkShotgunLSD else sprite_index=sprEMafiaWalkShotgun}
	if argument0=objSilencer sprite_index=sprEMafiaWalkSilencer
	if argument0=objDoubleBarrel sprite_index=sprEMafiaWalkDoubleBarrel
	ammo=target.ammo
	if scrIsMelee(argument0) {sprite=sprite_index my_id=instance_create(x,y,objEMafiaMeleeRandom) my_id.sprite_index=sprite my_id.direction=direction instance_destroy()}
	}

	if object_get_parent(object_index)=objColombian {
	if argument0=objMachete sprite_index=sprColombianWalkMachete
	if argument0=objPipe sprite_index=sprColombianWalkPipe
	if argument0=objFamae sprite_index=sprColombianWalkFamae
	if argument0=objKnife sprite_index=sprColombianWalkKnife
	if argument0=objMendoza sprite_index=sprColombianWalkMendoza
	if argument0=objShotgun sprite_index=sprColombianWalkShotgun
	if argument0=objSilencer sprite_index=sprColombianWalkSilencer
	ammo=target.ammo
	if scrIsMelee(argument0) {sprite=sprite_index my_id=instance_create(x,y,objColombianMeleeRandom) my_id.sprite_index=sprite my_id.direction=direction instance_destroy()}
	}

	if object_get_parent(object_index)=objSoldier {
	if argument0=objKalashnikov sprite_index=sprSoldierWalkKalashnikov
	if argument0=objMachete sprite_index=sprSoldierWalkMachete
	ammo=target.ammo
	if scrIsMelee(argument0) {sprite=sprite_index my_id=instance_create(x,y,objSoldierMeleeRandom) my_id.sprite_index=sprite my_id.direction=direction instance_destroy()}
	}

	if object_get_parent(object_index)=objPolice {
	if argument0=objStick sprite_index=sprPoliceWalkStick
	if argument0=objShotgun sprite_index=sprPoliceWalkShotgun
	if argument0=obj9mm sprite_index=sprPoliceWalk9mm
	ammo=target.ammo
	if scrIsMelee(argument0) {sprite=sprite_index my_id=instance_create(x,y,objEPoliceMeleeRandom) my_id.sprite_index=sprite my_id.direction=direction instance_destroy()}
	}


	if object_get_parent(object_index)=objGuard {
	if argument0=objStick sprite_index=sprGuardWalkStick
	if argument0=objShotgun sprite_index=sprGuardWalkShotgun
	if argument0=objMagnum sprite_index=sprGuardWalkMagnum
	ammo=target.ammo
	if scrIsMelee(argument0) {sprite=sprite_index my_id=instance_create(x,y,objGuardMeleeRandom) my_id.sprite_index=sprite my_id.direction=direction instance_destroy()}
	}



}
