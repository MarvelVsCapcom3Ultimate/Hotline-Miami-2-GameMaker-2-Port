function scrGetKillLean() {
	//if argument0=objVictim3KnockedOut {
	if objPlayer.object_index=objPigButcher return objPigKillLean
	if objPlayer.object_index=objPlayerTiger return objPKillLean
	if objPlayer.object_index=objPlayerZebra return objPKillLean
	if objPlayer.object_index=objPlayerBear return objPKillLean
	if objPlayer.object_index=objCop return objPKillLean
	if objPlayer.object_index=objPlayerCobra return objPKillLean
	if objPlayer.object_index=objPlayerSwanChainsaw return objPKillChainsawLean
	if objPlayer.object_index=objPlayerHenchman return objPKillLean
	if objPlayer.object_index=objSon return objPKillLean
	if objPlayer.object_index=objRat return objPKillLean
	if objPlayer.object_index=objWriter {if objPlayer.kills<2 return objWriterKillLean else return objPKillLean}
	//



}
