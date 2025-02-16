if on=0 exit
if place_meeting(x,y,objPlayer) {
sound_play(sndPickUpWeapon)
objPlayer.sprite_index=sprSwan1WalkCasual
instance_destroy()
}
