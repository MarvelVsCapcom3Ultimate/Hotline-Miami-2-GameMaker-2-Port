function scrGetKillSprite() {
	if sprite_index=sprGangLeaderGetUp {if objPlayer.kills<2 return sprWriterKillGangLeader else return sprWriterKillGangLeader2}
	//Son Tiger
	if objPlayer.object_index=objSon and my_id.object_index=objTigerKnee return sprSonKillFat

	//Pig Butcher
	if objPlayer.sprite_index=sprPigWalkHammer return sprPigKillHammer
	if objPlayer.sprite_index=sprPigWalkUnarmed return sprPigKillStomp
	if objPlayer.sprite_index=sprPigWalkBat return sprPigKillBat
	if objPlayer.sprite_index=sprPigWalkTaser return sprPigKillStomp
	if objPlayer.sprite_index=sprPigWalkStick return sprPigKillStick
	if objPlayer.sprite_index=sprPigWalkDoubleBarrel  return sprPigKillStomp
	if objPlayer.sprite_index=sprPigWalk9mm return sprPigKillStomp
	if objPlayer.sprite_index=sprPigWalkShotgun  return sprPigKillStomp
	//Henchman
	if objPlayer.sprite_index=sprHenchmanWalkChain return sprHenchmanKillChain
	if objPlayer.sprite_index=sprHenchmanWalkBat return sprHenchmanKillBat
	if objPlayer.sprite_index=sprHenchmanWalkKnife return sprHenchmanKillKnife
	if objPlayer.sprite_index=sprHenchmanWalkPipe return sprHenchmanKillPipe
	if objPlayer.sprite_index=sprHenchmanWalkUnarmed return sprHenchmanKillBash
	if objPlayer.sprite_index=sprHenchmanWalk9mm or objPlayer.sprite_index=sprHenchmanWalkUzi or objPlayer.sprite_index=sprHenchmanWalkShotgun or sprite_index=sprHenchmanWalkSilencer {return sprHenchmanKillBash}
	//Tiger
	if objPlayer.sprite_index=sprTigerWalkUnarmed {
	if sprite_index=sprEGangGetUp return sprTigerKill 
	if sprite_index=sprEGangFatGetUp return sprTigerKillFat
	if sprite_index=sprEMafiaGetUp return sprTigerKill 
	if sprite_index=sprEMafiaFatGetUp return sprTigerKillFat
	}
	//Bear
	if objPlayer.sprite_index=sprBearWalkSpecial or objPlayer.sprite_index=sprBearTurnSpecial return sprBearStompSpecial
	if objPlayer.sprite_index=sprBearWalkChain return sprBearKillChain
	if objPlayer.sprite_index=sprBearWalkBat return sprBearKillBat
	if objPlayer.sprite_index=sprBearWalkKnife return sprBearKillKnife
	if objPlayer.sprite_index=sprBearWalkPipe return sprBearKillPipe
	if objPlayer.sprite_index=sprBearWalkClub return sprBearKillClub
	if objPlayer.sprite_index=sprBearWalkUnarmed return sprBearStomp
	if objPlayer.sprite_index=sprBearWalkM16 or objPlayer.sprite_index=sprBearWalkKalashnikov or objPlayer.sprite_index=sprBearWalkSilencer or objPlayer.sprite_index=sprBearWalkDoubleBarrel or objPlayer.sprite_index=sprBearWalk9mm or objPlayer.sprite_index=sprBearWalkUzi or objPlayer.sprite_index=sprBearWalkShotgun return sprBearStomp
	//Zebra
	if objPlayer.sprite_index=sprZebraWalkChain return sprZebraKillChain
	if objPlayer.sprite_index=sprZebraWalkBat return sprZebraKillBat
	if objPlayer.sprite_index=sprZebraWalkKnife return sprZebraKillKnife
	if objPlayer.sprite_index=sprZebraWalkPipe return sprZebraKillPipe
	if objPlayer.sprite_index=sprZebraWalkClub return sprZebraKillClub
	if objPlayer.sprite_index=sprZebraWalkUnarmed return sprZebraKillBash
	if objPlayer.sprite_index=sprZebraWalk9mm or objPlayer.sprite_index=sprZebraWalkUzi or objPlayer.sprite_index=sprZebraWalkShotgun or objPlayer.sprite_index=sprZebraWalkKalashnikov or objPlayer.sprite_index=sprZebraWalkDoubleBarrel or objPlayer.sprite_index=sprZebraWalkM16 or objPlayer.sprite_index=sprZebraWalkSilencer {return sprZebraKillBash}
	//Swans
	if objPlayer.sprite_index=sprSwanWalkChainsaw {
	if my_id.sprite=sprEGangDieChainsaw1 or my_id.sprite=sprEMafiaDieChainsaw1 {sound_play(sndChainsawExecution1) return sprSwanKillChainsaw1}
	if my_id.sprite=sprEGangDieChainsaw2 or my_id.sprite=sprEMafiaDieChainsaw2 {sound_play(sndChainsawExecution2) return sprSwanKillChainsaw2}
	}
	//Rat
	if objPlayer.sprite_index=sprRatWalkBat return sprRatKillBat
	if objPlayer.sprite_index=sprRatWalkKnife return sprRatKillKnife
	if objPlayer.sprite_index=sprRatWalkClub return sprRatKillClub
	if objPlayer.sprite_index=sprRatWalkUnarmed return sprRatKillBash
	//Son
	if objPlayer.sprite_index=sprSonWalkSword return sprSonKillSword
	if objPlayer.sprite_index=sprSonWalkKnife return sprSonKillKnife
	if objPlayer.sprite_index=sprSonWalkClub return sprSonKillClub
	if objPlayer.sprite_index=sprSonWalkPipe return sprSonKillPipe
	if objPlayer.sprite_index=sprSonWalkStick return sprSonKillStick
	if objPlayer.sprite_index=sprSonWalkSpecial or objPlayer.sprite_index=sprSonTurnSpecial return sprSonKillSpecial
	if objPlayer.sprite_index=sprSonWalkUnarmed {if objPlayer.style=1 return sprSonKillTiger else return sprSonKillStomp}
	if objPlayer.sprite_index=sprSonWalkMachette return sprSonKillMachete
	//sprSonKillTiger
	if objPlayer.sprite_index=sprSonWalkUnarmed return sprSonKillStomp
	//Cop
	if objPlayer.sprite_index=sprCopWalkShotgun or objPlayer.sprite_index=sprCopTurnShotgun return sprCopKillShotgun
	if objPlayer.sprite_index=sprCopWalkKnife return sprCopKillKnife
	if objPlayer.sprite_index=sprCopWalkBat return sprCopKillBat
	if objPlayer.sprite_index=sprCopWalkPipe return sprCopKillPipe
	if objPlayer.sprite_index=sprCopWalkChain return sprCopKillChain
	if objPlayer.sprite_index=sprCopWalk9mm {if objPlayer.ammo>0 return sprCopKill9mm else return sprCopKillStomp}
	if objPlayer.sprite_index=sprCopWalkUzi {if objPlayer.ammo>0 return sprCopKillUzi else return sprCopKillStomp}
	if objPlayer.sprite_index=sprCopWalkSilencer {if objPlayer.ammo>0 return sprCopKillSilencer else return sprCopKillStomp}
	if objPlayer.sprite_index=sprCopWalkFamae return sprCopKillFamae
	if objPlayer.sprite_index=sprCopWalkMendoza {if objPlayer.ammo>0 return sprCopKillMendoza else return sprCopKillStomp}
	if objPlayer.sprite_index=sprCopWalkMachete return sprCopKillMachette
	if objPlayer.sprite_index=sprCopWalkUnarmed return sprCopKillStomp
	if objPlayer.sprite_index=sprCopWalkStick return sprCopKillStick
	//Cobra
	if objPlayer.sprite_index=sprCobraWalkBottle return sprCobraKillBottle
	if objPlayer.sprite_index=sprCobraWalkBottleBroken return sprCobraKillBottleBroken
	if objPlayer.sprite_index=sprCobraWalkBat return sprCobraKillBat
	if objPlayer.sprite_index=sprCobraWalkKnife return sprCobraKillKnife
	if objPlayer.sprite_index=sprCobraWalkClub return sprCobraKillClub
	if objPlayer.sprite_index=sprCobraWalkUnarmed return sprCobraKillStomp
	if objPlayer.sprite_index=sprCobraWalkSilencer or objPlayer.sprite_index=sprCobraWalkUzi or objPlayer.sprite_index=sprCobraWalkMP5 or objPlayer.sprite_index=sprCobraWalkShotgun or objPlayer.sprite_index=sprCobraWalkDoubleBarrel {return sprCobraKillStomp}
	//Nicke
	if objPlayer.sprite_index=sprNickeWalkFlameThrower return sprNickeKillKnife
	if objPlayer.object_index=objNicke return sprNickeKillKnife
	//Writer
	if objPlayer.sprite_index=sprWriterWalkBat return sprWriterKillBat2
	if objPlayer.sprite_index=sprWriterWalkPipe return sprWriterKillPipe2
	if objPlayer.sprite_index=sprWriterWalkClub return sprWriterKillClub2
	if objPlayer.sprite_index=sprWriter2WalkBat return sprWriter2KillBat
	if objPlayer.sprite_index=sprWriter2WalkPipe return sprWriter2KillPipe
	if objPlayer.sprite_index=sprWriter2WalkClub return sprWriter2KillClub
	if objPlayer.sprite_index=sprWriter2WalkKnife return sprWriter2KillKnife
	if objPlayer.sprite_index=sprWriter2WalkChain return sprWriter2KillChain
	if objPlayer.sprite_index=sprWriterWalkUnarmed or objPlayer.sprite_index=sprWriterWalkChain return sprWriterKillPunch
	if objPlayer.sprite_index=sprWriter2WalkUnarmed return sprWriterKillStomp
	if objPlayer.sprite_index=sprWriter2WalkSilencer or objPlayer.sprite_index=sprWriter2WalkUzi or objPlayer.sprite_index=sprWriter2WalkShotgun or objPlayer.sprite_index=sprWriter2WalkDoubleBarrel {return sprWriterKillStomp}



}
