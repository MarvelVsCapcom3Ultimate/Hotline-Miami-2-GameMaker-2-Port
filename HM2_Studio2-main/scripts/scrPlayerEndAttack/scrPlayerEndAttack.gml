function scrPlayerEndAttack() {
	//Son LSD
	if sprite_index=sprSonAttackShotgunLSD {
	sprite_index=sprSonWalkShotgunLSD
	image_speed=0
	}
	if sprite_index=sprSonAttackMagnumLSD {
	sprite_index=sprSonWalkMagnumLSD
	image_speed=0
	}
	if sprite_index=sprSonAttackAxeLSD {
	sprite_index=sprSonWalkAxeLSD
	image_speed=0
	left=-left
	}


	//Son

	if sprite_index=sprSonAttackPunch {
	sprite_index=sprSonWalkUnarmed
	image_speed=0
	left=-left
	}
	if sprite_index=sprSonAttackPipe {
	sprite_index=sprSonWalkPipe
	image_speed=0
	left=-left
	}
	if sprite_index=sprSonAttackKnife {
	sprite_index=sprSonWalkKnife
	image_speed=0
	left=-left
	}
	if sprite_index=sprSonAttackClub {
	sprite_index=sprSonWalkClub
	image_speed=0
	left=-left
	}
	if sprite_index=sprSonAttackMachette {
	sprite_index=sprSonWalkMachette
	image_speed=0
	left=-left
	}
	if sprite_index=sprSonAttackSword {
	sprite_index=sprSonWalkSword
	image_speed=0
	}
	if sprite_index=sprSonAttackStick {
	sprite_index=sprSonWalkStick
	image_speed=0
	left=-left
	}
	if sprite_index=sprSonAttackSilencer {
	sprite_index=sprSonWalkSilencer
	image_speed=0
	}
	if sprite_index=sprSonAttackFamae {
	sprite_index=sprSonWalkFamae
	image_speed=0
	}
	if sprite_index=sprSonAttackShotgun {
	sprite_index=sprSonWalkShotgun
	image_speed=0
	}
	if sprite_index=sprSonAttackMendoza {
	sprite_index=sprSonWalkMendoza
	image_speed=0
	}
	if sprite_index=sprSonAttackMagnum {
	sprite_index=sprSonWalkMagnum
	image_speed=0
	}
	if sprite_index=sprSonAttackUzi {
	sprite_index=sprSonWalkUzi
	image_speed=0
	}
	if sprite_index=sprSonAttackKalashnikov {
	sprite_index=sprSonWalkKalashnikov
	image_speed=0
	}


	//Pig Butcher
	if sprite_index=sprPigAttackPunch {
	sprite_index=sprPigWalkUnarmed
	image_speed=0
	left=-left
	}
	if sprite_index=sprPigAttackBat {
	sprite_index=sprPigWalkBat
	image_speed=0
	left=-left
	}
	if sprite_index=sprPigAttackStick {
	sprite_index=sprPigWalkStick
	image_speed=0
	left=-left
	}
	if sprite_index=sprPigAttackTaser {
	sprite_index=sprPigWalkTaser
	image_speed=0
	}
	if sprite_index=sprPigAttackDoubleBarrel1 {
	sprite_index=sprPigWalkDoubleBarrel
	image_speed=0
	}
	if sprite_index=sprPigAttackDoubleBarrel2 {
	sprite_index=sprPigWalkDoubleBarrel
	image_speed=0
	}
	if sprite_index=sprPigAttackHammer {
	sprite_index=sprPigWalkHammer
	image_speed=0
	}
	if sprite_index=sprPigAttack9mm {
	sprite_index=sprPigWalk9mm
	image_speed=0
	}
	if sprite_index=sprPigAttackShotgun {
	sprite_index=sprPigWalkShotgun
	image_speed=0
	}

	//Henchman

	if sprite_index=sprHenchmanAttackPunch {
	sprite_index=sprHenchmanWalkUnarmed
	image_speed=0
	left=-left
	}
	if sprite_index=sprHenchmanAttackPipe {
	sprite_index=sprHenchmanWalkPipe
	image_speed=0
	left=-left
	}
	if sprite_index=sprHenchmanAttackKnife {
	sprite_index=sprHenchmanWalkKnife
	image_speed=0
	left=-left
	}
	if sprite_index=sprHenchmanAttackChain {
	sprite_index=sprHenchmanWalkChain
	image_speed=0
	left=-left
	}
	if sprite_index=sprHenchmanAttackBat {
	sprite_index=sprHenchmanWalkBat
	image_speed=0
	left=-left
	}
	if sprite_index=sprHenchmanAttackSilencer {
	sprite_index=sprHenchmanWalkSilencer
	image_speed=0
	}
	if sprite_index=sprHenchmanAttack9mm {
	sprite_index=sprHenchmanWalk9mm
	image_speed=0
	}
	if sprite_index=sprHenchmanAttackShotgun {
	sprite_index=sprHenchmanWalkShotgun
	image_speed=0
	}
	if sprite_index=sprHenchmanAttackUzi {
	sprite_index=sprHenchmanWalkUzi
	image_speed=0
	}

	//FANS

	//Tiger
	if sprite_index=sprTigerAttackPunch1 or sprite_index=sprTigerAttackPunch2 {
	sprite_index=sprTigerWalkUnarmed
	image_speed=0
	}

	//Bear
	if sprite_index=sprBearAttackPunch {
	sprite_index=sprBearWalkUnarmed
	image_speed=0
	left=-left
	}
	if sprite_index=sprBearAttackPipe {
	sprite_index=sprBearWalkPipe
	image_speed=0
	left=-left
	}
	if sprite_index=sprBearAttackKnife {
	sprite_index=sprBearWalkKnife
	image_speed=0
	left=-left
	}
	if sprite_index=sprBearAttackChain {
	sprite_index=sprBearWalkChain
	image_speed=0
	left=-left
	}
	if sprite_index=sprBearAttackBat {
	sprite_index=sprBearWalkBat
	image_speed=0
	left=-left
	}
	if sprite_index=sprBearAttackClub {
	sprite_index=sprBearWalkClub
	image_speed=0
	left=-left
	}
	if sprite_index=sprBearAttack9mm {
	sprite_index=sprBearWalk9mm
	image_speed=0
	}
	if sprite_index=sprBearAttackShotgun {
	sprite_index=sprBearWalkShotgun
	image_speed=0
	}
	if sprite_index=sprBearAttackUzi {
	sprite_index=sprBearWalkUzi
	image_speed=0
	}
	if sprite_index=sprBearAttackM16 {
	sprite_index=sprBearWalkM16
	image_speed=0
	}
	if sprite_index=sprBearAttackDoubleBarrel1 or sprite_index=sprBearAttackDoubleBarrel2 {
	sprite_index=sprBearWalkUzi
	image_speed=0
	}
	if sprite_index=sprBearAttackKalashnikov {
	sprite_index=sprBearWalkKalashnikov
	image_speed=0
	}
	if sprite_index=sprBearAttackSilencer {
	sprite_index=sprBearWalkSilencer
	image_speed=0
	}

	//Zebra 
	if sprite_index=sprZebraAttackPunch {
	sprite_index=sprZebraWalkUnarmed
	image_speed=0
	left=-left
	}
	if sprite_index=sprZebraAttackPipe {
	sprite_index=sprZebraWalkPipe
	image_speed=0
	left=-left
	}
	if sprite_index=sprZebraAttackKnife {
	sprite_index=sprZebraWalkKnife
	image_speed=0
	left=-left
	}
	if sprite_index=sprZebraAttackChain {
	sprite_index=sprZebraWalkChain
	image_speed=0
	left=-left
	}
	if sprite_index=sprZebraAttackBat {
	sprite_index=sprZebraWalkBat
	image_speed=0
	left=-left
	}
	if sprite_index=sprZebraAttackClub {
	sprite_index=sprZebraWalkClub
	image_speed=0
	left=-left
	}
	if sprite_index=sprZebraAttack9mm {
	sprite_index=sprZebraWalk9mm
	image_speed=0
	}
	if sprite_index=sprZebraAttackShotgun {
	sprite_index=sprZebraWalkShotgun
	image_speed=0
	}
	if sprite_index=sprZebraAttackUzi {
	sprite_index=sprZebraWalkUzi
	image_speed=0
	}
	if sprite_index=sprZebraAttackM16 {
	sprite_index=sprZebraWalkM16
	image_speed=0
	}
	if sprite_index=sprZebraAttackDoubleBarrel1 or sprite_index=sprZebraAttackDoubleBarrel2 {
	sprite_index=sprZebraWalkDoubleBarrel
	image_speed=0
	}
	if sprite_index=sprZebraAttackKalashnikov {
	sprite_index=sprZebraWalkKalashnikov
	image_speed=0
	}
	if sprite_index=sprZebraAttackSilencer {
	sprite_index=sprZebraWalkSilencer
	image_speed=0
	}

	//SWAN

	if sprite_index=sprSwanAttackChainsaw {
	sprite_index=sprSwanWalkChainsaw
	image_speed=0
	left=-left
	}
	if sprite_index=sprSwanAttack9mm {
	sprite_index=sprSwanWalk9mm
	image_speed=0
	}
	if sprite_index=sprSwanAttackShotgun {
	sprite_index=sprSwanWalkShotgun
	image_speed=0
	}
	if sprite_index=sprSwanAttackUzi {
	sprite_index=sprSwanWalkUzi
	image_speed=0
	}
	if sprite_index=sprSwanAttackKalashnikov {
	sprite_index=sprSwanWalkKalashnikov
	image_speed=0
	}
	if sprite_index=sprSwanAttackSilencer {
	sprite_index=sprSwanWalkSilencer
	image_speed=0
	}
	if sprite_index=sprSwanAttackDoubleBarrel1 or sprite_index=sprSwanAttackDoubleBarrel2 {
	sprite_index=sprSwanWalkDoubleBarrel
	image_speed=0
	}
	if sprite_index=sprSwanAttackM16 {
	sprite_index=sprSwanWalkM16
	image_speed=0
	}

	//NICKE

	if sprite_index=sprNickeAttackMachinegun {
	sprite_index=sprNickeWalkMachinegun
	image_speed=0
	}
	if sprite_index=sprNickeAttackFlameThrower {
	sprite_index=sprNickeWalkFlameThrower
	image_speed=0
	}
	if sprite_index=sprNickeAttackSniper {
	sprite_index=sprNickeWalkSniper
	image_speed=0
	}
	if sprite_index=sprNickeAttackHeavy {
	sprite_index=sprNickeWalkHeavy
	image_speed=0
	}
	if sprite_index=sprNickeAttackShotgun {
	sprite_index=sprNickeWalkShotgun
	image_speed=0
	}
	if sprite_index=sprNickeAttackKnife {
	sprite_index=sprNickeWalkKnife
	image_speed=0
	}
	if sprite_index=sprNickeAttackKnifeHeavy {
	sprite_index=sprNickeWalkKnifeHeavy
	image_speed=0
	}
	if sprite_index=sprNickeAttackKnifeSniper {
	sprite_index=sprNickeWalkKnifeSniper
	image_speed=0
	}
	if sprite_index=sprNickeAttackKnifeShotgun {
	sprite_index=sprNickeWalkKnifeShotgun
	image_speed=0
	}
	if sprite_index=sprNickeAttackKnifeMachinegun {
	sprite_index=sprNickeWalkKnifeMachinegun
	image_speed=0
	}
	if sprite_index=sprNickeAttackKnifeFlameThrower {
	sprite_index=sprNickeWalkKnifeFlameThrower
	image_speed=0
	}

	//Cop

	if sprite_index=sprCopAttackPunch {
	sprite_index=sprCopWalkUnarmed
	image_speed=0
	left=-left
	}
	if sprite_index=sprCopAttackPipe {
	sprite_index=sprCopWalkPipe
	image_speed=0
	left=-left
	}
	if sprite_index=sprCopAttackKnife {
	sprite_index=sprCopWalkKnife
	image_speed=0
	left=-left
	}
	if sprite_index=sprCopAttackChain {
	sprite_index=sprCopWalkChain
	image_speed=0
	left=-left
	}
	if sprite_index=sprCopAttackMachette {
	sprite_index=sprCopWalkMachete
	image_speed=0
	left=-left
	}
	if sprite_index=sprCopAttackStick {
	sprite_index=sprCopWalkStick
	image_speed=0
	left=-left
	}
	if sprite_index=sprCopAttackBat {
	sprite_index=sprCopWalkBat
	image_speed=0
	left=-left
	}
	if sprite_index=sprCopAttack9mm {
	sprite_index=sprCopWalk9mm
	image_speed=0
	}
	if sprite_index=sprCopAttackShotgun {
	sprite_index=sprCopWalkShotgun
	image_speed=0
	}
	if sprite_index=sprCopAttackUzi {
	sprite_index=sprCopWalkUzi
	image_speed=0
	}
	if sprite_index=sprCopAttackMendoza {
	sprite_index=sprCopWalkMendoza
	image_speed=0
	}
	if sprite_index=sprCopAttackFamae {
	sprite_index=sprCopWalkFamae
	image_speed=0
	}

	//Cobra

	if sprite_index=sprCobraAttackPunch {
	image_speed=0
	sprite_index=sprCobraWalkUnarmed
	}
	if sprite_index=sprCobraAttackBottle {
	image_speed=0
	sprite_index=sprCobraWalkBottle 
	}
	if sprite_index=sprCobraAttackBottleBroken {
	image_speed=0
	sprite_index=sprCobraWalkBottleBroken 
	}
	if sprite_index=sprCobraAttackKnife {
	image_speed=0
	sprite_index=sprCobraWalkKnife 
	}
	if sprite_index=sprCobraAttackBat {
	image_speed=0
	sprite_index=sprCobraWalkBat 
	}
	if sprite_index=sprCobraAttackClub {
	image_speed=0
	sprite_index=sprCobraWalkClub
	}

	//Guns
	if sprite_index=sprCobraAttackShotgun {
	sprite_index=sprCobraWalkShotgun
	image_speed=0
	}

	if sprite_index=sprCobraAttackDoubleBarrel1 or sprite_index=sprCobraAttackDoubleBarrel2 {
	sprite_index=sprCobraWalkDoubleBarrel
	image_speed=0
	}

	if sprite_index=sprCobraAttackM16 {
	sprite_index=sprCobraWalkM16
	image_speed=0
	}

	if sprite_index=sprCobraAttackSilencer {
	sprite_index=sprCobraWalkSilencer
	image_speed=0
	}

	if sprite_index=sprCobraAttackMP5 {
	sprite_index=sprCobraWalkMP5
	image_speed=0
	}

	if sprite_index=sprCobraAttackUzi {
	sprite_index=sprCobraWalkUzi
	image_speed=0
	}

	if sprite_index=sprCobraAttackKalashnikov {
	sprite_index=sprCobraWalkKalashnikov
	image_speed=0
	}

	//RAT

	if sprite_index=sprRatAttackPunch {
	image_speed=0
	sprite_index=sprRatWalkUnarmed
	left=-left
	}
	if sprite_index=sprRatAttackKnife {
	image_speed=0
	sprite_index=sprRatWalkKnife 
	left=-left
	}
	if sprite_index=sprRatAttackBat {
	image_speed=0
	sprite_index=sprRatWalkBat 
	left=-left
	}
	if sprite_index=sprRatAttackClub {
	image_speed=0
	sprite_index=sprRatWalkClub
	left=-left
	}

	//Guns
	if sprite_index=sprRatAttackShotgun {
	sprite_index=sprRatWalkShotgun
	image_speed=0
	}

	if sprite_index=sprRatAttackDoubleBarrel1 or sprite_index=sprRatAttackDoubleBarrel2 {
	sprite_index=sprRatWalkDoubleBarrel
	image_speed=0
	}

	if sprite_index=sprRatAttackM16 {
	sprite_index=sprRatWalkM16
	image_speed=0
	}

	if sprite_index=sprRatAttackSilencer {
	sprite_index=sprRatWalkSilencer
	image_speed=0
	}

	if sprite_index=sprRatAttackUzi {
	sprite_index=sprRatWalkUzi
	image_speed=0
	}

	if sprite_index=sprRatAttackSilencedUzi {
	sprite_index=sprRatWalkSilencedUzi
	image_speed=0
	}

	if sprite_index=sprRatAttackKalashnikov {
	sprite_index=sprRatWalkKalashnikov
	image_speed=0
	}


	//WRITER
	if sprite_index=sprWriterAttackPunch {
	image_speed=0
	sprite_index=sprWriterWalkUnarmed
	left=-left
	}
	if sprite_index=sprWriter2AttackPunch {
	image_speed=0
	sprite_index=sprWriter2WalkUnarmed
	left=-left
	}
	if sprite_index=sprWriter2AttackKnife {
	image_speed=0
	sprite_index=sprWriter2WalkKnife 
	left=-left
	}
	if sprite_index=sprWriterAttackBat {
	image_speed=0
	sprite_index=sprWriterWalkBat 
	left=-left
	}
	if sprite_index=sprWriter2AttackBat {
	image_speed=0
	sprite_index=sprWriter2WalkBat 
	left=-left
	}
	if sprite_index=sprWriterAttackChain {
	image_speed=0
	sprite_index=sprWriterWalkChain 
	left=-left
	}
	if sprite_index=sprWriter2AttackChain {
	image_speed=0
	sprite_index=sprWriter2WalkChain 
	left=-left
	}
	if sprite_index=sprWriterAttackClub {
	image_speed=0
	sprite_index=sprWriterWalkClub
	left=-left
	}
	if sprite_index=sprWriter2AttackClub {
	image_speed=0
	sprite_index=sprWriter2WalkClub
	left=-left
	}
	if sprite_index=sprWriterAttackPipe {
	image_speed=0
	sprite_index=sprWriterWalkPipe
	left=-left
	}
	if sprite_index=sprWriter2AttackPipe {
	image_speed=0
	sprite_index=sprWriter2WalkPipe
	left=-left
	}

	//Guns
	if sprite_index=sprWriter2AttackShotgun {
	sprite_index=sprWriter2WalkShotgun
	image_speed=0
	}

	if sprite_index=sprWriter2AttackDoubleBarrel1 or sprite_index=sprWriter2AttackDoubleBarrel2 {
	sprite_index=sprWriter2WalkDoubleBarrel
	image_speed=0
	}

	if sprite_index=sprWriter2AttackM16 {
	sprite_index=sprWriter2WalkM16
	image_speed=0
	}

	if sprite_index=sprWriter2AttackSilencer {
	sprite_index=sprWriter2WalkSilencer
	image_speed=0
	}

	if sprite_index=sprWriter2AttackUzi {
	sprite_index=sprWriter2WalkUzi
	image_speed=0
	}

	if sprite_index=sprWriter2AttackKalashnikov {
	sprite_index=sprWriter2WalkKalashnikov
	image_speed=0
	}

	if sprite_index=sprWriter2Attack9mm {
	sprite_index=sprWriter2Walk9mm
	image_speed=0
	}


	//Disarm
	if sprite_index=sprWriterDisarmShotgun {
	sprite_index=sprWriterWalkUnarmed
	image_speed=0
	}

	if sprite_index=sprWriterDisarmDoubleBarrel {
	sprite_index=sprWriterWalkUnarmed
	image_speed=0
	}

	if sprite_index=sprWriterDisarmM16 {
	sprite_index=sprWriterWalkUnarmed
	image_speed=0
	}

	if sprite_index=sprWriterDisarm9mm {
	sprite_index=sprWriterWalkUnarmed
	image_speed=0
	}

	if sprite_index=sprWriterDisarmSilencer {
	sprite_index=sprWriterWalkUnarmed
	image_speed=0
	}

	if sprite_index=sprWriterDisarmUzi {
	sprite_index=sprWriterWalkUnarmed
	image_speed=0
	}

	if sprite_index=sprWriterDisarmKalashnikov {
	sprite_index=sprWriterWalkUnarmed
	image_speed=0
	}

	//Throw Jacket

	if sprite_index=sprWriterDropJacket {
	sprite_index=sprWriter2WalkUnarmed
	image_speed=0
	objEffector.whitealpha=1
	with objBG instance_destroy()
	instance_create(0,0,objNewBGSon)
	}



}
