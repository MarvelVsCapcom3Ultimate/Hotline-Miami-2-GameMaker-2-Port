if room=rmPowerPlantBuilding3 {
if objPlayer.sprite_index=sprNickeWalkJacket nothing=1 else exit
}
if !instance_exists(objEnemy) and !instance_exists(objKnockedOut) {
mask_index=sprElevatorFloor
if place_meeting(x,y,objPlayer)  {
if wait=0 {
test=0
objPlayer.active=0
addx=lengthdir_x(36,image_angle-45)
addy=lengthdir_y(36,image_angle-45)
if image_index>0 {test=2 image_index-=0.25}
if objPlayer.y>y+addy+2 {objPlayer.y-=2 test=1}
if objPlayer.y<y+addy-2 {objPlayer.y+=2 test=1}
if objPlayer.x<x+addx-2 {objPlayer.x+=2 test=1}
if objPlayer.x>x+addx+2 {objPlayer.x-=2 test=1}
if test=0 {
used=1
objEffector.next=1
objEffector.fade=1
objEffector.nextroom=nextroom
objPlayer.persistent=1
objPlayer.alarm[0]=25
objPlayer.addx=0
objPlayer.addy=0
objPlayer.movex=movex
objPlayer.movey=movey
}
if test=1 {objPlayer.image_index+=0.15 objPlayer.legindex+=0.25} else objPlayer.legindex=0
}  else {
if image_index<14 image_index+=0.25
}
} else {
wait=0
if image_index<14 image_index+=0.25
}
mask_index=sprite_index
} else {
mask_index=sprElevatorFloor
if !place_meeting(x,y,objPlayer) {
if image_index>0 image_index-=0.25
wait=0
} else {
if image_index<14 image_index+=0.25
wait=1
}
mask_index=sprite_index
}
