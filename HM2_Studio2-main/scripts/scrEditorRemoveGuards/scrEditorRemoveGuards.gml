function scrEditorRemoveGuards() {
	with objEditorEnemy {
	if sprite_index=sprGuardWalkMagnum instance_destroy()
	if sprite_index=sprGuardWalkShotgun instance_destroy()
	if sprite_index=sprGuardWalkStick instance_destroy()
	}



}
