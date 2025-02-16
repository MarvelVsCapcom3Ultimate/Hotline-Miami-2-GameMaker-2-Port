function scrKill() {
	image_xscale=2
	image_yscale=2
	global.test=0
	if scrIsWalking(sprite_index) {
	with objKnockedOut {
	if place_meeting(x,y,objPlayer) and global.test==0 {
	global.test=1
	playerx=objPlayer.x
	playery=objPlayer.y
	if scrIsLeaning(sprite_index) {
	with objPlayer {if objPlayer.object_index=objPlayerSwanChainsaw nothing=1 else scrDropWeapon()}
	my_id=instance_create(x,y,scrGetKillLean(object_index))
	my_id.sprite=scrGetVictimLean(object_index,sprite_index)
	my_id.sprite_index=scrGetKillSpriteLean()
	if objPlayer.object_index=objPlayerCobra my_id.cobra=1
	if objPlayer.object_index=objSon {if global.style=3 {my_id.robber=1 my_id.left=1} else my_id.robber=0} else my_id.robber=0
	if objPlayer.object_index=objWriter my_id.kills=objPlayer.kills
	my_id.image_angle=image_angle-180
	my_id.playerx=playerx
	my_id.playery=playery
	my_id.oldsprite=objPlayer.sprite_index
	my_id.ammo=objPlayer.ammo
	instance_destroy()
	} else {
	if scrDropWeaponExecution() {if objPlayer.object_index=objPlayerSwanChainsaw nothing=1 else with objPlayer scrDropWeapon()}
	my_id=instance_create(x,y,scrGetKill(object_index))
	my_id.sprite=scrGetVictim(object_index,sprite_index)
	my_id.sprite_index=scrGetKillSprite()
	if my_id.sprite=sprEGangDieWriter or my_id.sprite=sprEMafiaDieWriter {my_id.enemyx=enemyx my_id.enemyy=enemyy}
	if objPlayer.object_index=objPlayerCobra my_id.cobra=1
	if objPlayer.object_index=objSon {if global.style=3 {my_id.robber=1 my_id.left=1} else my_id.robber=0} else my_id.robber=0
	if objPlayer.object_index=objWriter my_id.kills=objPlayer.kills
	if my_id.sprite_index=sprBearStompSpecial my_id.mags=objPlayer.mags
	my_id.image_angle=image_angle-180
	my_id.playerx=playerx
	my_id.playery=playery
	my_id.oldsprite=objPlayer.sprite_index
	my_id.ammo=objPlayer.ammo
	instance_destroy()
	}
	}
	}
	if global.test=1 {
	instance_destroy()
	}
	}
	image_xscale=1
	image_yscale=left



}
