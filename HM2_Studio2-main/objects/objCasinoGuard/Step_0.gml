if state=0 {
if objPlayer.x>objCasinoEntranceRibbons.x and objPlayer.x<objCasinoEntranceRibbons.x+96 and objPlayer.y<y+48 {
objPlayer.active=0
objPlayer.aimon=0
scrGetMessage(state)
state+=1
}
}

if state>0 and state<3 {
image_angle=scrRotate(image_angle,point_direction(x,y,objPlayer.x,objPlayer.y),10)
objPlayer.dir=scrRotate(objPlayer.dir,point_direction(objPlayer.x,objPlayer.y,x,y),10)
if !instance_exists(objConversation) {
scrGetMessage(state)
state+=1
}
}

if state=3 {
if !instance_exists(objConversation) {
objPlayer.active=1
objPlayer.aimon=1
state=4
}
}

if state=4 {
image_angle=scrRotate(image_angle,point_direction(x,y,objPlayer.x,objPlayer.y),10)
if scrIsAttacking(objPlayer.sprite_index) {
if place_meeting(x-lengthdir_x(12,objPlayer.dir),y-lengthdir_y(12,objPlayer.dir),objPlayer) {
sprite_index=sprEMafiaGetUp
image_index=1
speed=1.5
friction=0.1
image_speed=0
depth=1
direction=point_direction(objPlayer.x,objPlayer.y,x,y)
image_angle=direction-180
sound_play(sndPunch)
solid=0
state=5
}
}
}

if state=5 {
if !place_free(x+hspeed,y+vspeed) {
speed=0
}
if place_meeting(x,y,objPlayer) and speed=0 {
my_id=instance_create(x,y,objWriterKillPunch)
my_id.image_angle=image_angle-180
my_id.sprite=sprEMafiaDieWriter
my_id.cpr=1
my_id.ammo=0
my_id.kills=0
my_id.playerx=objWriter.x
my_id.playery=objWriter.y
with objWriter instance_destroy()
instance_destroy()
}
}
