if state=0 {
if global.done=1 {
if objPlayer.y>y-4 and objPlayer.y<y+4 {
if place_meeting(x-4,y,objPlayer) {
objPlayer.y=y
if objPlayer.object_index=objPlayerZebra objPlayer.sprite_index=sprZebraClimbUp
if objPlayer.object_index=objPlayerSwanChainsaw objPlayer.sprite_index=sprSwanClimbUp
if objPlayer.object_index=objPlayerBear objPlayer.sprite_index=sprBearClimbUp
if objPlayer.object_index=objPlayerTiger objPlayer.sprite_index=sprTigerClimbUp
objPlayer.image_index=0
objPlayer.active=0
objPlayer.dir=0
objPlayer.persistent=1
objPlayer.aimon=0
objPlayer.movex=-300
objPlayer.movey=-632
objPlayer.addx=0
objPlayer.addy=0
objPlayer.legindex=0
objEffector.fade=1
objEffector.next=1
objEffector.nextroom=room_previous(room)
state=1
}
}
}
}

if state=1 {
if objPlayer.image_index<3 objPlayer.image_index+=0.15
if objPlayer.x<x-8 objPlayer.x+=1
objEffector.amount+=7.5
objPlayer.persistent=1
}
