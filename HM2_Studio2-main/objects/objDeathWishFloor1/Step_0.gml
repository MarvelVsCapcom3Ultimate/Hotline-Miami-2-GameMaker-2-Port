if wait>0 {
wait-=1
objPlayer.sprite_index=sprBearTakeOutWeapons
objPlayer.active=0
objPlayer.aimon=0
objPlayer.image_index=0
exit
}
if state<7 {
if !instance_exists(objConversation) {
scrGetMessage(state)
state+=1
}
}
if state>=7 and state<12 {
if !instance_exists(objConversation) {
objSwan2BreakIn.sprite_index=sprSwan2WalkUnarmed
objSwan2BreakIn.image_index=0
objSwan2BreakIn.image_speed=0
if objLockedSlidingDoors.image_index=0 {
sound_play(sndTaser)
repeat (8) {
my_id=instance_create(objSwan2BreakIn.x-4+random(8),objSwan2BreakIn.y-9,objFireSpark)
my_id.direction=240+random(60)
my_id.speed=2+random(2)
my_id.image_angle=my_id.direction
}
}
if objLockedSlidingDoors.image_index<9 objLockedSlidingDoors.image_index+=0.25 else {
scrGetMessage(state)
state+=1
}
}
}

if state=9 {
with objSwan1DeathWish {if path_index<=0 scrGoToExactSpeed(path,448,72,2)}
with objSwan2BreakIn {if path_index<=0 scrGoToExactSpeed(path,448,72,2)}
}
if state=10 {
with objZebraDeathWish {if path_index<=0 scrGoToExactSpeed(path,400,336,2)}
}

if state=12 {
if !instance_exists(objConversation) {
with objTigerDeathWish {if path_index<=0 scrGoToExactSpeed(path,448,72,2)}
if objPlayer.image_index<8 objPlayer.image_index+=0.2 else {
objPlayer.sprite_index=sprBearWalkSpecial
objPlayer.active=1
objPlayer.aimon=1
objPlayer.reload=30
state=13
}
}
}
