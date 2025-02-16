function scrGetSlash(argument0) {
	if argument0=objVictim1 {
	return sprVictim1DeadCut
	}
	if argument0=objVictim2 {
	return sprVictim2DeadCut
	}
	if argument0=objVictim3 {
	return sprVictim3DeadCut
	}
	if argument0=objVictim4 {
	return sprVictim4DeadCut
	}
	if argument0=objVictim5 {
	return sprVictim5Crawl
	}
	if argument0=objVictim6 {
	return sprVictim6Dead
	}
	if object_get_parent(argument0)=objEGang {
	return sprEGangDeadChainsaw
	}
	if object_get_parent(argument0)=objSoldier {
	return sprSoldierDeadCut
	}
	if object_get_parent(argument0)=objEMafia {
	return sprEMafiaDeadSlashed
	}
	if object_get_parent(argument0)=objColombian {
	return sprColombianDeadSlash
	}
	if object_get_parent(argument0)=objPolice {
	return sprPoliceDeadBlunt
	}
	if object_get_parent(argument0)=objGuard {
	return sprGuardDeadCut
	}
	if object_get_parent(argument0)=objDog {
	return sprDogDeadCut
	}



}
