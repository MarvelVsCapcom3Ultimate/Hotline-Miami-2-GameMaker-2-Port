function scrEditorRemoveSoldiers() {
	with objEditorEnemy {
	if sprite_index=sprSoldierWalkKalashnikov instance_destroy()
	if sprite_index=sprSoldierWalkMachete instance_destroy()
	}



}
