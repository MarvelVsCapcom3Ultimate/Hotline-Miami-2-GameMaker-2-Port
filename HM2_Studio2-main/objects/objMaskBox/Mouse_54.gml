if place_meeting(x-16,y,objPlayer) {
sound_play(sndPickUpWeapon)
instance_destroy()
objPlayer.sprite_index=sprBearWalkMaskBox
objPlayer.image_index=0
}
