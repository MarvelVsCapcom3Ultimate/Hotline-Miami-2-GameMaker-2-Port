function scrGetHurt(argument0) {
	if object_get_parent(argument0)=objEMafia {
	return choose(sprEMafiaHurtBlunt,sprEMafiaHurtBlunt,sprEMafiaHurtBlunt,sprEMafiaHurtBlunt1,sprEMafiaHurtBlunt2,sprEMafiaHurtBlunt3,sprEMafiaHurtBlunt4)
	}
	if object_get_parent(argument0)=objEGang {
	return choose(sprEGangHurtBlunt,sprEGangHurtBlunt,sprEGangHurtBlunt,sprEGangHurtBlunt1,sprEGangHurtBlunt2,sprEGangHurtBlunt3,sprEGangHurtBlunt4)
	}



}
