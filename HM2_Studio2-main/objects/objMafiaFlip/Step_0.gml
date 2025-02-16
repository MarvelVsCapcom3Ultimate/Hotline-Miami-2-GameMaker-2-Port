if on=1 {
if state=0 {
scrCameraPan(objPlayer.x,objPlayer.y)
if objPlayer.x>x+44 {
x+=2
image_index+=0.15
legindex+=0.15
} else {
image_angle=scrRotate(image_angle,point_direction(x,y,objPlayer.x,objPlayer.y),5)
if image_angle=point_direction(x,y,objPlayer.x,objPlayer.y) {state=1 wait=250 sprite_index=sprEMafiaLSDFlip image_speed=0.35 myx=__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2 myy=__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2}
}
}

if state=1 {
if wait>0 {
wait-=1
objPlayer.dir=scrRotate(objPlayer.dir,point_direction(objPlayer.x,objPlayer.y,x,y),5)
if wait<100 {
if shake=0 sound_play(sndLSDFreak)
if shake<8 shake+=0.1
scrSongVolume(1-shake*0.08)
global.shake=shake
scrCenterOn(myx,myy)
}
} else {
if global.shake>0 {scrSongVolume(1) sound_stop(sndLSDFreak) tile_layer_show(3) scrPlaySong(Fahkeet)}
global.shake=0
scrCenterOn(objPlayer.x,objPlayer.y)
with objLSDShotgun instance_destroy()
objEffector.whitealpha=1
with objPlayer {
active=1
aimon=1
repeat (5) {
my_id=instance_create(x-12+random(24),y+random(16),objShell)
my_id.sprite_index=sprShotgunShell
}
sprite_index=sprSonWalkShotgun
ammo=1
}
with objTVBig {
repeat (12) {
my_id=instance_create(x-16+random(32),y-32+random(32),objTVShards)
}
life=0
sprite_index=sprTVBigBroken
}
with objArcadeMotherRussia {
repeat (12) {
my_id=instance_create(x-16+random(32),y-32+random(32),objTVShards)
}
life=0
sprite_index=sprArcadeMotherRussiaBroken
}
state=2
with objBoss instance_destroy()
instance_destroy()
}
}
}
