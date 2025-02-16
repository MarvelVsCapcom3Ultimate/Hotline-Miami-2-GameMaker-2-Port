function scrEditorRemovePolice() {
	with objEditorEnemy {
	if sprite_index=sprPoliceWalk9mm instance_destroy()
	if sprite_index=sprPoliceWalkShotgun instance_destroy()
	if sprite_index=sprPoliceWalkStick instance_destroy()
	}



}
