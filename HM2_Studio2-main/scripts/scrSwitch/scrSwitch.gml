function scrSwitch() {
	if sprite_index=sprNickeWalkSniper {sound_play(sndDrawKnife) sprite_index=sprNickeWalkKnifeSniper exit}
	if sprite_index=sprNickeWalkHeavy {sound_play(sndDrawKnife) sprite_index=sprNickeWalkKnifeHeavy exit}
	if sprite_index=sprNickeWalkShotgun {sound_play(sndDrawKnife) sprite_index=sprNickeWalkKnifeShotgun exit}
	if sprite_index=sprNickeWalkMachinegun {sound_play(sndDrawKnife) sprite_index=sprNickeWalkKnifeMachinegun exit}
	if sprite_index=sprNickeWalkFlameThrower {sound_play(sndDrawKnife) sprite_index=sprNickeWalkKnifeFlameThrower exit}
	if sprite_index=sprNickeWalkKnifeSniper {sound_play(sndPickUpWeapon) sprite_index=sprNickeWalkSniper exit}
	if sprite_index=sprNickeWalkKnifeHeavy {sound_play(sndPickUpWeapon) sprite_index=sprNickeWalkHeavy exit}
	if sprite_index=sprNickeWalkKnifeShotgun {sound_play(sndPickUpWeapon) sprite_index=sprNickeWalkShotgun exit}
	if sprite_index=sprNickeWalkKnifeMachinegun {sound_play(sndPickUpWeapon) sprite_index=sprNickeWalkMachinegun exit}
	if sprite_index=sprNickeWalkKnifeFlameThrower {sound_play(sndPickUpWeapon) sprite_index=sprNickeWalkFlameThrower exit}



}
