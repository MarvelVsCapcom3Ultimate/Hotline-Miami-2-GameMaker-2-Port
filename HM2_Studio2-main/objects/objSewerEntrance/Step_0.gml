if instance_exists(objEnemy) exit
if instance_exists(objKnockedOut) exit
if instance_exists(objSewerGrateKick) {
if objSewerGrateKick.state<2 {
if objSewerGrateKick.state=0 {
if scrMovingPlayerExists() {
global.test=0
with objPlayer global.test=scrIsWalking() 
if global.test {
if objPlayer.y>y-4 and objPlayer.y<y+4 {
if place_meeting(x+4,y,objPlayer) {
objPlayer.active=0
objPlayer.aimon=0
objPlayer.dir=180
sprite=objPlayer.sprite_index
objPlayer.image_index=0
objPlayer.sprite_index=scrGetKickSewer()
objSewerGrateKick.state=1
}
}
}
}
}
if objSewerGrateKick.state=1 {
if objPlayer.image_index<9 objPlayer.image_index+=0.2 else {objPlayer.sprite_index=sprite objPlayer.image_index=0 objSewerGrateKick.state=2}
if objPlayer.image_index>4 and objSewerGrateKick.friction<0.15 {
objSewerGrateKick.speed=2.5
objSewerGrateKick.friction=0.15
objSewerGrateKick.direction=point_direction(objPlayer.x,objPlayer.y,objSewerGrateKick.x,objSewerGrateKick.y)
}
}
exit
}
}


if state=0 {
if scrMovingPlayerExists() {
global.test=0
with objPlayer global.test=scrIsWalking() 
if global.test {
if objPlayer.y>y-4 and objPlayer.y<y+4 {
if place_meeting(x+4,y,objPlayer) {
objPlayer.active=0
objPlayer.aimon=0
with objPlayer {if sprite_index=sprBearWalkSpecial or sprite_index=sprBearTurnSpecial or object_index=objPlayerSwanChainsaw nothing=1 else scrDropWeapon()}
objPlayer.image_index=0
state=1
playerx=objPlayer.x
playery=objPlayer.y
}
}
}
}
}

if state=1 {
if objPlayer.dir=0 {
if objPlayer.object_index=objPlayerZebra objPlayer.sprite_index=sprZebraClimbDown
if objPlayer.object_index=objPlayerSwanChainsaw objPlayer.sprite_index=sprSwanClimbDown
if objPlayer.object_index=objPlayerBear {if objPlayer.sprite_index=sprBearWalkSpecial or objPlayer.sprite_index=sprBearTurnSpecial objPlayer.special=1 else objPlayer.special=0 objPlayer.sprite_index=sprBearClimbDown}
if objPlayer.object_index=objPlayerTiger objPlayer.sprite_index=sprTigerClimbDown
objPlayer.image_index=0
objPlayer.legindex=0
state=2
} else {
objPlayer.dir=scrRotate(objPlayer.dir,0,10)
if objPlayer.x>x+8 objPlayer.x-=1
}
}

if state=2 {
if objPlayer.image_index<7 objPlayer.image_index+=0.25 else {
objPlayer.persistent=1
objPlayer.movex=300
objPlayer.movey=632
objPlayer.addx=0
objPlayer.addy=0
objEffector.next=1
objEffector.nextroom=room_next(room)
objEffector.fade=1
objEffector.newsong=1
objEffector.song=Benjamin
}
if objPlayer.x>x+8 objPlayer.x-=1
}

if state=3 {
if place_meeting(x,y,objPlayer) objPlayer.x+=1
if objPlayer.image_index<3 objPlayer.image_index+=0.15 else {
if objPlayer.object_index=objPlayerZebra objPlayer.sprite_index=sprZebraWalkUnarmed
if objPlayer.object_index=objPlayerSwanChainsaw objPlayer.sprite_index=sprSwanWalkChainsaw
if objPlayer.object_index=objPlayerBear objPlayer.sprite_index=sprBearWalkUnarmed
if objPlayer.object_index=objPlayerTiger objPlayer.sprite_index=sprTigerWalkUnarmed
objPlayer.active=1
objPlayer.aimon=1
}
if !place_meeting(x,y,objPlayer) and objPlayer.image_index>=3 state=4
}
