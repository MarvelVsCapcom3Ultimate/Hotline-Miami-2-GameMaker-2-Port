if state=0 {
if point_distance(objSquadBlackPickLock.x,objSquadBlackPickLock.y,objPlayer.x,objPlayer.y)<64 {
objPlayer.active=0
objPlayer.aimon=0
objPlayer.dir=point_direction(objPlayer.x,objPlayer.y,objSquadFatIdleGun.x,objSquadFatIdleGun.y)
scrGetMessage(0)
state=1
}
}

if state=1 {
if !instance_exists(objConversation) {
scrCameraPan(objRussianGeneralSuicide.x,objRussianGeneralSuicide.y) 
if wait>0 wait-=1 else {
objRussianGeneralSuicide.on=1
wait=60
state=2
}
} else {
scrCameraPan((objSquadFatIdleGun.x+objPlayer.x)/2,(objSquadFatIdleGun.y+objPlayer.y)/2)
}
}

if state=2 {
if wait>0 wait-=1 else {
wait=30 state=3
}
}

if state=3 {
scrCameraPan((objSquadFatIdleGun.x+objPlayer.x)/2,(objSquadFatIdleGun.y+objPlayer.y)/2)
if wait>0 wait-=1 else {
objSquadBlackPickLock.image_speed=0
scrGetMessage(1)
state=4
}
}

if state=4 {
if !instance_exists(objConversation) {
wait=90
state=5
} else {
scrCameraPan((objSquadFatIdleGun.x+objPlayer.x)/2,(objSquadFatIdleGun.y+objPlayer.y)/2)
}
}

if state=5 {
if wait>0 wait-=1 else {
alarm[0]=60
global.shake=8
bgm_Stop()
sound_play(sndThunder)
scrGetMessage(2)
state=6
}
}

if state=6 {
if !instance_exists(objConversation) {
objSquadBlackPickLock.sprite_index=sprSquadBlackWalkKalashnikov
objSquadBlackPickLock.image_angle=90

with objSquadBlackPickLock {move_outside_solid(270,18)}
state=7
wait=5
} else {
if global.shake<=0 {
scrCameraPan((objSquadFatIdleGun.x+objPlayer.x)/2,(objSquadFatIdleGun.y+objPlayer.y)/2)
}
}
}

if state=7 {
scrCameraPan(objSquadBlackPickLock.x,objSquadBlackPickLock.y)
if objSquadBlackPickLock.y<256 {objSquadBlackPickLock.image_angle=scrRotate(objSquadBlackPickLock.image_angle,270,10) objSquadBlackPickLock.image_index+=0.15 objSquadBlackPickLock.legindex+=0.3 objSquadBlackPickLock.y+=1} else {
if objSquadBlackPickLock.x<objExplodingElevator.x+29 {objSquadBlackPickLock.x+=2 objSquadBlackPickLock.image_angle=scrRotate(objSquadBlackPickLock.image_angle,0,10) objSquadBlackPickLock.image_index+=0.15 objSquadBlackPickLock.legindex+=0.3} else {
if objSquadBlackPickLock.image_angle=90 and point_distance(objSquadBlackPickLock.x,objSquadBlackPickLock.y,objSquadJacketPowerPlant.x,objSquadJacketPowerPlant.y)<64 {
if wait>0 wait-=1 else {
objExplodingElevator.on=1
sound_play(sndBigExplosion)
with objSquadBlackPickLock {
scrMeleeBlood(x,y)
}
objSquadBlackPickLock.sprite_index=sprSquadBlackDying
objSquadBlackPickLock.image_angle=180
objSquadBlackPickLock.direction=270
objSquadBlackPickLock.speed=2.5
objSquadBlackPickLock.friction=0.15
objSquadBlackPickLock.image_index=0
objSquadJacketPowerPlant.sprite_index=sprSquadJacketCallForHelp
objSquadJacketPowerPlant.image_angle=point_direction(objExplodingElevator.x+24,objExplodingElevator.y,objSquadJacketPowerPlant.x,objSquadJacketPowerPlant.y)-180
objSquadJacketPowerPlant.direction=objSquadJacketPowerPlant.image_angle-180
objSquadJacketPowerPlant.speed=3
objSquadJacketPowerPlant.image_index=0
state=8
wait=180
}
} else objSquadBlackPickLock.image_angle=scrRotate(objSquadBlackPickLock.image_angle,90,10)
}
}
if objSquadJacketPowerPlant.y<288 {
objSquadJacketPowerPlant.image_angle=scrRotate(objSquadJacketPowerPlant.image_angle,270,10)
objSquadJacketPowerPlant.y+=1
objSquadJacketPowerPlant.image_index+=0.15
objSquadJacketPowerPlant.legindex+=0.3
} else {
if objSquadJacketPowerPlant.x<objExplodingElevator.x+15 {
objSquadJacketPowerPlant.x+=2
objSquadJacketPowerPlant.image_index+=0.15
objSquadJacketPowerPlant.legindex+=0.3
objSquadJacketPowerPlant.image_angle=scrRotate(objSquadJacketPowerPlant.image_angle,0,10)
}
}

}

if rumble=1 {
if round(random(160))=2 {
global.shake=8
sound_play(sndThunder)
}
}

if state=8 {
if wait>0 {
scrCameraPan(objSquadBlackPickLock.x,objSquadBlackPickLock.y)
wait-=1
} else {
objPlayer.active=1
objPlayer.aimon=1
with objEnemy instance_destroy()
state=9
}
}

if state=9 {
with objSquadFatIdleGun {
if sprite_index=sprSquadFatIdleGun {
my_id=instance_create(x,y,objShotgun)
my_id.direction=180
my_id.speed=2
my_id.friction=0.15
sprite_index=sprSquadFatWalkUnarmed
image_index=0
}
if x<objSquadBlackPickLock.x-16 {
x+=3 
image_index+=0.2 
legindex+=0.35 
image_angle=0
if y<objSquadBlackPickLock.y {y+=1 image_angle=-22.5}
} else {
sprite_index=sprSquadFatKneel
image_index=0
objSquadBlackPickLock.image_speed=0.05
image_angle=point_direction(x,y,objSquadBlackPickLock.x,objSquadBlackPickLock.y)
objPowerPlantScene.state=10
}
}
}
