function scrCanBleed() {
	if sprite_index=sprPoliceDeadTaser or sprite_index=sprPigDeadTaser or sprite_index=sprPoliceDeadNeck return 0
	if sprite_index=sprEMafiaDieWriter {return dead}
	if sprite_index=sprEMafiaDieLeanWriter or sprite_index=sprEGangDieLeanWriter return false
	if sprite_index=sprEMafiaHurtBlunt or sprite_index=sprEMafiaHurtBlunt1 or sprite_index=sprEMafiaHurtBlunt2 or sprite_index=sprEMafiaHurtBlunt3 or sprite_index=sprEMafiaHurtBlunt4 return 0
	if sprite_index=sprEGangHurtBlunt or sprite_index=sprEGangHurtBlunt1 or sprite_index=sprEGangHurtBlunt2 or sprite_index=sprEGangHurtBlunt3 or sprite_index=sprEGangHurtBlunt4 return 0
	return 1



}
