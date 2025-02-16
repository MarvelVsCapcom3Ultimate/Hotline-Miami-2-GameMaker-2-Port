if on=0 exit
if place_meeting(x+16,y,objPlayer) {
sound_play(sndPickUpWeapon)
instance_destroy()
}
