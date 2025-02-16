function scrGetShot(argument0, argument1) {
	if argument1>2 {
	if argument0=objVictim1 return sprVictim1DeadShot
	if argument0=objVictim2 return sprVictim2DeadShot
	if argument0=objVictim4 return sprVictim4DeadShot
	if argument0=objVictim6 return sprVictim6Dead
	if object_get_parent(argument0)=objEGang {if argument1>7 and round(random(1)) return sprEGangFlyShotgun else return sprEGangDeadShotgun}
	if object_get_parent(argument0)=objEMafia return sprEMafiaDeadShotgun
	if object_get_parent(argument0)=objSoldier return sprSoldierDeadShotgun
	if object_get_parent(argument0)=objPolice return sprPoliceDeadShotgun
	if object_get_parent(argument0)=objGuard return sprGuardDeadShotgun
	if object_get_parent(argument0)=objDog return sprDogDeadShot
	if object_get_parent(argument0)=objColombian return sprColombianDeadShotgun
	} else {
	if argument0=objVictim1 return sprVictim1DeadShot
	if argument0=objVictim2 return sprVictim2DeadShot
	if argument0=objVictim4 return sprVictim4DeadShot
	if argument0=objVictim6 return sprVictim6Dead
	if object_get_parent(argument0)=objEGang return sprEGangDeadMachinegun
	if object_get_parent(argument0)=objEMafia return sprEMafiaDeadMachinegun
	if object_get_parent(argument0)=objSoldier return sprSoldierDeadMachinegun
	if object_get_parent(argument0)=objPolice return sprPoliceDeadMachinegun
	if object_get_parent(argument0)=objGuard return sprGuardDeadMachinegun
	if object_get_parent(argument0)=objDog return sprDogDeadShot
	if object_get_parent(argument0)=objColombian return sprColombianDeadMachinegun
	}



}
