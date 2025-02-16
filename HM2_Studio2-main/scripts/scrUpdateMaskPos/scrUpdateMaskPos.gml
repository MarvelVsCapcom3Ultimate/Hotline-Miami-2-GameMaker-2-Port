function scrUpdateMaskPos() {
	scrInitMaskPos()

	if sprite_index=sprSonWalkMachette or sprite_index=sprSonWalkStick or sprite_index=sprSonWalkKnife or sprite_index=sprSonWalkPipe {
	maskx[0]=0
	masky[0]=0
	maskx[1]=0
	masky[1]=-1
	maskx[2]=0
	masky[2]=-1
	maskx[3]=0
	masky[3]=-1
	maskx[4]=0
	masky[4]=0
	maskx[5]=0
	masky[5]=1
	maskx[6]=0
	masky[6]=1
	maskx[7]=0
	masky[7]=1
	}

	if sprite_index=sprSonWalkUnarmed or sprite_index=sprSonWalkMagnum or sprite_index=sprSonWalkShotgun or sprite_index=sprSonWalkSilencer or sprite_index=sprSonWalkFamae or sprite_index=sprSonWalkMendoza {
	maskx[0]=0
	masky[0]=0
	maskx[1]=0
	masky[1]=1
	maskx[2]=0
	masky[2]=1
	maskx[3]=0
	masky[3]=1
	maskx[4]=0
	masky[4]=0
	maskx[5]=0
	masky[5]=-1
	maskx[6]=0
	masky[6]=-1
	maskx[7]=0
	masky[7]=-1
	}

	if sprite_index=sprSonAttackSilencer or sprite_index=sprSonAttackMendoza or sprite_index=sprSonAttackMagnum or  sprite_index=sprSonAttackFamae {
	maskx[0]=0
	masky[0]=0
	maskx[1]=0
	masky[1]=-1
	maskx[2]=0
	masky[2]=-1
	}

	if sprite_index=sprSonAttackShotgun {
	maskx[0]=0
	masky[0]=-1
	maskx[1]=0
	masky[1]=-2
	maskx[2]=0
	masky[2]=-2
	maskx[3]=0
	masky[3]=-2
	maskx[4]=0
	masky[4]=-1
	maskx[5]=0
	masky[5]=-1
	maskx[6]=0
	masky[6]=-1
	maskx[7]=0
	masky[7]=-1
	maskx[8]=0
	masky[8]=-1
	maskx[9]=0
	masky[9]=-1
	maskx[10]=0
	masky[10]=-1
	maskx[11]=0
	masky[11]=-1
	maskx[12]=0
	masky[12]=-1
	}

	if sprite_index=sprSonAttackStick {
	maskx[0]=0
	masky[0]=0
	maskx[1]=0
	masky[1]=0
	maskx[2]=0
	masky[2]=1
	maskx[3]=0
	masky[3]=1
	maskx[4]=0
	masky[4]=2
	maskx[5]=0
	masky[5]=0
	maskx[6]=0
	masky[6]=0
	maskx[7]=0
	masky[7]=0
	maskx[8]=0
	masky[8]=0
	}

	if sprite_index=sprSonAttackPunch {
	maskx[0]=0
	masky[0]=0
	maskx[1]=0
	masky[1]=0
	maskx[2]=1
	masky[2]=-1
	maskx[3]=1
	masky[3]=-1
	maskx[4]=1
	masky[4]=-1
	maskx[5]=0
	masky[5]=0
	maskx[6]=0
	masky[6]=0
	maskx[7]=0
	masky[7]=0
	}

	if sprite_index=sprSonAttackKnife {
	maskx[0]=0
	masky[0]=0
	maskx[1]=0
	masky[1]=0
	maskx[2]=0
	masky[2]=0
	maskx[3]=0
	masky[3]=0
	maskx[4]=0
	masky[4]=0
	maskx[5]=0
	masky[5]=0
	maskx[6]=0
	masky[6]=0
	maskx[7]=0
	masky[7]=0
	maskx[8]=0
	masky[8]=0
	maskx[9]=0
	masky[9]=0
	}

	if sprite_index=sprSonAttackPipe or sprite_index=sprSonAttackMachette {
	maskx[0]=0
	masky[0]=1
	maskx[1]=0
	masky[1]=0
	maskx[2]=0
	masky[2]=0
	maskx[3]=0
	masky[3]=0
	maskx[4]=0
	masky[4]=0
	maskx[5]=0
	masky[5]=1
	maskx[6]=0
	masky[6]=1
	maskx[7]=0
	masky[7]=1
	maskx[8]=0
	masky[8]=1
	maskx[9]=0
	masky[9]=1
	}

	if sprite_index=sprSonKillStomp {
	maskx[0]=6
	masky[0]=-3
	maskx[1]=3
	masky[1]=-3
	maskx[2]=3
	masky[2]=-3
	maskx[3]=2
	masky[3]=-3
	maskx[4]=2
	masky[4]=-3
	maskx[5]=2
	masky[5]=-3
	maskx[6]=6
	masky[6]=-3
	maskx[7]=7
	masky[7]=-3
	maskx[8]=7
	masky[8]=-3
	maskx[9]=7
	masky[9]=-3
	maskx[10]=7
	masky[10]=-3
	maskx[11]=7
	masky[11]=-3
	maskx[12]=7
	masky[12]=-3
	maskx[13]=7
	masky[13]=-3
	maskx[14]=7
	masky[14]=-3
	maskx[15]=7
	masky[15]=-3
	maskx[16]=7
	masky[16]=-3
	maskx[17]=7
	masky[17]=-3
	maskx[18]=7
	masky[18]=-3
	maskx[19]=7
	masky[19]=-3
	maskx[20]=7
	masky[20]=-3
	maskx[21]=6
	masky[21]=-3
	maskx[22]=6
	masky[22]=-3
	}

	if sprite_index=sprSonKillStick {
	maskx[0]=-4
	masky[0]=-1
	maskx[1]=-4
	masky[1]=0
	maskx[2]=-4
	masky[2]=0
	maskx[3]=-4
	masky[3]=0
	maskx[4]=-4
	masky[4]=-1
	maskx[5]=-4
	masky[5]=-1
	maskx[6]=-4
	masky[6]=-1
	maskx[7]=-4
	masky[7]=-1
	maskx[8]=-4
	masky[8]=-1
	maskx[9]=-4
	masky[9]=-1
	}



	///COBRA

	if sprite_index=sprCobraWalkUnarmed  or sprite_index=sprCobraWalkBat or sprite_index=sprCobraWalkBottleBroken or sprite_index=sprCobraWalkBottle or sprite_index=sprCobraWalkClub or sprite_index=sprCobraWalkKnife or sprite_index=sprCobraWalkDoubleBarrel or sprite_index=sprCobraWalkM16 or sprite_index=sprCobraWalkKalashnikov or sprite_index=sprCobraWalkMP5 or sprite_index=sprCobraWalkShotgun or sprite_index=sprCobraWalkUzi or sprite_index=sprCobraWalkSilencer {
	maskx[0]=0
	masky[0]=0
	maskx[1]=0
	masky[1]=-1
	maskx[2]=0
	masky[2]=-1
	maskx[3]=0
	masky[3]=-1
	maskx[4]=0
	masky[4]=0
	maskx[5]=0
	masky[5]=1
	maskx[6]=0
	masky[6]=1
	maskx[7]=0
	masky[7]=1
	}

	if sprite_index=sprCobraKillBat or sprite_index=sprCobraKillClub {
	maskx[0]=-3
	masky[0]=0
	maskx[1]=-3
	masky[1]=0
	maskx[2]=-4
	masky[2]=0
	maskx[3]=-4
	masky[3]=0
	maskx[4]=-4
	masky[4]=0
	maskx[5]=-3
	masky[5]=0
	maskx[6]=-3
	masky[6]=0
	maskx[7]=-3
	masky[7]=0
	}

	if sprite_index=sprCobraKillKnife {
	maskx[0]=7
	masky[0]=1
	maskx[1]=7
	masky[1]=1
	maskx[2]=7
	masky[2]=1
	maskx[3]=7
	masky[3]=1
	maskx[4]=7
	masky[4]=0
	maskx[5]=7
	masky[5]=0
	maskx[6]=7
	masky[6]=0
	maskx[7]=7
	masky[7]=0
	}

	if sprite_index=sprCobraKillLean {
	maskx[0]=-5
	masky[0]=-2
	maskx[1]=-8
	masky[1]=-2
	maskx[2]=-14
	masky[2]=-2
	maskx[3]=-14
	masky[3]=-2
	maskx[4]=-14
	masky[4]=-2
	maskx[5]=-16
	masky[5]=-2
	maskx[6]=-16
	masky[6]=-2
	maskx[7]=-15
	masky[7]=-2
	maskx[8]=-14
	masky[8]=-2
	maskx[9]=-8
	masky[9]=-2
	maskx[10]=-8
	masky[10]=-2
	}

	if sprite_index=sprCobraKillStomp {
	maskx[0]=0
	masky[0]=2
	maskx[1]=0
	masky[1]=2
	maskx[2]=0
	masky[2]=2
	maskx[3]=-6
	masky[3]=2
	maskx[4]=-6
	masky[4]=2
	maskx[5]=-6
	masky[5]=2
	maskx[6]=-6
	masky[6]=2
	maskx[7]=-6
	masky[7]=2
	maskx[8]=1
	masky[8]=2
	maskx[9]=1
	masky[9]=2
	maskx[10]=0
	masky[10]=2
	}



	/*if sprite_index=sprCobraKillLean {
	maskx[0]=0
	masky[0]=-7
	maskx[1]=0
	masky[1]=-7
	maskx[2]=0
	masky[2]=-6
	maskx[3]=0
	masky[3]=-6
	maskx[4]=0
	masky[4]=-7
	maskx[5]=0
	masky[5]=-7
	maskx[6]=0
	masky[6]=-6
	maskx[7]=0
	masky[7]=-6
	maskx[8]=0
	masky[8]=-7
	maskx[9]=0
	masky[9]=-7
	}*/

	if sprite_index=sprCobraKillBottle {
	maskx[0]=3
	masky[0]=0
	maskx[1]=3
	masky[1]=0
	maskx[2]=3
	masky[2]=0
	maskx[3]=3
	masky[3]=0
	maskx[4]=3
	masky[4]=0
	maskx[5]=3
	masky[5]=0
	maskx[6]=3
	masky[6]=0
	maskx[7]=3
	masky[7]=0
	maskx[8]=3
	masky[8]=0
	maskx[9]=3
	masky[9]=0
	maskx[10]=3
	masky[10]=0
	maskx[11]=3
	masky[11]=1
	maskx[12]=3
	masky[12]=1
	maskx[13]=3
	masky[13]=1
	maskx[14]=3
	masky[14]=1
	maskx[15]=3
	masky[15]=0
	maskx[16]=3
	masky[16]=1
	maskx[17]=3
	masky[17]=1
	maskx[18]=3
	masky[18]=1
	maskx[19]=3
	masky[19]=1
	maskx[20]=3
	masky[20]=0
	}

	if sprite_index=sprCobraKillBottleBroken {
	maskx[0]=3
	masky[0]=0
	maskx[1]=3
	masky[1]=0
	maskx[2]=3
	masky[2]=1
	maskx[3]=3
	masky[3]=1
	maskx[4]=3
	masky[4]=1
	maskx[5]=3
	masky[5]=1
	maskx[6]=3
	masky[6]=0
	maskx[7]=3
	masky[7]=1
	maskx[8]=3
	masky[8]=1
	maskx[9]=3
	masky[9]=1
	maskx[10]=3
	masky[10]=1
	maskx[11]=3
	masky[11]=0
	}

	if sprite_index=sprCobraAttackBat or sprite_index=sprCobraAttackBottle or sprite_index=sprCobraAttackClub {
	maskx[0]=0
	masky[0]=1
	maskx[1]=0
	masky[1]=0
	maskx[2]=0
	masky[2]=-1
	maskx[3]=0
	masky[3]=-1
	maskx[4]=0
	masky[4]=-1
	maskx[5]=0
	masky[5]=1
	maskx[6]=0
	masky[6]=1
	maskx[7]=0
	masky[7]=1
	maskx[8]=0
	masky[8]=1
	}

	if sprite_index=sprCobraAttackBottleBroken or sprite_index=sprCobraAttackKnife {
	maskx[0]=0
	masky[0]=-1
	maskx[1]=0
	masky[1]=0
	maskx[2]=0
	masky[2]=1
	maskx[3]=0
	masky[3]=1
	maskx[4]=0
	masky[4]=1
	maskx[5]=0
	masky[5]=1
	maskx[6]=0
	masky[6]=1
	maskx[7]=0
	masky[7]=1
	maskx[8]=0
	masky[8]=-1
	}

	if sprite_index=sprCobraAttackDoubleBarrel1 or sprite_index=sprCobraAttackDoubleBarrel2 {
	maskx[0]=0
	masky[0]=0
	maskx[1]=0
	masky[1]=-1
	maskx[2]=0
	masky[2]=-1
	maskx[3]=0
	masky[3]=-1
	}

	if sprite_index=sprCobraAttackShotgun {
	maskx[0]=0
	masky[0]=0
	maskx[1]=0
	masky[1]=-1
	maskx[2]=0
	masky[2]=-1
	maskx[3]=0
	masky[3]=-1
	maskx[4]=0
	masky[4]=0
	maskx[5]=0
	masky[5]=0
	maskx[6]=0
	masky[6]=0
	maskx[7]=0
	masky[7]=-1
	maskx[8]=0
	masky[8]=-1
	maskx[9]=0
	masky[9]=-1
	maskx[10]=0
	masky[10]=-1
	maskx[11]=0
	masky[11]=-1
	maskx[12]=0
	masky[12]=-1
	maskx[13]=0
	masky[13]=0
	maskx[14]=0
	masky[14]=0
	}

	if sprite_index=sprCobraAttackPunch {
	maskx[0]=0
	masky[0]=-1
	maskx[1]=0
	masky[1]=0
	maskx[2]=0
	masky[2]=1
	maskx[3]=0
	masky[3]=1
	maskx[4]=0
	masky[4]=1
	maskx[5]=0
	masky[5]=0
	}

	if sprite_index=sprCobraAttackM16 or sprite_index=sprCobraAttackMP5 or sprite_index=sprCobraAttackKalashnikov or sprite_index=sprCobraAttackUzi or sprite_index=sprCobraAttackSilencer {
	maskx[0]=0
	masky[0]=0
	maskx[1]=0
	masky[1]=-1
	}



}
