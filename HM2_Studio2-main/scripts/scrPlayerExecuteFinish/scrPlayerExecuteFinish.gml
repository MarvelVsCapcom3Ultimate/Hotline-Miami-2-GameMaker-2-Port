function scrPlayerExecuteFinish() {
	if sprite_index=sprPigKillLeanPolice {my_id=instance_create(x,y,objPigButcher) my_id.sprite_index=sprPigWalkUnarmed}
	if sprite_index=sprPigKillHammer {my_id=instance_create(x,y,objPigButcher) my_id.sprite_index=sprPigWalkHammer my_id.x+=lengthdir_x(4,image_angle+90) my_id.y+=lengthdir_y(4,image_angle+90)}
	if sprite_index=sprPigKillBat {my_id=instance_create(x,y,objPigButcher) my_id.sprite_index=sprPigWalkBat}
	if sprite_index=sprPigKillStomp {my_id=instance_create(x,y,objPigButcher) my_id.sprite_index=sprPigWalkUnarmed}
	if sprite_index=sprPigKillStick {my_id=instance_create(x,y,objPigButcher) my_id.sprite_index=sprPigWalkStick}
	if sprite_index=sprTigerKill {my_id=instance_create(x,y,objPlayerTiger) my_id.sprite_index=sprTigerWalkUnarmed}
	if sprite_index=sprTigerKillDog {my_id=instance_create(x,y,objPlayerTiger) my_id.sprite_index=sprTigerWalkUnarmed}
	if sprite_index=sprTigerKillFat {my_id=instance_create(x,y,objPlayerTiger) my_id.sprite_index=sprTigerWalkUnarmed}
	if sprite_index=sprTigerKillLean {my_id=instance_create(x,y,objPlayerTiger) my_id.sprite_index=sprTigerWalkUnarmed}
	if sprite_index=sprZebraKillChain {my_id=instance_create(x,y,objPlayerZebra) my_id.sprite_index=sprZebraWalkChain}
	if sprite_index=sprZebraKillKnife {my_id=instance_create(x,y,objPlayerZebra) my_id.sprite_index=sprZebraWalkKnife}
	if sprite_index=sprZebraKillBat {my_id=instance_create(x,y,objPlayerZebra) my_id.sprite_index=sprZebraWalkBat}
	if sprite_index=sprZebraKillPipe {my_id=instance_create(x,y,objPlayerZebra) my_id.sprite_index=sprZebraWalkPipe}
	if sprite_index=sprZebraKillLean {my_id=instance_create(x,y,objPlayerZebra) my_id.sprite_index=sprZebraWalkUnarmed}
	if sprite_index=sprZebraKillBash {my_id=instance_create(x,y,objPlayerZebra) my_id.sprite_index=sprZebraWalkUnarmed}
	if sprite_index=sprZebraKillClub {my_id=instance_create(x,y,objPlayerZebra) my_id.sprite_index=sprZebraWalkClub}
	if sprite_index=sprBearStompSpecial {my_id=instance_create(x,y,objPlayerBear) my_id.sprite_index=sprBearWalkSpecial my_id.mags=mags}
	if sprite_index=sprBearKillChain {my_id=instance_create(x,y,objPlayerBear) my_id.sprite_index=sprBearWalkChain}
	if sprite_index=sprBearKillKnife {my_id=instance_create(x,y,objPlayerBear) my_id.sprite_index=sprBearWalkKnife}
	if sprite_index=sprBearKillBat {my_id=instance_create(x,y,objPlayerBear) my_id.sprite_index=sprBearWalkBat}
	if sprite_index=sprBearKillPipe {my_id=instance_create(x,y,objPlayerBear) my_id.sprite_index=sprBearWalkPipe}
	if sprite_index=sprBearKillClub {my_id=instance_create(x,y,objPlayerBear) my_id.sprite_index=sprBearWalkClub}
	if sprite_index=sprBearKillLean {my_id=instance_create(x,y,objPlayerBear) my_id.sprite_index=sprBearWalkUnarmed}
	if sprite_index=sprBearStomp {my_id=instance_create(x,y,objPlayerBear) my_id.sprite_index=sprBearWalkUnarmed}
	if sprite_index=sprSwanKillChainsaw1 or sprite_index=sprSwanKillChainsaw2 or sprite_index=sprSwanKillChainsawLean {my_id=instance_create(x,y,objPlayerSwanChainsaw) my_id.sprite_index=sprSwanWalkChainsaw}
	if sprite_index=sprEGangFatDieSwan or sprite_index=sprEMafiaFatDieSwan {my_id=instance_create(x+lengthdir_x(14,image_angle-180),y+lengthdir_y(14,image_angle-180),objPlayerSwanChainsaw) my_id.sprite_index=sprSwanWalkChainsaw}
	if sprite_index=sprCopKillChain {my_id=instance_create(x,y,objCop) my_id.sprite_index=sprCopWalkChain}
	if sprite_index=sprCopKillKnife {my_id=instance_create(x,y,objCop) my_id.sprite_index=sprCopWalkKnife}
	if sprite_index=sprCopKillMachette {my_id=instance_create(x,y,objCop) my_id.sprite_index=sprCopWalkMachete}
	if sprite_index=sprCopKillBat {my_id=instance_create(x,y,objCop) my_id.sprite_index=sprCopWalkBat}
	if sprite_index=sprCopKillPipe {my_id=instance_create(x,y,objCop) my_id.sprite_index=sprCopWalkPipe}
	if sprite_index=sprCopKillUzi {my_id=instance_create(x,y,objCop) my_id.sprite_index=sprCopWalkUzi}
	if sprite_index=sprCopKill9mm {my_id=instance_create(x,y,objCop) my_id.sprite_index=sprCopWalk9mm}
	if sprite_index=sprCopKillFamae {my_id=instance_create(x,y,objCop) my_id.sprite_index=sprCopWalkFamae}
	if sprite_index=sprCopKillSilencer {my_id=instance_create(x,y,objCop) my_id.sprite_index=sprCopWalkSilencer}
	if sprite_index=sprCopKillMendoza {my_id=instance_create(x,y,objCop) my_id.sprite_index=sprCopWalkMendoza}
	if sprite_index=sprCopKillStick {my_id=instance_create(x,y,objCop) my_id.sprite_index=sprCopWalkStick}
	if sprite_index=sprNickeKillKnife {my_id=instance_create(x,y,objNicke) my_id.sprite_index=oldsprite}
	if sprite_index=sprCopKillStomp or sprite_index=sprCopKillShotgun {my_id=instance_create(x,y,objCop) my_id.sprite_index=oldsprite}
	if sprite_index=sprCopKillLean my_id=instance_create(x,y,objCop)
	if sprite_index=sprCobraKillLean my_id=instance_create(x,y,objPlayerCobra)
	if sprite_index=sprCobraKillBat {my_id=instance_create(x,y,objPlayerCobra) my_id.sprite_index=sprCobraWalkBat}
	if sprite_index=sprCobraKillBottle {my_id=instance_create(x,y,objPlayerCobra) my_id.sprite_index=sprCobraWalkBottleBroken}
	if sprite_index=sprCobraKillBottleBroken {my_id=instance_create(x,y,objPlayerCobra) my_id.sprite_index=sprCobraWalkBottleBroken}
	if sprite_index=sprCobraKillClub {my_id=instance_create(x,y,objPlayerCobra) my_id.sprite_index=sprCobraWalkClub}
	if sprite_index=sprCobraKillKnife {my_id=instance_create(x,y,objPlayerCobra) my_id.sprite_index=sprCobraWalkKnife}
	if sprite_index=sprCobraKillStomp my_id=instance_create(x,y,objPlayerCobra)
	if sprite_index=sprHenchmanKillBat {my_id=instance_create(x,y,objPlayerHenchman) my_id.aimon=1 my_id.active=1 my_id.sprite_index=sprHenchmanWalkBat}
	if sprite_index=sprHenchmanKillPipe {my_id=instance_create(x,y,objPlayerHenchman) my_id.aimon=1 my_id.active=1 my_id.sprite_index=sprHenchmanWalkChain}
	if sprite_index=sprHenchmanKillChain {my_id=instance_create(x,y,objPlayerHenchman) my_id.aimon=1 my_id.active=1 my_id.sprite_index=sprHenchmanWalkChain}
	if sprite_index=sprHenchmanKillKnife {my_id=instance_create(x,y,objPlayerHenchman) my_id.aimon=1 my_id.active=1 my_id.sprite_index=sprHenchmanWalkKnife}
	if sprite_index=sprHenchmanKillBash {my_id=instance_create(x,y,objPlayerHenchman) my_id.aimon=1 my_id.active=1 my_id.sprite_index=sprHenchmanWalkUnarmed}
	if sprite_index=sprHenchmanKillLean {my_id=instance_create(x,y,objPlayerHenchman) my_id.aimon=1 my_id.active=1 my_id.sprite_index=sprHenchmanWalkUnarmed}
	if sprite_index=sprWriter2KillLean {my_id=instance_create(x,y,objWriter) my_id.sprite_index=sprWriter2WalkUnarmed my_id.kills=kills+1 objEffector.killamount=1}
	if sprite_index=sprWriterKillLean2 {my_id=instance_create(x,y,objWriter) my_id.sprite_index=sprWriterWalkUnarmed my_id.kills=kills}
	if sprite_index=sprWriter2KillBat {my_id=instance_create(x,y,objWriter) my_id.sprite_index=sprWriter2WalkBat my_id.kills=kills+1 objEffector.killamount=1}
	if sprite_index=sprWriter2KillClub {my_id=instance_create(x,y,objWriter) my_id.sprite_index=sprWriter2WalkClub my_id.kills=kills+1 objEffector.killamount=1}
	if sprite_index=sprWriterKillBat2 {my_id=instance_create(x,y,objWriter) my_id.sprite_index=sprWriterWalkBat}
	if sprite_index=sprWriterKillClub2 {my_id=instance_create(x,y,objWriter) my_id.sprite_index=sprWriterWalkClub}
	if sprite_index=sprWriter2KillKnife {my_id=instance_create(x,y,objWriter) my_id.sprite_index=sprWriter2WalkKnife my_id.kills=kills+1 objEffector.killamount=1}
	if sprite_index=sprWriterKillPunch {my_id=instance_create(x,y,objWriter) my_id.sprite_index=sprWriterWalkUnarmed my_id.kills=kills}
	if sprite_index=sprWriter2KillChain {my_id=instance_create(x,y,objWriter) my_id.sprite_index=sprWriter2WalkChain my_id.kills=kills+1 objEffector.killamount=1}
	if sprite_index=sprWriter2KillPipe {my_id=instance_create(x,y,objWriter) my_id.sprite_index=sprWriter2WalkPipe my_id.kills=kills+1 objEffector.killamount=1}
	if sprite_index=sprWriterKillPipe2 {my_id=instance_create(x,y,objWriter) my_id.sprite_index=sprWriterWalkPipe my_id.kills=kills+1 objEffector.killamount=1}
	if sprite_index=sprWriterKillGangLeader {my_id=instance_create(x,y,objWriter) my_id.sprite_index=sprWriterWalkUnarmed my_id.kills=kills+1 objEffector.killamount=1 my_id1=instance_create(x,y,objGangLeaderPipe) my_id1.direction=random(360) my_id1.friction=0.15 my_id1.speed=3}
	if sprite_index=sprWriterKillGangLeader2 {my_id=instance_create(x,y,objWriter) my_id.sprite_index=sprWriter2WalkUnarmed my_id.kills=kills+1 objEffector.killamount=1 my_id1=instance_create(x,y,objGangLeaderPipe) my_id1.direction=random(360) my_id1.friction=0.15 my_id1.speed=3}
	if sprite_index=sprWriterCpr2 {my_id=instance_create(x,y,objWriter)}
	if sprite_index=sprWriterKillStomp {my_id=instance_create(x,y,objWriter) my_id.sprite_index=sprWriter2WalkUnarmed my_id.kills=kills}
	if sprite_index=sprSonKillMachete {my_id=instance_create(x,y,objSon) my_id.sprite_index=sprSonWalkMachette}
	if sprite_index=sprSonKillClub {my_id=instance_create(x,y,objSon) my_id.sprite_index=sprSonWalkClub}
	if sprite_index=sprSonKillPipe {my_id=instance_create(x,y,objSon) my_id.sprite_index=sprSonWalkPipe}
	if sprite_index=sprSonKillSword {my_id=instance_create(x,y,objSon) my_id.sprite_index=sprSonWalkSword}
	if sprite_index=sprSonKillKnife {my_id=instance_create(x,y,objSon) my_id.sprite_index=sprSonWalkKnife}
	if sprite_index=sprSonKillStick {my_id=instance_create(x,y,objSon) my_id.sprite_index=sprSonWalkStick}
	if sprite_index=sprSonKillStomp {my_id=instance_create(x,y,objSon) my_id.sprite_index=sprSonWalkUnarmed}
	if sprite_index=sprSonKillTiger {my_id=instance_create(x,y,objSon) my_id.sprite_index=sprSonWalkUnarmed}
	if sprite_index=sprSonKillFat {my_id=instance_create(x,y,objSon) my_id.sprite_index=sprSonWalkUnarmed}
	if sprite_index=sprSonKillDog {my_id=instance_create(x,y,objSon) my_id.sprite_index=sprSonWalkUnarmed}
	if sprite_index=sprSonKillLean {my_id=instance_create(x,y,objSon) my_id.sprite_index=sprSonWalkUnarmed}
	if sprite_index=sprRatKillKnife {my_id=instance_create(x,y,objRat) my_id.sprite_index=sprRatWalkKnife}
	if sprite_index=sprRatKillBat {my_id=instance_create(x,y,objRat) my_id.sprite_index=sprRatWalkBat}
	if sprite_index=sprRatKillClub {my_id=instance_create(x,y,objRat) my_id.sprite_index=sprRatWalkClub}
	if sprite_index=sprRatKillLean {my_id=instance_create(x,y,objRat) my_id.sprite_index=sprRatWalkUnarmed}
	if sprite_index=sprRatKillBash {my_id=instance_create(x,y,objRat) my_id.sprite_index=sprRatWalkUnarmed}


	my_id.ammo=ammo
	my_id.playerx=playerx
	my_id.playery=playery
	with my_id {
	scrMoveSolidOn()
	if !place_free(x,y) {
	x=playerx
	y=playery
	}
	scrMoveSolidOff()
	}

	with (instance_create(x, y - 24, objPoints))
	{
		objPoints.str = "1000pts";
	}
	//my_id = instance_create(x,y-24,objPoints)
	//my_id.str = "1000pts"
	global.myscore += 1000;
	objEffector.roomkills++;



}
