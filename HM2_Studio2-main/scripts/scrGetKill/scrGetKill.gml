function scrGetKill() {
	//if argument0=objVictim3KnockedOut {
	if sprite_index=sprGangLeaderGetUp  {
	if objPlayer.kills<2 return objWriterKillBlunt else return objPKillBlunt
	}
	if objPlayer.sprite_index=sprPigWalkHammer or objPlayer.sprite_index=sprPigWalkBat or objPlayer.sprite_index=sprPigWalkStick return objPigKillBlunt
	if objPlayer.sprite_index=sprPigWalkUnarmed or objPlayer.sprite_index=sprPigWalkDoubleBarrel or objPlayer.sprite_index=sprPigWalkTaser or objPlayer.sprite_index=sprPigWalkShotgun or objPlayer.sprite_index=sprPigWalk9mm return objPigKillStomp
	if objPlayer.sprite_index=sprCobraWalkUnarmed return objPKillStomp
	if objPlayer.sprite_index=sprTigerWalkUnarmed {
	if sprite_index=sprEGangGetUp return objTigerKill 
	if sprite_index=sprEGangFatGetUp return objTigerKnee
	if sprite_index=sprEMafiaGetUp return objTigerKill 
	if sprite_index=sprEMafiaFatGetUp return objTigerKnee
	}
	if objPlayer.object_index=objSon {
	if sprite_index=sprEMafiaFatGetUp return objTigerKnee
	}
	if objPlayer.sprite_index=sprZebraWalkUnarmed or objPlayer.sprite_index=sprHenchmanWalkUnarmed or objPlayer.sprite_index=sprRatWalkUnarmed return objPKillBash
	if objPlayer.sprite_index=sprZebraWalkShotgun or objPlayer.sprite_index=sprZebraWalkUzi or objPlayer.sprite_index=sprZebraWalk9mm or objPlayer.sprite_index=sprHenchmanWalkShotgun or objPlayer.sprite_index=sprHenchmanWalkSilencer or objPlayer.sprite_index=sprHenchmanWalkUzi or objPlayer.sprite_index=sprHenchmanWalk9mm return objPKillBash
	if objPlayer.sprite_index=sprSwanWalkChainsaw  return objPKillChainsaw
	if objPlayer.sprite_index=sprCopWalkUnarmed or objPlayer.sprite_index=sprBearWalkUnarmed or objPlayer.sprite_index=sprBearWalkShotgun or objPlayer.sprite_index=sprBearWalk9mm or objPlayer.sprite_index=sprBearWalkUzi or objPlayer.sprite_index=sprBearWalkSpecial or objPlayer.sprite_index=sprBearTurnSpecial or objPlayer.sprite_index=sprCobraWalkM16 or objPlayer.sprite_index=sprCobraWalkKalashnikov or objPlayer.sprite_index=sprCobraWalkShotgun or objPlayer.sprite_index=sprCobraWalkDoubleBarrel or objPlayer.sprite_index=sprCobraWalkSilencer return objPKillStomp
	if objPlayer.sprite_index=sprCopWalkChain or objPlayer.sprite_index=sprWriter2WalkChain or objPlayer.sprite_index=sprZebraWalkChain or objPlayer.sprite_index=sprHenchmanWalkChain or objPlayer.sprite_index=sprBearWalkChain return objPKillChain
	if objPlayer.sprite_index=sprCopWalkShotgun or  objPlayer.sprite_index=sprCopTurnShotgun or objPlayer.sprite_index=sprCopWalkMendoza return objCopKillShotgun
	if objPlayer.sprite_index=sprZebraWalkBat or objPlayer.sprite_index=sprZebraWalkPipe or objPlayer.sprite_index=sprRatWalkBat or objPlayer.sprite_index=sprRatWalkClub or objPlayer.sprite_index=sprSonWalkPipe or objPlayer.sprite_index=sprCopWalkBat or objPlayer.sprite_index=sprCopWalkPipe or objPlayer.sprite_index=sprCobraWalkBat or objPlayer.sprite_index=sprCobraWalkClub or objPlayer.sprite_index=sprHenchmanWalkBat or objPlayer.sprite_index=sprHenchmanWalkPipe or objPlayer.sprite_index=sprBearWalkBat or objPlayer.sprite_index=sprBearWalkPipe return objPKillBlunt
	if objPlayer.sprite_index=sprZebraWalkKnife or objPlayer.sprite_index=sprRatWalkKnife or objPlayer.sprite_index=sprCobraWalkKnife or objPlayer.sprite_index=sprWriter2WalkKnife or objPlayer.sprite_index=sprHenchmanWalkKnife or objPlayer.sprite_index=sprBearWalkKnife return objPKillKnife
	if objPlayer.sprite_index=sprCobraWalkBottle return objPKillBottle
	if objPlayer.sprite_index=sprCobraWalkBottleBroken return objPKillBottleBroken
	if objPlayer.sprite_index=sprWriterWalkUnarmed or objPlayer.sprite_index=sprWriterWalkChain return objWriterKillPunch
	if objPlayer.sprite_index=sprWriter2WalkUnarmed return objPKillStomp
	if objPlayer.sprite_index=sprWriterWalkBat or objPlayer.sprite_index=sprWriterWalkClub or objPlayer.sprite_index=sprWriterWalkPipe return objWriterKillBlunt
	if objPlayer.sprite_index=sprWriter2WalkBat or objPlayer.sprite_index=sprWriter2WalkClub or objPlayer.sprite_index=sprWriter2WalkPipe return objPKillBlunt
	if objPlayer.sprite_index=sprWriter2WalkUzi or objPlayer.sprite_index=sprWriter2Walk9mm or objPlayer.sprite_index=sprWriter2WalkKalashnikov or objPlayer.sprite_index=sprWriter2WalkShotgun or objPlayer.sprite_index=sprWriter2WalkDoubleBarrel or objPlayer.sprite_index=sprWriter2WalkM16 or objPlayer.sprite_index=sprWriter2WalkSilencer return objPKillStomp
	if objPlayer.object_index=objNicke return objPKillKnife
	if objPlayer.sprite_index=sprBearWalkClub or objPlayer.sprite_index=sprZebraWalkClub return objPKillBlunt
	if objPlayer.sprite_index=sprCopWalk9mm or objPlayer.sprite_index=sprCopWalkSilencer {if objPlayer.ammo>0 return objPKill9mm else return objPKillStomp}
	if objPlayer.sprite_index=sprCopWalkUzi or objPlayer.sprite_index=sprCopWalkFamae {if objPlayer.ammo>0 return objPKillUzi else return objPKillStomp}
	if objPlayer.sprite_index=sprCopWalkStick return objPKillBlunt
	if objPlayer.sprite_index=sprSonWalkSword return objSonKillSword
	if objPlayer.sprite_index=sprSonWalkKnife return objSonKillKnife
	if objPlayer.sprite_index=sprSonWalkClub return objSonKillClub
	if objPlayer.sprite_index=sprSonWalkUnarmed {if objPlayer.style=1 return objTigerKill else return objSonKillStomp}
	if objPlayer.sprite_index=sprSonWalkPipe return objPKillBlunt
	if objPlayer.sprite_index=sprSonWalkStick return objPKillStick
	if objPlayer.sprite_index=sprSonWalkMachette return objPKillMachete
	if objPlayer.sprite_index=sprCopWalkMachete return objPKillKnife
	if objPlayer.sprite_index=sprCopWalkKnife return objPKillKnife
	if objPlayer.sprite_index=sprSonWalkSpecial or objPlayer.sprite_index=sprSonTurnSpecial return sprSonKillStomp
	if objPlayer.sprite_index=sprBearWalkM16 or objPlayer.sprite_index=sprBearWalkKalashnikov or objPlayer.sprite_index=sprBearWalkSilencer or objPlayer.sprite_index=sprBearWalkDoubleBarrel return objPKillStomp
	if objPlayer.sprite_index=sprZebraWalkM16 or objPlayer.sprite_index=sprZebraWalkKalashnikov or objPlayer.sprite_index=sprZebraWalkSilencer or objPlayer.sprite_index=sprZebraWalkDoubleBarrel return objPKillBash
	//}



}
