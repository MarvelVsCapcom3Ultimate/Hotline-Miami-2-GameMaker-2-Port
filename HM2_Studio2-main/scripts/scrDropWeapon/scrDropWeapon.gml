function scrDropWeapon() {
	my_id1=-1234
	my_id2=-1234

	///WALKING

	if sprite_index=sprPigWalkStick my_id1=instance_create(x,y,objStick)
	if sprite_index=sprPigWalkTaser my_id1=instance_create(x,y,objTaser)
	if sprite_index=sprPigWalkBat my_id1=instance_create(x,y,objBat)
	if sprite_index=sprPigWalk9mm my_id1=instance_create(x,y,obj9mm)
	if sprite_index=sprPigWalkShotgun my_id1=instance_create(x,y,objShotgun)
	if sprite_index=sprPigWalkHammer my_id1=instance_create(x,y,objHammer)
	if sprite_index=sprPigWalkDoubleBarrel my_id1=instance_create(x,y,objDoubleBarrel)
	//if object_index=objPigButcher sprite_index=sprPigWalkUnarmed

	if sprite_index=sprSonWalkShotgunLSD my_id1=instance_create(x,y,objShotgun)
	if sprite_index=sprSonWalkAxeLSD my_id1=instance_create(x,y,objAxe)
	if sprite_index=sprSonWalkMagnumLSD my_id1=instance_create(x,y,objMagnum)
	//if object_index=objSonLSD sprite_index=sprSonWalkUnarmedLSD

	if sprite_index=sprRatWalkClub my_id1=instance_create(x,y,objClub)
	if sprite_index=sprRatWalkBat my_id1=instance_create(x,y,objBat)
	if sprite_index=sprRatWalkSilencer my_id1=instance_create(x,y,objSilencer)
	if sprite_index=sprRatWalkM16 my_id1=instance_create(x,y,objM16)
	if sprite_index=sprRatWalkKalashnikov my_id1=instance_create(x,y,objKalashnikov)
	if sprite_index=sprRatWalkSilencedUzi my_id1=instance_create(x,y,objSilencedUzi)
	if sprite_index=sprRatWalkKnife my_id1=instance_create(x,y,objKnife)
	if sprite_index=sprRatWalkShotgun my_id1=instance_create(x,y,objShotgun)
	if sprite_index=sprRatWalkDoubleBarrel my_id1=instance_create(x,y,objDoubleBarrel)
	if sprite_index=sprRatWalkUzi my_id1=instance_create(x,y,objUzi)
	//if object_index=objRat sprite_index=sprRatWalkUnarmed

	if sprite_index=sprWriter2Walk9mm my_id1=instance_create(x,y,obj9mm)
	if sprite_index=sprWriterWalkMagnum my_id1=instance_create(x,y,objMagnum)
	if sprite_index=sprWriter2WalkSilencer my_id1=instance_create(x,y,objSilencer)
	if sprite_index=sprWriter2WalkM16 my_id1=instance_create(x,y,objM16)
	if sprite_index=sprWriter2WalkKalashnikov my_id1=instance_create(x,y,objKalashnikov)
	if sprite_index=sprWriter2WalkShotgun my_id1=instance_create(x,y,objShotgun)
	if sprite_index=sprWriter2WalkDoubleBarrel my_id1=instance_create(x,y,objDoubleBarrel)
	if sprite_index=sprWriter2WalkUzi my_id1=instance_create(x,y,objUzi)
	if sprite_index=sprWriter2WalkKnife my_id1=instance_create(x,y,objKnife)
	if sprite_index=sprWriter2WalkChain my_id1=instance_create(x,y,objChain)
	if sprite_index=sprWriter2WalkClub my_id1=instance_create(x,y,objClub)
	if sprite_index=sprWriter2WalkPipe my_id1=instance_create(x,y,objPipe)
	if sprite_index=sprWriter2WalkBat my_id1=instance_create(x,y,objBat)
	if sprite_index=sprWriterWalkChain my_id1=instance_create(x,y,objChain)
	if sprite_index=sprWriterWalkClub my_id1=instance_create(x,y,objClub)
	if sprite_index=sprWriterWalkPipe my_id1=instance_create(x,y,objPipe)
	if sprite_index=sprWriterWalkBat my_id1=instance_create(x,y,objBat)
	//if object_index=objWriter {if kills<2 sprite_index=sprWriterWalkUnarmed else sprite_index=sprWriter2WalkUnarmed}

	if sprite_index=sprHenchmanWalkSilencer my_id1=instance_create(x,y,objSilencer)
	if sprite_index=sprHenchmanWalkBat my_id1=instance_create(x,y,objBat)
	if sprite_index=sprHenchmanWalkChain my_id1=instance_create(x,y,objChain)
	if sprite_index=sprHenchmanWalkPipe my_id1=instance_create(x,y,objPipe)
	if sprite_index=sprHenchmanWalkKnife my_id1=instance_create(x,y,objButterfly)
	if sprite_index=sprHenchmanWalkShotgun my_id1=instance_create(x,y,objShotgun)
	if sprite_index=sprHenchmanWalk9mm my_id1=instance_create(x,y,obj9mm)
	if sprite_index=sprHenchmanWalkUzi my_id1=instance_create(x,y,objUzi)
	//if object_index=objPlayerHenchman sprite_index=sprHenchmanWalkUnarmed

	if sprite_index=sprSonWalkSword my_id1=instance_create(x,y,objSword)
	if sprite_index=sprSonWalkSilencer my_id1=instance_create(x,y,objSilencer)
	if sprite_index=sprSonWalkClub my_id1=instance_create(x,y,objClub)
	if sprite_index=sprSonWalkMachette my_id1=instance_create(x,y,objMachete)
	if sprite_index=sprSonWalkPipe my_id1=instance_create(x,y,objPipe)
	if sprite_index=sprSonWalkStick my_id1=instance_create(x,y,objStick)
	if sprite_index=sprSonWalkKnife my_id1=instance_create(x,y,objButterfly)
	if sprite_index=sprSonWalkShotgun my_id1=instance_create(x,y,objShotgun)
	if sprite_index=sprSonWalkMagnum my_id1=instance_create(x,y,objMagnum)
	if sprite_index=sprSonWalkFamae my_id1=instance_create(x,y,objFamae)
	if sprite_index=sprSonWalkMendoza my_id1=instance_create(x,y,objMendoza)
	if sprite_index=sprSonWalkUzi my_id1=instance_create(x,y,objUzi)
	if sprite_index=sprSonWalkKalashnikov my_id1=instance_create(x,y,objKalashnikov)
	//if object_index=objSon sprite_index=sprSonWalkUnarmed

	if sprite_index=sprBearWalkSpecial nothing=1 else {
	if sprite_index=sprBearWalkBat my_id1=instance_create(x,y,objBat)
	if sprite_index=sprBearWalkChain my_id1=instance_create(x,y,objChain)
	if sprite_index=sprBearWalkPipe my_id1=instance_create(x,y,objPipe)
	if sprite_index=sprBearWalkClub my_id1=instance_create(x,y,objClub)
	if sprite_index=sprBearWalkKnife my_id1=instance_create(x,y,objButterfly)
	if sprite_index=sprBearWalkShotgun my_id1=instance_create(x,y,objShotgun)
	if sprite_index=sprBearWalk9mm my_id1=instance_create(x,y,obj9mm)
	if sprite_index=sprBearWalkUzi my_id1=instance_create(x,y,objUzi)
	if sprite_index=sprBearWalkM16 my_id1=instance_create(x,y,objM16)
	if sprite_index=sprBearWalkDoubleBarrel my_id1=instance_create(x,y,objDoubleBarrel)
	if sprite_index=sprBearWalkSilencer my_id1=instance_create(x,y,objSilencer)
	if sprite_index=sprBearWalkKalashnikov my_id1=instance_create(x,y,objKalashnikov)
	//if object_index=objPlayerBear sprite_index=sprBearWalkUnarmed
	}

	if sprite_index=sprZebraWalkBat my_id1=instance_create(x,y,objBat)
	if sprite_index=sprZebraWalkChain my_id1=instance_create(x,y,objChain)
	if sprite_index=sprZebraWalkPipe my_id1=instance_create(x,y,objPipe)
	if sprite_index=sprZebraWalkClub my_id1=instance_create(x,y,objClub)
	if sprite_index=sprZebraWalkKnife my_id1=instance_create(x,y,objButterfly)
	if sprite_index=sprZebraWalkShotgun my_id1=instance_create(x,y,objShotgun)
	if sprite_index=sprZebraWalk9mm my_id1=instance_create(x,y,obj9mm)
	if sprite_index=sprZebraWalkUzi my_id1=instance_create(x,y,objUzi)
	if sprite_index=sprZebraWalkDoubleBarrel my_id1=instance_create(x,y,objDoubleBarrel)
	if sprite_index=sprZebraWalkKalashnikov my_id1=instance_create(x,y,objKalashnikov)
	if sprite_index=sprZebraWalkM16 my_id1=instance_create(x,y,objM16)
	if sprite_index=sprZebraWalkSilencer my_id1=instance_create(x,y,objSilencer)
	//if object_index=objPlayerZebra sprite_index=sprZebraWalkUnarmed

	if sprite_index=sprSwanWalkChainsaw my_id1=instance_create(x,y,objChainsaw)
	if sprite_index=sprSwanWalkShotgun my_id1=instance_create(x,y,objShotgun)
	if sprite_index=sprSwanWalk9mm my_id1=instance_create(x,y,obj9mm)
	if sprite_index=sprSwanWalkUzi my_id1=instance_create(x,y,objUzi)
	//if object_index=objPlayerSwanGun sprite_index=sprSwan2WalkUnarmed

	if sprite_index=sprCopWalkBat my_id1=instance_create(x,y,objBat)
	if sprite_index=sprCopWalkChain my_id1=instance_create(x,y,objChain)
	if sprite_index=sprCopWalkPipe my_id1=instance_create(x,y,objPipe)
	if sprite_index=sprCopWalkKnife my_id1=instance_create(x,y,objButterfly)
	if sprite_index=sprCopWalkShotgun my_id1=instance_create(x,y,objShotgun)
	if sprite_index=sprCopTurnShotgun my_id1=instance_create(x,y,objShotgun)
	if sprite_index=sprCopWalk9mm my_id1=instance_create(x,y,obj9mm)
	if sprite_index=sprCopWalkUzi my_id1=instance_create(x,y,objUzi)
	if sprite_index=sprCopWalkMendoza my_id1=instance_create(x,y,objMendoza)
	if sprite_index=sprCopWalkFamae my_id1=instance_create(x,y,objFamae)
	if sprite_index=sprCopWalkSilencer my_id1=instance_create(x,y,objSilencer)
	if sprite_index=sprCopWalkMachete my_id1=instance_create(x,y,objMachete)
	if sprite_index=sprCopWalkStick my_id1=instance_create(x,y,objStick)
	//if object_index=objCop sprite_index=sprCopWalkUnarmed

	//if sprite_index=sprCobraWalkBottleBroken my_id1=instance_create(x,y,objBottleBroken)
	//if sprite_index=sprCobraWalkBottle my_id1=instance_create(x,y,objBottle)
	if sprite_index=sprCobraWalkClub my_id1=instance_create(x,y,objClub)
	if sprite_index=sprCobraWalkBat my_id1=instance_create(x,y,objBat)
	if sprite_index=sprCobraWalkSilencer my_id1=instance_create(x,y,objSilencer)
	if sprite_index=sprCobraWalkM16 my_id1=instance_create(x,y,objM16)
	if sprite_index=sprCobraWalkKalashnikov my_id1=instance_create(x,y,objKalashnikov)
	if sprite_index=sprCobraWalkMP5 my_id1=instance_create(x,y,objMP5)
	if sprite_index=sprCobraWalkKnife my_id1=instance_create(x,y,objKnife)
	if sprite_index=sprCobraWalkShotgun my_id1=instance_create(x,y,objShotgun)
	if sprite_index=sprCobraWalkDoubleBarrel my_id1=instance_create(x,y,objDoubleBarrel)
	if sprite_index=sprCobraWalkUzi my_id1=instance_create(x,y,objUzi)
	//if object_index=objPlayerCobra sprite_index=sprCobraWalkUnarmed

	if sprite_index=sprNickeWalkKnife my_id1=instance_create(x,y,objKnife)
	if sprite_index=sprNickeWalkShotgun {my_id1=instance_create(x,y,objKnife) my_id2=instance_create(x,y,objShotgun)}
	if sprite_index=sprNickeWalkSniper {my_id1=instance_create(x,y,objKnife) my_id2=instance_create(x,y,objShotgun)}
	if sprite_index=sprNickeWalkFlameThrower {my_id1=instance_create(x,y,objKnife) my_id2=instance_create(x,y,objShotgun)}
	if sprite_index=sprNickeWalkMachinegun {my_id1=instance_create(x,y,objKnife) my_id2=instance_create(x,y,objShotgun)}
	if sprite_index=sprNickeWalkHeavy {my_id1=instance_create(x,y,objKnife) my_id2=instance_create(x,y,objShotgun)}
	if sprite_index=sprNickeWalkKnifeShotgun {my_id1=instance_create(x,y,objKnife) my_id2=instance_create(x,y,objShotgun)}
	if sprite_index=sprNickeWalkKnifeSniper {my_id1=instance_create(x,y,objKnife) my_id2=instance_create(x,y,objShotgun)}
	if sprite_index=sprNickeWalkKnifeFlameThrower {my_id1=instance_create(x,y,objKnife) my_id2=instance_create(x,y,objShotgun)}
	if sprite_index=sprNickeWalkKnifeMachinegun {my_id1=instance_create(x,y,objKnife) my_id2=instance_create(x,y,objShotgun)}
	if sprite_index=sprNickeWalkKnifeHeavy {my_id1=instance_create(x,y,objKnife) my_id2=instance_create(x,y,objShotgun)}
	//if object_index=objNicke sprite_index=sprNickeWalkUnarmed

	///ATTACKING

	if sprite_index=sprPigAttackStick my_id1=instance_create(x,y,objStick)
	if sprite_index=sprPigAttackTaser my_id1=instance_create(x,y,objTaser)
	if sprite_index=sprPigAttackBat my_id1=instance_create(x,y,objBat)
	if sprite_index=sprPigAttack9mm my_id1=instance_create(x,y,obj9mm)
	if sprite_index=sprPigAttackShotgun my_id1=instance_create(x,y,objShotgun)
	if sprite_index=sprPigAttackHammer my_id1=instance_create(x,y,objHammer)
	if sprite_index=sprPigAttackDoubleBarrel1 or sprite_index=sprPigAttackDoubleBarrel2 my_id1=instance_create(x,y,objDoubleBarrel)
	if object_index=objPigButcher sprite_index=sprPigWalkUnarmed

	if sprite_index=sprSonAttackShotgunLSD my_id1=instance_create(x,y,objShotgun)
	if object_index=objSonLSD sprite_index=sprSonWalkUnarmedLSD

	if sprite_index=sprRatAttackSilencedUzi my_id1=instance_create(x,y,objSilencedUzi)
	if sprite_index=sprRatAttackClub my_id1=instance_create(x,y,objClub)
	if sprite_index=sprRatAttackBat my_id1=instance_create(x,y,objBat)
	if sprite_index=sprRatAttackSilencer my_id1=instance_create(x,y,objSilencer)
	if sprite_index=sprRatAttackM16 my_id1=instance_create(x,y,objM16)
	if sprite_index=sprRatAttackKalashnikov my_id1=instance_create(x,y,objKalashnikov)
	//if sprite_index=sprRatAttackMP5 my_id1=instance_create(x,y,objMP5)
	if sprite_index=sprRatAttackKnife my_id1=instance_create(x,y,objKnife)
	if sprite_index=sprRatAttackShotgun my_id1=instance_create(x,y,objShotgun)
	if sprite_index=sprRatAttackDoubleBarrel1 or sprite_index=sprRatAttackDoubleBarrel2 my_id1=instance_create(x,y,objDoubleBarrel)
	if sprite_index=sprRatAttackUzi my_id1=instance_create(x,y,objUzi)
	if object_index=objRat sprite_index=sprRatWalkUnarmed

	if sprite_index=sprWriter2Attack9mm my_id1=instance_create(x,y,obj9mm)
	if sprite_index=sprWriterAttackMagnum my_id1=instance_create(x,y,objMagnum)
	if sprite_index=sprWriter2AttackSilencer my_id1=instance_create(x,y,objSilencer)
	if sprite_index=sprWriter2AttackM16 my_id1=instance_create(x,y,objM16)
	if sprite_index=sprWriter2AttackKalashnikov my_id1=instance_create(x,y,objKalashnikov)
	//if sprite_index=sprWriterAttackMP5 my_id1=instance_create(x,y,objMP5)
	if sprite_index=sprWriter2AttackShotgun my_id1=instance_create(x,y,objShotgun)
	if sprite_index=sprWriter2AttackDoubleBarrel1 or sprite_index=sprWriterAttackDoubleBarrel2 my_id1=instance_create(x,y,objDoubleBarrel)
	if sprite_index=sprWriter2AttackUzi my_id1=instance_create(x,y,objUzi)
	if sprite_index=sprWriter2AttackKnife my_id1=instance_create(x,y,objKnife)
	if sprite_index=sprWriter2AttackChain my_id1=instance_create(x,y,objChain)
	if sprite_index=sprWriter2AttackClub my_id1=instance_create(x,y,objClub)
	if sprite_index=sprWriter2AttackPipe my_id1=instance_create(x,y,objPipe)
	if sprite_index=sprWriter2AttackBat my_id1=instance_create(x,y,objBat)
	if sprite_index=sprWriterAttackChain my_id1=instance_create(x,y,objChain)
	if sprite_index=sprWriterAttackClub my_id1=instance_create(x,y,objClub)
	if sprite_index=sprWriterAttackPipe my_id1=instance_create(x,y,objPipe)
	if sprite_index=sprWriterAttackBat my_id1=instance_create(x,y,objBat)
	if object_index=objWriter {if kills<2 sprite_index=sprWriterWalkUnarmed else sprite_index=sprWriter2WalkUnarmed}

	if sprite_index=sprHenchmanAttackSilencer my_id1=instance_create(x,y,objSilencer)
	if sprite_index=sprHenchmanAttackBat my_id1=instance_create(x,y,objBat)
	if sprite_index=sprHenchmanAttackChain my_id1=instance_create(x,y,objChain)
	if sprite_index=sprHenchmanAttackPipe my_id1=instance_create(x,y,objPipe)
	if sprite_index=sprHenchmanAttackKnife my_id1=instance_create(x,y,objButterfly)
	if sprite_index=sprHenchmanAttackShotgun my_id1=instance_create(x,y,objShotgun)
	if sprite_index=sprHenchmanAttack9mm my_id1=instance_create(x,y,obj9mm)
	if sprite_index=sprHenchmanAttackUzi my_id1=instance_create(x,y,objUzi)
	if object_index=objPlayerHenchman sprite_index=sprHenchmanWalkUnarmed

	if sprite_index=sprSonAttackShotgunLSD my_id1=instance_create(x,y,objShotgun)
	if sprite_index=sprSonAttackAxeLSD my_id1=instance_create(x,y,objAxe)
	if sprite_index=sprSonAttackMagnumLSD my_id1=instance_create(x,y,objMagnum)

	if sprite_index=sprSonAttackSword my_id1=instance_create(x,y,objSword)
	if sprite_index=sprSonAttackSilencer my_id1=instance_create(x,y,objSilencer)
	if sprite_index=sprSonAttackClub my_id1=instance_create(x,y,objClub)
	if sprite_index=sprSonAttackMachette my_id1=instance_create(x,y,objMachete)
	if sprite_index=sprSonAttackPipe my_id1=instance_create(x,y,objPipe)
	if sprite_index=sprSonAttackStick my_id1=instance_create(x,y,objStick)
	if sprite_index=sprSonAttackKnife my_id1=instance_create(x,y,objButterfly)
	if sprite_index=sprSonAttackShotgun my_id1=instance_create(x,y,objShotgun)
	if sprite_index=sprSonAttackMagnum my_id1=instance_create(x,y,objMagnum)
	if sprite_index=sprSonAttackFamae my_id1=instance_create(x,y,objFamae)
	if sprite_index=sprSonAttackMendoza my_id1=instance_create(x,y,objMendoza)
	if sprite_index=sprSonAttackUzi my_id1=instance_create(x,y,objUzi)
	if sprite_index=sprSonAttackKalashnikov my_id1=instance_create(x,y,objKalashnikov)
	if object_index=objSon sprite_index=sprSonWalkUnarmed

	if sprite_index=sprBearWalkSpecial or sprite_index=sprBearWalkPizza nothing=1 else {
	if sprite_index=sprBearAttackBat my_id1=instance_create(x,y,objBat)
	if sprite_index=sprBearAttackChain my_id1=instance_create(x,y,objChain)
	if sprite_index=sprBearAttackPipe my_id1=instance_create(x,y,objPipe)
	if sprite_index=sprBearAttackClub my_id1=instance_create(x,y,objClub)
	if sprite_index=sprBearAttackKnife my_id1=instance_create(x,y,objButterfly)
	if sprite_index=sprBearAttackShotgun my_id1=instance_create(x,y,objShotgun)
	if sprite_index=sprBearAttack9mm my_id1=instance_create(x,y,obj9mm)
	if sprite_index=sprBearAttackUzi my_id1=instance_create(x,y,objUzi)
	if sprite_index=sprBearAttackDoubleBarrel1 or sprite_index=sprBearAttackDoubleBarrel2 my_id1=instance_create(x,y,objDoubleBarrel)
	if sprite_index=sprBearAttackKalashnikov my_id1=instance_create(x,y,objKalashnikov)
	if sprite_index=sprBearAttackM16 my_id1=instance_create(x,y,objM16)
	if sprite_index=sprBearAttackSilencer my_id1=instance_create(x,y,objSilencer)
	if object_index=objPlayerBear sprite_index=sprBearWalkUnarmed
	}

	if sprite_index=sprZebraAttackBat my_id1=instance_create(x,y,objBat)
	if sprite_index=sprZebraAttackChain my_id1=instance_create(x,y,objChain)
	if sprite_index=sprZebraAttackPipe my_id1=instance_create(x,y,objPipe)
	if sprite_index=sprZebraAttackClub my_id1=instance_create(x,y,objClub)
	if sprite_index=sprZebraAttackKnife my_id1=instance_create(x,y,objButterfly)
	if sprite_index=sprZebraAttackShotgun my_id1=instance_create(x,y,objShotgun)
	if sprite_index=sprZebraAttack9mm my_id1=instance_create(x,y,obj9mm)
	if sprite_index=sprZebraAttackUzi my_id1=instance_create(x,y,objUzi)
	if sprite_index=sprZebraAttackKalashnikov my_id1=instance_create(x,y,objKalashnikov)
	if sprite_index=sprZebraAttackM16 my_id1=instance_create(x,y,objM16)
	if sprite_index=sprZebraAttackSilencer my_id1=instance_create(x,y,objSilencer)
	if sprite_index=sprZebraAttackDoubleBarrel1 or sprite_index=sprZebraAttackDoubleBarrel2 my_id1=instance_create(x,y,objDoubleBarrel)
	if object_index=objPlayerZebra sprite_index=sprZebraWalkUnarmed

	if sprite_index=sprSwanAttackChainsaw my_id1=instance_create(x,y,objChainsaw)
	if sprite_index=sprSwanAttackShotgun my_id1=instance_create(x,y,objShotgun)
	if sprite_index=sprSwanAttack9mm my_id1=instance_create(x,y,obj9mm)
	if sprite_index=sprSwanAttackUzi my_id1=instance_create(x,y,objUzi)
	if object_index=objPlayerSwanGun sprite_index=sprSwan2WalkUnarmed

	if sprite_index=sprCopAttackBat my_id1=instance_create(x,y,objBat)
	if sprite_index=sprCopAttackChain my_id1=instance_create(x,y,objChain)
	if sprite_index=sprCopAttackPipe my_id1=instance_create(x,y,objPipe)
	if sprite_index=sprCopAttackKnife my_id1=instance_create(x,y,objButterfly)
	if sprite_index=sprCopAttackShotgun my_id1=instance_create(x,y,objShotgun)
	if sprite_index=sprCopTurnShotgun my_id1=instance_create(x,y,objShotgun)
	if sprite_index=sprCopAttack9mm my_id1=instance_create(x,y,obj9mm)
	if sprite_index=sprCopAttackUzi my_id1=instance_create(x,y,objUzi)
	if sprite_index=sprCopAttackMachette my_id1=instance_create(x,y,objMachete)
	if sprite_index=sprCopAttackMendoza my_id1=instance_create(x,y,objMendoza)
	if sprite_index=sprCopAttackFamae my_id1=instance_create(x,y,objFamae)
	if sprite_index=sprCopAttackSilencer my_id1=instance_create(x,y,objSilencer)
	if sprite_index=sprCopAttackStick my_id1=instance_create(x,y,objStick)
	if object_index=objCop sprite_index=sprCopWalkUnarmed

	//if sprite_index=sprCobraAttackBottleBroken my_id1=instance_create(x,y,objBottleBroken)
	//if sprite_index=sprCobraAttackBottle my_id1=instance_create(x,y,objBottle)
	if sprite_index=sprCobraAttackClub my_id1=instance_create(x,y,objClub)
	if sprite_index=sprCobraAttackBat my_id1=instance_create(x,y,objBat)
	if sprite_index=sprCobraAttackSilencer my_id1=instance_create(x,y,objSilencer)
	if sprite_index=sprCobraAttackM16 my_id1=instance_create(x,y,objM16)
	if sprite_index=sprCobraAttackKalashnikov my_id1=instance_create(x,y,objKalashnikov)
	if sprite_index=sprCobraAttackMP5 my_id1=instance_create(x,y,objMP5)
	if sprite_index=sprCobraAttackKnife my_id1=instance_create(x,y,objKnife)
	if sprite_index=sprCobraAttackShotgun my_id1=instance_create(x,y,objShotgun)
	if sprite_index=sprCobraAttackDoubleBarrel1 or sprite_index=sprCobraAttackDoubleBarrel2 my_id1=instance_create(x,y,objDoubleBarrel)
	if sprite_index=sprCobraAttackUzi my_id1=instance_create(x,y,objUzi)
	if object_index=objPlayerCobra sprite_index=sprCobraWalkUnarmed

	if sprite_index=sprNickeAttackKnife my_id1=instance_create(x,y,objKnife)
	if sprite_index=sprNickeAttackShotgun {my_id1=instance_create(x,y,objKnife) my_id2=instance_create(x,y,objShotgun)}
	if sprite_index=sprNickeAttackSniper {my_id1=instance_create(x,y,objKnife) my_id2=instance_create(x,y,objShotgun)}
	if sprite_index=sprNickeAttackFlameThrower {my_id1=instance_create(x,y,objKnife) my_id2=instance_create(x,y,objShotgun)}
	if sprite_index=sprNickeAttackMachinegun {my_id1=instance_create(x,y,objKnife) my_id2=instance_create(x,y,objShotgun)}
	if sprite_index=sprNickeAttackHeavy {my_id1=instance_create(x,y,objKnife) my_id2=instance_create(x,y,objShotgun)}
	if sprite_index=sprNickeAttackKnifeShotgun {my_id1=instance_create(x,y,objKnife) my_id2=instance_create(x,y,objShotgun)}
	if sprite_index=sprNickeAttackKnifeSniper {my_id1=instance_create(x,y,objKnife) my_id2=instance_create(x,y,objShotgun)}
	if sprite_index=sprNickeAttackKnifeFlameThrower {my_id1=instance_create(x,y,objKnife) my_id2=instance_create(x,y,objShotgun)}
	if sprite_index=sprNickeAttackKnifeMachinegun {my_id1=instance_create(x,y,objKnife) my_id2=instance_create(x,y,objShotgun)}
	if sprite_index=sprNickeAttackKnifeHeavy {my_id1=instance_create(x,y,objKnife) my_id2=instance_create(x,y,objShotgun)}
	if object_index=objNicke sprite_index=sprNickeWalkUnarmed


	if my_id1>0 {
	my_id1.ammo=ammo
	my_id1.direction=random(360)
	my_id1.image_angle=random(360)
	my_id1.speed=2.5
	my_id1.friction=0.1
	}

	if my_id2>0 {
	my_id2.ammo=ammo
	my_id2.direction=random(360)
	my_id1.image_angle=random(360)
	my_id2.speed=2.5
	my_id2.friction=0.25
	}



}
