if state=0 {
if objPlayer.y<352 {
objPlayer.active=0
objPlayer.aimon=0
objPlayer.dir=90
if objPlayer.y>304 {
objPlayer.y-=2
objPlayer.legindex+=0.25
objPlayer.image_index+=0.15
} else {
if !instance_exists(objMafiaSlither) state=1
}
scrCameraPan(objPlayer.x,objPlayer.y)
}
}

if state=1 {
scrCameraPan(objSonStashTable.x,objSonStashTable.y)
with objMafiaDrinkLSD {
if image_index<18 image_index+=0.15
}
if objMafiaDrinkBagLSD.image_index<18 objMafiaDrinkBagLSD.image_index+=0.15 else {
with objMafiaDrinkLSD {
my_id=instance_create(x,y,objDeadBody)
my_id.image_angle=random(360)
my_id.sprite_index=sprEMafiaDeadShotgun
my_id.image_index=random(1000)
scrMeleeBlood(x,y)
scrMeleeBlood(x,y)
instance_destroy()
}
with objMafiaDrinkBagLSD {
my_id=instance_create(x,y,objDeadBody)
my_id.image_angle=random(360)
my_id.sprite_index=sprEMafiaDeadShotgun
my_id.image_index=random(1000)
scrMeleeBlood(x,y)
scrMeleeBlood(x,y)
instance_destroy()
}
objEffector.whitealpha=1
with objShotgun instance_destroy()
objPlayer.sprite_index=sprSonWalkShotgun
if objPlayer.ammo>4 objPlayer.ammo-=4 else objPlayer.ammo=0
state=2
wait=100
}
}

if state=2 {
if wait>0 wait-=1 else {
scrGetMessage(0)
state=3
wait=60
}
}

if state=3 {
if objEffector.sprite=sprFaceSonGate {
if vol>0 vol-=0.005
scrSongVolume(vol)
scrCameraPan(objPlayer.x+32,objPlayer.y)
if wait>0 wait-=1 else {
if shake<4 shake+=0.05 
global.shake=shake
if round(random(5))=2 {
my_id=instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )*random(0.6),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )*0.25+random(__view_get( e__VW.HView, 0 )*0.5),objSpeedLine)
my_id.direction=0
my_id.speed=3
my_id.myy=-8+random(16)
my_id.sprite_index=sprSpeedLine
my_id.visible=0
}

with objSpeedLine {
motion_add(point_direction(x,y,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-66,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )*0.7+myy),0.25)
if speed>12 speed=12
if x>__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-66 instance_destroy()
}

with objMoney {
if speed=0 {
if round(random(10))=2 speed=0.1
} else {
visible=0
sprite_index=sprMoney1
image_speed=0.1+random(0.1)
motion_add(point_direction(x,y,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-54,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )*0.65),0.15)
if speed>4 speed=4
if x>__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-66 instance_destroy()
}
}
objPlayer.visible=0
with objPlayer {
if !instance_exists(objSonSuckedIn) instance_create(x,y,objSonSuckedIn)
}
}
if !instance_exists(objMoney) state=4
}
}

if state=4 {
if shake<4 shake+=0.05 
global.shake=shake
if !instance_exists(objSonSuckedIn) {
objEffector.fade=1
objEffector.next=1
objEffector.nextroom=rmZebraBoss
}
}
