if sprite_index=sprSquadJacketCallForHelp nothing=1 else exit
image_xscale=2
image_yscale=2
if place_meeting(x,y,objPlayer) {
objPlayer.sprite_index=sprNickeWalkJacket
objPlayer.image_speed=0
objPlayer.image_index=0
instance_destroy()
} else {
image_xscale=1
image_yscale=1
}
