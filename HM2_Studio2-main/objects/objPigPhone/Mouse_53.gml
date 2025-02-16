if on<1 exit
if place_meeting(x,y+24,objPlayer) {
scrGetMessage(1)
objPlayer.active=0
objPlayer.aimon=0
objPlayer.dir=point_direction(objPlayer.x,objPlayer.y,x,y)
objPlayer.sprite_index=sprPigTakePhone
objPlayer.image_index=0
objPlayer.image_speed=0
image_index=1
sound_stop(sndPhoneCallEcho)
on=0
}
