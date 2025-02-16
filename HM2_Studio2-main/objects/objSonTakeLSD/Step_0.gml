if sprite_index=sprSonOnPhoneLSD {
if wait>0 wait-=1 else {
if talked=0 {scrGetMessage(0) talked=1} else {
if !instance_exists(objConversation) {
if image_index<5 {
image_index+=0.15
if image_index>=2 and image_index-0.15<2 {
my_id=instance_create(x-8,y-16,objCellPhone)
my_id.direction=88+random(4)
my_id.speed=4
sound_play(sndThrow)
}
} else {
sprite_index=sprSonTakePillLSD
image_index=0
wait=100
}
}
}
}
} else {

if wait>0 wait-=1 else {
if sprite_index=sprSonGetUpLSD {
if image_index<6 image_index+=0.15 else {
sound_play(sndLSDBell2)
objEffector.whitealpha=1
global.style=5
instance_create(352,372,objSon)
objLSDSink.on=1
instance_destroy()
}
}
}
}


if instance_exists(objConversation) {
scrCameraPan(objMafiaStand.x,objMafiaStand.y)
} else {
scrCameraPan(x,y)
}

if sprite_index=sprSonTakePillLSD {
if pills=4 {
if shake=0 sound_play(sndLSDFreak)
if shake<8 shake+=0.025
scrSongVolume(1-shake*0.08)
global.shake=shake
scrCenterOn(myx,myy)
} else {
myx=__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2
myy=__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2
}
}
