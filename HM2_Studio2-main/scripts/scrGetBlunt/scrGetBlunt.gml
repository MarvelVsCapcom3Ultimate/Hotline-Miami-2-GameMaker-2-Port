function scrGetBlunt(argument0) {
	if argument0=objVictim1 {
	return sprVictim1DeadBlunt
	}
	if argument0=objVictim2 {
	return sprVictim2DeadBlunt
	}
	if argument0=objVictim3 {
	return sprVictim3DeadBlunt
	}
	if argument0=objVictim4 {
	return sprVictim4DeadBlunt
	}
	if argument0=objVictim5 {
	return sprVictim5Crawl
	}
	if argument0=objVictim6 {
	return sprVictim6Dead
	}
	if object_get_parent(argument0)=objEGang {
	return sprEGangDeadBlunt
	}
	if object_get_parent(argument0)=objColombian {
	return sprColombianDeadBlunt
	}
	if object_get_parent(argument0)=objEMafia {
	return sprEMafiaDeadBlunt
	}
	if object_get_parent(argument0)=objPolice {
	return sprPoliceDeadBlunt
	}
	if object_get_parent(argument0)=objGuard {
	return sprGuardDeadBlunt
	}
	if object_get_parent(argument0)=objDog {
	return sprDogDeadBlunt
	}



}
