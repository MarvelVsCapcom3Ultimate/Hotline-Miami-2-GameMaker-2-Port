function scrGetVictimLean(argument0, argument1) {
	if argument1=sprEGangGetUpLean {
	if objPlayer.object_index=objPlayerSwanChainsaw return sprEGangDieChainsawLean
	if objPlayer.object_index=objWriter {if objPlayer.kills<2 return sprEGangDieLeanWriter else return sprEGangDieLean} else return sprEGangDieLean
	}
	if argument1=sprColombianGetUpLean {
	return sprColombianDieLean
	}
	if argument1=sprEMafiaGetUpLean or argument1=sprEMafiaGetUpLeanLSD {
	if objPlayer.object_index=objPlayerSwanChainsaw return sprEMafiaDieChainsawLean
	if objPlayer.object_index=objWriter {if objPlayer.kills<2 return sprEMafiaDieLeanWriter else return sprEMafiaDieLean} else return sprEMafiaDieLean
	}
	if argument1=sprGuardGetUpLean {
	return sprGuardDieLean
	}
	if argument1=sprPoliceGetUpLean {
	return sprPoliceDieLean
	}



}
