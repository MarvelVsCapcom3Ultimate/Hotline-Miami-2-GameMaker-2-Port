if state>0 exit
if place_meeting(x-12,y,objPlayer) {
state=1
objPlayer.active=0
objPlayer.visible=0
objPlayer.aimon=0
player=instance_create(objPlayer.x,objPlayer.y,objWriterBroken)
player.image_angle=90
}
