function scrGetAttack(argument0) {
	//GANG
	if argument0=sprEGangWalkBat return sprEGangAttackBat
	if argument0=sprEGangWalkPipe return sprEGangAttackPipe
	if argument0=sprEGangWalkKnife return sprEGangAttackKnife
	if argument0=sprEGangWalkChain return sprEGangAttackChain
	if argument0=sprEGangWalk9mm return sprEGangAttack9mm
	if argument0=sprEGangWalkUzi return sprEGangAttackUzi
	if argument0=sprEGangWalkShotgun return sprEGangAttackShotgun
	if argument0=sprEGangIdlePipe return sprEGangAttackPipe
	if argument0=sprEGangIdleKnife return sprEGangAttackKnife
	if argument0=sprEGangFatWalk return sprEGangFatAttack
	//MAFIA
	if argument0=sprEMafiaWalkBat return sprEMafiaAttackBat
	if argument0=sprEMafiaWalkPipe return sprEMafiaAttackPipe
	if argument0=sprEMafiaWalkClub return sprEMafiaAttackClub
	if argument0=sprEMafiaWalkKnife return sprEMafiaAttackKnife
	if argument0=sprEMafiaWalkShotgun return sprEMafiaAttackShotgun
	if argument0=sprEMafiaWalkM16 return sprEMafiaAttackM16
	if argument0=sprEMafiaWalkSilencer return sprEMafiaAttackSilencer
	if argument0=sprEMafiaWalkDoubleBarrel {if ammo=2 return sprEMafiaAttackDoubleBarrel1 else return sprEMafiaAttackDoubleBarrel2}
	if argument0=sprEMafiaFatWalk return sprEMafiaFatAttack
	if argument0=sprEMafiaWalkShotgunLSD return sprEMafiaAttackShotgunLSD
	if argument0=sprEMafiaWalkClubLSD return sprEMafiaAttackClubLSD
	if argument0=sprEMafiaWalkUziLSD return sprEMafiaAttackUziLSD
	if argument0=sprFatMafiaLSDWalk return sprFatMafiaLSDAttack
	//COLOMBIANS
	if argument0=sprColombianWalkMachete return sprColombianAttackMachette
	if argument0=sprColombianWalkPipe return sprColombianAttackPipe
	if argument0=sprColombianWalkFamae return sprColombianAttackFamae
	if argument0=sprColombianWalkKnife return sprColombianAttackKnife
	if argument0=sprColombianWalkShotgun return sprColombianAttackShotgun
	if argument0=sprColombianWalkMendoza return sprColombianAttackMendoza
	if argument0=sprColombianWalkSilencer return sprColombianAttackSilencer
	if argument0=sprColombianDodgerWalk return sprColombianDodgerAttack
	//SOLDIERS
	if argument0=sprSoldierWalkMachete return sprSoldierAttackMachete
	if argument0=sprFatSoldierWalkKnife return sprFatSoldierAttackKnife
	if argument0=sprFatSoldierWalkGun return sprFatSoldierAttackGun
	//POLICE
	if argument0=sprPoliceWalkStick return sprPoliceAttackStick
	if argument0=sprFatPoliceWalk return sprFatPoliceAttack
	//GUARD
	if argument0=sprGuardWalkStick return sprGuardAttackStick
	return sprite_index



}
