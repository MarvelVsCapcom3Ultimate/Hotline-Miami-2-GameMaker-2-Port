if !instance_exists(objPlayer) exit
/*if point_distance(x+48,y+32,objPlayer.x,objPlayer.y)<80 {
open=1
} else open=0*/
if !instance_exists(objEnemy) and !instance_exists(objKnockedOut) {
global.test=0
with myfloor {if place_meeting(x,y,objPlayer) global.test=1}
if global.test=1  {
if wait=0 {
test=0
addx=48
addy=32
objPlayer.active=0
objPlayer.aimon=0
objPlayer.dir=scrRotate(objPlayer.dir,point_direction(objPlayer.x,objPlayer.y,x+addx,y+addy),10)
open=0
if dir>35 {test=2}
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
objPlayer.addx=0
objPlayer.addy=0
objPlayer.movex=movex
objPlayer.movey=movey
}
if test=1 {objPlayer.image_index+=0.15 objPlayer.legindex+=0.25}
} else {
open=1
objPlayer.active=1
objPlayer.aimon=1
objPlayer.persistent=0
}
} else {
open=1 
wait=0
} 
}
/* */
/*  */
