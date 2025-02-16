function scrReload() {
	if sprite_index=sprNickeReloadSniper or sprite_index=sprNickeReloadMachinegun or sprite_index=sprNickeReloadShotgun {
	if sprite_index=sprNickeReloadSniper or sprite_index=sprNickeReloadMachinegun {
	if image_index<sprite_get_number(sprite_index)-1 {
	image_index+=0.25
	if image_index*10=70 sound_play(sndReloadClip)
	} else {
	if global.magammo>global.maxammo {global.magammo-=global.maxammo ammo+=global.maxammo}
	if global.magammo<=global.maxammo {ammo=global.magammo global.magammo=0}
	if sprite_index=sprNickeReloadSniper sprite_index=sprNickeWalkSniper
	if sprite_index=sprNickeReloadMachinegun sprite_index=sprNickeWalkMachinegun
	}
	} 
	if sprite_index=sprNickeReloadShotgun {
	if global.magammo>0 and ammo<global.maxammo {
	if image_index*10=47.5 sound_play(sndInsertShell)
	if image_index<9 image_index+=0.25 else {
	ammo+=1
	global.magammo-=1
	image_index=5
	sound_play(sndInsertShell)
	}
	} else {
	if image_index<sprite_get_number(sprite_index)-1 image_index+=0.25 else {
	sprite_index=sprNickeWalkShotgun
	}
	}
	}
	}



}
