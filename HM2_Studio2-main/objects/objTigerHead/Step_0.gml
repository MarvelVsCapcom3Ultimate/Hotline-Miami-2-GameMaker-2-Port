if state=0 {
if objPlayer.x<x+300 {
objPlayer.active=0
objPlayer.aimon=0
state=1
}
}
if state=1 {
scrCameraPan(248,y)
with objPlayer dir=scrRotate(dir,180,10)
if image_alpha<1 image_alpha+=0.1
if x<112 x+=2 else state=2
}
if state=2 {
scrCameraPan(258,y)
if image_index<17 image_index+=0.2 else state=3
if image_index>2 and image_index<16 {
objNewBGTiger.thunder=1
if scream=0 {sound_play(sndLSDTigerRoar) scream=1}
/*if birds=0 {
repeat (3) {
with objBigTreeLSD {
bdir=random(360)
my_id=instance_create(x+lengthdir_x(16,bdir),y+lengthdir_y(16,bdir),objLSDBird)
my_id.speed=my_id.image_xscale*5
my_id.image_angle=bdir
my_id.direction=bdir
}
with objPalmTreeLSD {
bdir=random(360)
my_id=instance_create(x+lengthdir_x(16,bdir),y+lengthdir_y(16,bdir),objLSDBird)
my_id.speed=my_id.image_xscale*10
my_id.direction=bdir
my_id.image_angle=bdir
}
}
birds=1
}*/
global.shake=8
}
}
if state=3 {
scrCameraPan(248,y)
if image_xscale<1.25 image_xscale+=0.025 else {objPlayer.active=1 objPlayer.aimon=1 instance_create(0,y,objTigerAttack) instance_destroy()}
image_yscale=image_xscale
}
/* */
/*  */
