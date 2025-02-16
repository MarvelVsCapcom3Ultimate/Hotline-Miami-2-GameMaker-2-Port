function scrGetKillSpriteLean() {
	if objPlayer.object_index=objPigButcher return sprPigKillLeanPolice
	if objPlayer.object_index=objPlayerTiger return sprTigerKillLean
	if objPlayer.object_index=objPlayerZebra return sprZebraKillLean
	if objPlayer.object_index=objPlayerBear return sprBearKillLean
	if objPlayer.object_index=objCop return sprCopKillLean
	if objPlayer.object_index=objPlayerCobra return sprCobraKillLean
	if objPlayer.object_index=objPlayerHenchman return sprHenchmanKillLean
	if objPlayer.object_index=objSon return sprSonKillLean
	if objPlayer.object_index=objRat return sprRatKillLean
	if objPlayer.object_index=objWriter {if objPlayer.kills<2 return sprWriterKillLean2 else return sprWriter2KillLean}
	if objPlayer.object_index=objPlayerSwanChainsaw {sound_play(sndChainsawExecution1) return sprSwanKillChainsawLean}



}
