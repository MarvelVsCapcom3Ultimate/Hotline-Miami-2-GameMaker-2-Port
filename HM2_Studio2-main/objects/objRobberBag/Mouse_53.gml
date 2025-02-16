if state=3 {
if place_meeting(x,y+8,objPlayer) {
sprite_index=sprEMafiaWalkUnarmed
image_index=0
my_id=instance_create(x-6,y+6,objWeaponBag)
my_id.direction=225
my_id.speed=3
my_id.friction=0.2
state=4
objRobber.state=4
bgm_Stop(global.currentsong)
sound_play(sndLevelComplete)
objPlayer.active=0
objPlayer.aimon=0
objPlayer.dir=point_direction(objPlayer.x,objPlayer.y,x,y)
objPlayer.image_index=0
objPlayer.sprite_index=sprSonPutOnMask
with objPlayer {
scrInitMaskPos()
}
}
}
