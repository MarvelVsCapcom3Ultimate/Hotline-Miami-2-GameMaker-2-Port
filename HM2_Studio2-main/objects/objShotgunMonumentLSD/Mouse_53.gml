if on=0 exit
image_xscale=3
image_yscale=3 
if place_meeting(x,y,objPlayer) {
objPlayer.sprite_index=sprSonWalkShotgunLSD
on=0
sound_play(sndPickUpWeapon)
objPlayer.reload=30
objPlayer.ammo=6
}
image_xscale=1
image_yscale=1
