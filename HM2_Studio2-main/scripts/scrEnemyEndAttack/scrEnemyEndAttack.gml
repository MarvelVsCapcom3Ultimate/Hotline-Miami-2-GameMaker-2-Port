function scrEnemyEndAttack() {
	//Guard

	if sprite_index=sprGuardAttackShotgun {
	sprite_index=sprGuardWalkShotgun
	image_speed=0
	}

	if sprite_index=sprGuardAttackMagnum {
	sprite_index=sprGuardWalkMagnum
	image_speed=0
	}

	if sprite_index=sprGuardAttackStick {
	sprite_index=sprGuardWalkStick
	image_speed=0
	left=-left
	}

	//Police

	if sprite_index=sprPoliceAttackShotgun {
	sprite_index=sprPoliceWalkShotgun
	image_speed=0
	}

	if sprite_index=sprPoliceAttack9mm {
	sprite_index=sprPoliceWalk9mm
	image_speed=0
	}

	if sprite_index=sprPoliceAttackStick {
	sprite_index=sprPoliceWalkStick
	image_speed=0
	left=-left
	}

	if sprite_index=sprFatPoliceAttack {
	sprite_index=sprFatPoliceWalk
	image_speed=0
	}

	//Gang Members
	if sprite_index=sprEGangFatAttack {
	sprite_index=sprEGangFatWalk
	image_speed=0
	left=-left
	}
	if sprite_index=sprEGangAttackKnife {
	sprite_index=sprEGangWalkKnife
	image_speed=0
	left=-left
	}
	if sprite_index=sprEGangAttackChain {
	sprite_index=sprEGangWalkChain
	image_speed=0
	left=-left
	}
	if sprite_index=sprEGangAttackBat {
	sprite_index=sprEGangWalkBat
	image_speed=0
	left=-left
	}
	if sprite_index=sprEGangAttackPipe {
	sprite_index=sprEGangWalkPipe
	image_speed=0
	left=-left
	}
	if sprite_index=sprEGangAttackShotgun {
	sprite_index=sprEGangWalkShotgun
	image_speed=0
	}
	if sprite_index=sprEGangAttack9mm {
	sprite_index=sprEGangWalk9mm
	image_speed=0
	}
	if sprite_index=sprEGangAttackUzi {
	sprite_index=sprEGangWalkUzi
	image_speed=0
	}
	if sprite_index=sprEGangAttackHumanShield {
	sprite_index=sprEGangWalkHumanShield
	image_speed=0
	}
	if sprite_index=sprEGangFatAttack {
	sprite_index=sprEGangFatWalk
	image_speed=0
	}

	//Mafia

	if sprite_index=sprEMafiaAttackKnife {
	sprite_index=sprEMafiaWalkKnife
	image_speed=0
	left=-left
	}
	if sprite_index=sprEMafiaAttackClub {
	sprite_index=sprEMafiaWalkClub
	image_speed=0
	left=-left
	}
	if sprite_index=sprEMafiaAttackBat {
	sprite_index=sprEMafiaWalkBat
	image_speed=0
	left=-left
	}
	if sprite_index=sprEMafiaAttackPipe {
	sprite_index=sprEMafiaWalkPipe
	image_speed=0
	left=-left
	}
	if sprite_index=sprEMafiaAttackShotgun {
	sprite_index=sprEMafiaWalkShotgun
	image_speed=0
	}
	if sprite_index=sprEMafiaAttackM16 {
	sprite_index=sprEMafiaWalkM16
	image_speed=0
	}
	if sprite_index=sprEMafiaAttackDoubleBarrel1 or sprite_index=sprEMafiaAttackDoubleBarrel2 {
	sprite_index=sprEMafiaWalkDoubleBarrel
	image_speed=0
	}
	if sprite_index=sprEMafiaAttackSilencer {
	sprite_index=sprEMafiaWalkSilencer
	image_speed=0
	}
	if sprite_index=sprEMafiaFatAttack {
	sprite_index=sprEMafiaFatWalk
	image_speed=0
	}
	if sprite_index=sprEMafiaAttackUziLSD {
	sprite_index=sprEMafiaWalkUziLSD
	image_speed=0
	}
	if sprite_index=sprEMafiaAttackShotgunLSD {
	sprite_index=sprEMafiaWalkShotgunLSD
	image_speed=0
	}
	if sprite_index=sprEMafiaAttackClubLSD {
	sprite_index=sprEMafiaWalkClubLSD
	image_speed=0
	left=-left
	}
	if sprite_index=sprEMafiaAttackKalashnikovLSD {
	sprite_index=sprEMafiaWalkKalashnikovLSD
	image_speed=0
	}
	if sprite_index=sprFatMafiaLSDAttack {
	if sprite_index=sprFatMafiaLSDWalk 
	image_speed=0
	}
	if sprite_index=sprFatMafiaLSDAttack {
	sprite_index=sprFatMafiaLSDWalk
	image_speed=0
	}

	//Colombian

	if sprite_index=sprColombianAttackKnife {
	sprite_index=sprColombianWalkKnife
	image_speed=0
	left=-left
	}
	if sprite_index=sprColombianAttackMachette {
	sprite_index=sprColombianWalkMachete
	image_speed=0
	left=-left
	}
	if sprite_index=sprColombianAttackFamae {
	sprite_index=sprColombianWalkFamae
	image_speed=0
	}
	if sprite_index=sprColombianAttackPipe {
	sprite_index=sprColombianWalkPipe
	image_speed=0
	left=-left
	}
	if sprite_index=sprColombianAttackShotgun {
	sprite_index=sprColombianWalkShotgun
	image_speed=0
	}
	if sprite_index=sprColombianAttackMendoza {
	sprite_index=sprColombianWalkMendoza
	image_speed=0
	}
	if sprite_index=sprColombianAttackSilencer {
	sprite_index=sprColombianWalkSilencer
	image_speed=0
	}
	if sprite_index=sprColombianDodgerAttack {
	sprite_index=sprColombianDodgerWalk
	image_speed=0
	}

	//Soldiers

	if sprite_index=sprSoldierAttackMachete {
	sprite_index=sprSoldierWalkMachete
	image_speed=0
	}

	if sprite_index=sprSoldierAttackKalashnikov {
	sprite_index=sprSoldierWalkKalashnikov
	image_speed=0
	}

	if sprite_index=sprFatSoldierAttackKnife {
	sprite_index=sprFatSoldierWalkKnife
	image_speed=0
	}

	if sprite_index=sprFatSoldierAttackGun {
	sprite_index=sprFatSoldierWalkGun
	image_speed=0
	}

	//Mafia



}
