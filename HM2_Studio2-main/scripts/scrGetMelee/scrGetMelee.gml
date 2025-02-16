function scrGetMelee() {
	//0= blunt
	//1= sharp
	//2= cleave
	//3= throw
	//4= punch
	//5= electricity
	//6= non lethal (writer)
	if objPlayer.sprite_index=sprPigAttackHammer or objPlayer.sprite_index=sprPigAttackBat or objPlayer.sprite_index=sprPigAttackStick return 0
	if objPlayer.sprite_index=sprTigerAttackPunch1 or objPlayer.sprite_index=sprTigerAttackPunch2 return 0 
	if objPlayer.sprite_index=sprZebraAttackClub or objPlayer.sprite_index=sprBearAttackClub or objPlayer.sprite_index=sprZebraAttackBat or objPlayer.sprite_index=sprBearAttackChain or objPlayer.sprite_index=sprBearAttackBat or objPlayer.sprite_index=sprBearAttackPipe or objPlayer.sprite_index=sprCobraAttackClub or objPlayer.sprite_index=sprCobraAttackBat or objPlayer.sprite_index=sprZebraAttackChain or objPlayer.sprite_index=sprZebraAttackPipe or objPlayer.sprite_index=sprCopAttackPipe or objPlayer.sprite_index=sprCopAttackBat or objPlayer.sprite_index=sprCopAttackChain or objPlayer.sprite_index=sprHenchmanAttackBat or objPlayer.sprite_index=sprHenchmanAttackChain or objPlayer.sprite_index=sprHenchmanAttackPipe return 0
	if objPlayer.sprite_index=sprZebraAttackKnife  or objPlayer.sprite_index=sprBearAttackKnife or objPlayer.sprite_index=sprHenchmanAttackKnife or objPlayer.sprite_index=sprCobraAttackBottleBroken or objPlayer.sprite_index=sprCobraAttackKnife or objPlayer.sprite_index=sprNickeAttackKnife or objPlayer.sprite_index=sprNickeAttackKnifeFlameThrower or objPlayer.sprite_index=sprNickeAttackKnifeSniper or objPlayer.sprite_index=sprNickeAttackKnifeMachinegun or objPlayer.sprite_index=sprNickeAttackKnifeHeavy or objPlayer.sprite_index=sprNickeAttackKnifeShotgun or objPlayer.sprite_index=sprCopAttackKnife return 1
	if objPlayer.sprite_index=sprZebraAttackPunch or objPlayer.sprite_index=sprBearAttackPunch or objPlayer.sprite_index=sprCopAttackPunch or objPlayer.sprite_index=sprCobraAttackPunch or objPlayer.sprite_index=sprHenchmanAttackPunch or objPlayer.sprite_index=sprCobraAttackBottle return 4
	if objPlayer.sprite_index=sprPigAttackTaser return 5
	if objPlayer.sprite_index=sprSwanAttackChainsaw return 2

	//Son
	if objPlayer.sprite_index=sprSonAttackClub or objPlayer.sprite_index=sprSonAttackPipe or objPlayer.sprite_index=sprSonAttackStick return 0
	if objPlayer.sprite_index=sprSonAttackMachette or objPlayer.sprite_index=sprCopAttackMachette or objPlayer.sprite_index=sprSonAttackSword return 2 
	if objPlayer.sprite_index=sprSonAttackKnife return 1
	if objPlayer.sprite_index=sprSonAttackPunch {if objPlayer.style=1 return 0 else return 4}

	//Rat
	if objPlayer.sprite_index=sprRatAttackClub or objPlayer.sprite_index=sprRatAttackBat return 0
	if objPlayer.sprite_index=sprRatAttackKnife return 1
	if objPlayer.sprite_index=sprRatAttackPunch return 4

	//Cop
	if objPlayer.sprite_index=sprCopAttackStick return 0

	//Writer 
	if objPlayer.sprite_index=sprWriterAttackPunch or objPlayer.sprite_index=sprWriter2AttackPunch return 4
	if objPlayer.sprite_index=sprWriterAttackBat or objPlayer.sprite_index=sprWriterAttackPipe or objPlayer.sprite_index=sprWriterAttackClub or objPlayer.sprite_index=sprWriterAttackChain return 6
	if objPlayer.sprite_index=sprWriter2AttackKnife return 1
	if objPlayer.sprite_index=sprWriter2AttackBat or objPlayer.sprite_index=sprWriter2AttackPipe or objPlayer.sprite_index=sprWriter2AttackClub or objPlayer.sprite_index=sprWriter2AttackChain return 0



}
