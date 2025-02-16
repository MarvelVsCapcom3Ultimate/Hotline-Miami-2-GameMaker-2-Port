function scrGetVictim(argument0, argument1) {
	if argument0=objVictim3KnockedOut {
	if objPlayer.sprite_index=sprPigWalkHammer or objPlayer.sprite_index=sprPigWalkBat return sprVictim3KillBlunt
	if objPlayer.sprite_index=sprPigWalkUnarmed or objPlayer.sprite_index=sprPigWalkDoubleBarrel return sprVictim3KillStomp
	}
	if argument0=objKnockedOut {
	if sprite_index=sprGangLeaderGetUp {if objPlayer.kills<2 return sprGangLeaderDie else return sprGangLeaderDie2}
	//Pig Butcher
	if objPlayer.sprite_index=sprPigWalkHammer or objPlayer.sprite_index=sprPigWalkBat or objPlayer.sprite_index=sprPigWalkStick {
	if argument1=sprVictim1GetUp return sprVictim1KillBlunt
	if argument1=sprVictim2GetUp return sprVictim2KillBlunt
	if argument1=sprVictim4GetUp return sprVictim4KillBlunt
	if argument1=sprPoliceGetUp return sprPoliceDieBlunt
	}
	if objPlayer.sprite_index=sprPigWalkUnarmed or objPlayer.sprite_index=sprPigWalkDoubleBarrel or objPlayer.sprite_index=sprPigWalkTaser or objPlayer.sprite_index=sprPigWalk9mm or objPlayer.sprite_index=sprPigWalkShotgun {
	if argument1=sprVictim1GetUp return sprVictim1KillStomp
	if argument1=sprVictim2GetUp return sprVictim2KillStomp
	if argument1=sprVictim4GetUp return sprVictim4KillStomp
	if argument1=sprPoliceGetUp return sprPoliceDieStomp
	}

	//Son

	if objPlayer.object_index=objSon {
	if argument1=sprEMafiaFatGetUp return sprEMafiaFatDieTiger
	}

	if objPlayer.sprite_index=sprSonWalkSword {
	if argument1=sprColombianGetUp return sprColombianDieSword
	}
	if objPlayer.sprite_index=sprSonWalkKnife {
	if argument1=sprColombianGetUp return sprColombianDieKnifeSon
	if argument1=sprGuardGetUp return sprGuardDieKnife
	}
	if objPlayer.sprite_index=sprSonWalkClub {
	if argument1=sprColombianGetUp return sprColombianDieClub
	if argument1=sprEMafiaGetUpLSD return sprEMafiaDieClub
	}
	if objPlayer.sprite_index=sprSonWalkUnarmed or objPlayer.sprite_index=sprSonWalkSpecial or objPlayer.sprite_index=sprSonTurnSpecial {
	if objPlayer.style=1 {
	if argument1=sprColombianGetUp return sprColombianDieTiger
	} else {
	if argument1=sprColombianGetUp return sprColombianDieStomp
	if argument1=sprGuardGetUp return sprGuardDieStomp
	if argument1=sprEMafiaGetUpLSD return sprEMafiaDieStomp
	}
	}
	if objPlayer.sprite_index=sprSonWalkSword {
	if argument1=sprColombianGetUp return sprColombianDieSword
	}
	if objPlayer.sprite_index=sprSonWalkPipe {
	if argument1=sprColombianGetUp return sprColombianDieBlunt
	if argument1=sprGuardGetUp return sprGuardDieBlunt
	}
	if objPlayer.sprite_index=sprSonWalkStick {
	if argument1=sprColombianGetUp return sprColombianDieBlunt
	if argument1=sprGuardGetUp return sprGuardDieStick
	}
	if objPlayer.sprite_index=sprSonWalkMachette {
	if argument1=sprColombianGetUp return sprColombianDieMachete
	if argument1=sprGuardGetUp return sprGuardDieMachete
	}

	//Rat

	if objPlayer.sprite_index=sprRatWalkUnarmed {
	if argument1=sprEMafiaGetUp return sprEMafiaDieBash
	}
	if objPlayer.sprite_index=sprRatWalkBat {
	if argument1=sprEMafiaGetUp return sprEMafiaDieBlunt
	}
	if objPlayer.sprite_index=sprRatWalkClub {
	if argument1=sprEMafiaGetUp return sprEMafiaDieBlunt
	}
	if objPlayer.sprite_index=sprRatWalkKnife {
	if argument1=sprEMafiaGetUp return sprEMafiaDieKnife
	}


	//Writer

	if objPlayer.sprite_index=sprWriterWalkChain or objPlayer.sprite_index=sprWriter2WalkM16 or objPlayer.sprite_index=sprWriter2Walk9mm or objPlayer.sprite_index=sprWriter2WalkShotgun or objPlayer.sprite_index=sprWriterWalkUnarmed or objPlayer.sprite_index=sprWriter2WalkKalashnikov or objPlayer.sprite_index=sprWriter2WalkDoubleBarrel or objPlayer.sprite_index=sprWriter2WalkUzi {
	if argument1=sprEMafiaGetUp return sprEMafiaDieWriter
	if argument1=sprEGangGetUp return sprEGangDieWriter
	}
	if objPlayer.sprite_index=sprWriterWalkBat or objPlayer.sprite_index=sprWriterWalkClub or objPlayer.sprite_index=sprWriterWalkPipe {
	if argument1=sprEMafiaGetUp return sprEMafiaDieBluntWriter 
	if argument1=sprEGangGetUp return sprEGangDieBluntWriter
	}
	if objPlayer.sprite_index=sprWriter2WalkBat or objPlayer.sprite_index=sprWriter2WalkClub or objPlayer.sprite_index=sprWriter2WalkPipe {
	if argument1=sprEMafiaGetUp return sprEMafiaDieBlunt
	if argument1=sprEGangGetUp return sprEGangDieBlunt
	}
	if objPlayer.sprite_index=sprWriter2WalkKnife {
	if argument1=sprEMafiaGetUp return sprEMafiaDieKnife
	if argument1=sprEGangGetUp return sprEGangDieKnife
	objPlayer.kills+=1
	}
	if objPlayer.sprite_index=sprWriter2WalkChain {
	if argument1=sprEGangGetUp return sprEGangDieChain
	}
	if objPlayer.sprite_index=sprWriter2WalkUnarmed {
	if argument1=sprEMafiaGetUp return sprEMafiaDieStomp
	if argument1=sprEGangGetUp return sprEGangDieStomp
	}
	//Henchman

	if objPlayer.sprite_index=sprHenchmanWalkUnarmed or objPlayer.sprite_index=sprHenchmanWalkSilencer or objPlayer.sprite_index=sprHenchmanWalk9mm or objPlayer.sprite_index=sprHenchmanWalkShotgun or objPlayer.sprite_index=sprHenchmanWalkUzi {
	if argument1=sprEGangGetUp return sprEGangDieBash
	}
	if objPlayer.sprite_index=sprHenchmanWalkBat {
	if argument1=sprEGangGetUp return sprEGangDieBlunt
	}
	if objPlayer.sprite_index=sprHenchmanWalkChain {
	if argument1=sprEGangGetUp return sprEGangDieChain
	}
	if objPlayer.sprite_index=sprHenchmanWalkPipe {
	if argument1=sprEGangGetUp return sprEGangDieBlunt
	}
	if objPlayer.sprite_index=sprHenchmanWalkKnife {
	if argument1=sprEGangGetUp return sprEGangDieKnife
	}

	//FANS

	//Tiger
	if objPlayer.sprite_index=sprTigerWalkUnarmed {
	if argument1=sprEGangGetUp return sprEGangDieTiger
	if argument1=sprEGangFatGetUp return sprEGangFatDieTiger
	if argument1=sprEMafiaGetUp return sprEMafiaDieTiger
	if argument1=sprEMafiaFatGetUp return sprEMafiaFatDieTiger
	}

	//Zebra
	if objPlayer.sprite_index=sprZebraWalkUnarmed or objPlayer.sprite_index=sprZebraWalk9mm or objPlayer.sprite_index=sprZebraWalkShotgun or objPlayer.sprite_index=sprZebraWalkUzi or objPlayer.sprite_index=sprZebraWalkDoubleBarrel or objPlayer.sprite_index=sprZebraWalkSilencer or objPlayer.sprite_index=sprZebraWalkM16 or objPlayer.sprite_index=sprZebraWalkKalashnikov {
	if argument1=sprEGangGetUp return sprEGangDieBash
	if argument1=sprEMafiaGetUp return sprEMafiaDieBash
	}
	if objPlayer.sprite_index=sprZebraWalkBat or objPlayer.sprite_index=sprCopWalkBat or objPlayer.sprite_index=sprBearWalkBat or objPlayer.sprite_index=sprBearWalkClub or objPlayer.sprite_index=sprZebraWalkClub {
	if argument1=sprEGangGetUp return sprEGangDieBlunt
	if argument1=sprEMafiaGetUp return sprEMafiaDieBlunt
	}
	if objPlayer.sprite_index=sprZebraWalkChain or objPlayer.sprite_index=sprCopWalkChain or objPlayer.sprite_index=sprBearWalkChain or sprite_index=sprWriterWalkChain {
	if argument1=sprEGangGetUp return sprEGangDieChain
	}
	if objPlayer.sprite_index=sprZebraWalkPipe or objPlayer.sprite_index=sprCopWalkPipe or objPlayer.sprite_index=sprBearWalkPipe {
	if argument1=sprEGangGetUp return sprEGangDieBlunt
	if argument1=sprColombianGetUp return sprColombianDieBlunt
	}
	if objPlayer.sprite_index=sprZebraWalkKnife or objPlayer.sprite_index=sprCopWalkKnife or objPlayer.sprite_index=sprBearWalkKnife {
	if argument1=sprEGangGetUp return sprEGangDieKnife
	if argument1=sprEMafiaGetUp return sprEMafiaDieKnife
	if argument1=sprColombianGetUp return sprColombianDieKnife
	}

	//Swans
	if objPlayer.sprite_index=sprSwanWalkChainsaw {
	if argument1=sprEGangGetUp return choose(sprEGangDieChainsaw1,sprEGangDieChainsaw2)
	if argument1=sprEMafiaGetUp return choose(sprEMafiaDieChainsaw1,sprEMafiaDieChainsaw2)
	}

	//Cop
	if objPlayer.sprite_index=sprCopWalk9mm or objPlayer.sprite_index=sprCopWalkSilencer {
	if argument1=sprEGangGetUp return sprEGangDie9mm 
	if argument1=sprColombianGetUp return sprColombianDie9mm
	if argument1=sprPoliceGetUp return sprPoliceDie9mm
	}
	if objPlayer.sprite_index=sprCopWalkUzi or objPlayer.sprite_index=sprCopWalkFamae {
	if argument1=sprEGangGetUp return sprEGangDieUzi 
	if argument1=sprColombianGetUp return sprColombianDieUzi
	}
	if objPlayer.sprite_index=sprCopWalkUnarmed {
	if argument1=sprEGangGetUp return sprEGangDieStomp 
	if argument1=sprColombianGetUp return sprColombianDieStomp
	if argument1=sprPoliceGetUp return sprPoliceDieStomp
	}
	if objPlayer.sprite_index=sprCopWalkShotgun or objPlayer.sprite_index=sprCopWalkMendoza {
	if argument1=sprEGangGetUp return sprEGangDieCop
	if argument1=sprPoliceGetUp return sprPoliceDieShotgun
	}
	if objPlayer.sprite_index=sprCopWalkMachete return sprColombianDieKnife
	if objPlayer.sprite_index=sprCopWalkStick return sprPoliceDieBlunt

	//Bear

	if objPlayer.sprite_index=sprBearWalkUnarmed or objPlayer.sprite_index=sprBearWalk9mm or objPlayer.sprite_index=sprBearWalkShotgun or objPlayer.sprite_index=sprBearWalkUzi or objPlayer.sprite_index=sprBearWalkSpecial or objPlayer.sprite_index=sprBearTurnSpecial or objPlayer.sprite_index=sprBearWalkKalashnikov or objPlayer.sprite_index=sprBearWalkDoubleBarrel or objPlayer.sprite_index=sprBearWalkM16 or objPlayer.sprite_index=sprBearWalkSilencer  {
	if argument1=sprEGangGetUp return sprEGangDieStomp
	if argument1=sprEMafiaGetUp return sprEGangDieStomp
	}

	//Nicke
	if objPlayer.object_index=objNicke return sprSoldierDieKnife

	//Cobra
	if objPlayer.sprite_index=sprCobraWalkUnarmed return sprEMafiaDieStomp
	if objPlayer.sprite_index=sprCobraWalkMP5 or objPlayer.sprite_index=sprCobraWalkShotgun or objPlayer.sprite_index=sprCobraWalkUzi or objPlayer.sprite_index=sprCobraWalkDoubleBarrel {
	if argument1=sprEMafiaGetUp return sprEMafiaDieStomp
	}
	if objPlayer.sprite_index=sprCobraWalkBat or objPlayer.sprite_index=sprCobraWalkClub {
	if argument1=sprEMafiaGetUp return sprEMafiaDieBlunt
	}
	if objPlayer.sprite_index=sprCobraWalkBottle {
	if argument1=sprEMafiaGetUp return sprEMafiaDieBottle
	}
	if objPlayer.sprite_index=sprCobraWalkBottleBroken {
	if argument1=sprEMafiaGetUp return sprEMafiaDieBottleBroken
	}
	if objPlayer.sprite_index=sprCobraWalkKnife {
	if argument1=sprEMafiaGetUp return sprEMafiaDieKnife
	}

	}




}
