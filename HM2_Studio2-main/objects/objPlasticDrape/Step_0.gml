if anispeed>0.4 anispeed-=0.1
image_speed=anispeed
if scrMovingPlayerExists() {
objPlayer.mask_index=objPlayer.sprite_index
objPlayer.image_angle=objPlayer.dir
if place_meeting(x,y,objPlayer) {
if round(image_index)=5 image_speed=0
if anispeed>0.1 exit
if image_angle=0 {
if objPlayer.myyspeed>0 image_yscale=1
if objPlayer.myyspeed<0 image_yscale=-1
} else {
if objPlayer.myxspeed>0 image_yscale=1
if objPlayer.myxspeed<0 image_yscale=-1
}
anispeed=1
image_index=0
}
objPlayer.mask_index=sprMask
objPlayer.image_angle=0
}
