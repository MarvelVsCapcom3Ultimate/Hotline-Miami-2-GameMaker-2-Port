if state=0 {
scrCameraPan(x,y+64)
}

if state=1 {
if instance_exists(objPlayerDead) {
scrCameraPan(objPlayerDead.x,objPlayerDead.y)
}
hspeed=lengthdir_x(0.5,dir)
dir+=0.5
image_speed=0.15
if objSwanChainsawHead.dead=1 and objSwanGunHead.dead=1 {
speed=0
with objSwanChainsawHead {
if init=0 {
i=0 
mydir=point_direction(objSwanBossBody.x+16,objSwanBossBody.y,x,y)
myx=objSwanBossBody.x+16
myy=objSwanBossBody.y
tempdir=dir+(3*(1-dead))
dist=point_distance(objSwanBossBody.x+16,objSwanBossBody.y,x,y)
while point_distance(myx,myy,x,y)>22 and i<ceil(point_distance(x,y,objSwanBossBody.x+16,objSwanBossBody.y)*(1/22))+4 {
if i=0 index=1 else index=0
mydist=point_distance(myx,myy,x,y)
factor=mydist*(1/(dist*2))
if factor>1 factor=1
addir=lengthdir_x(sway,dir)*factor//20+lengthdir_x(10,dir*0.1)
mydir=point_direction(myx,myy,x,y)
myx+=lengthdir_x(22,mydir+addir)
myy+=lengthdir_y(22,mydir+addir)
if dead=0 dir+=20
i+=1
}
times=i+1
dir=tempdir
diereload=0
init=1
} else {
if diereload>0 diereload-=1 else {
diereload=12
mydir=point_direction(objSwanBossBody.x+16,objSwanBossBody.y,x,y)
myx=objSwanBossBody.x+16
myy=objSwanBossBody.y
dist=point_distance(objSwanBossBody.x+16,objSwanBossBody.y,x,y)
i=0
repeat times {
mydist=point_distance(myx,myy,x,y)
factor=mydist*(1/(dist*2))
if factor>1 factor=1
addir=lengthdir_x(sway,dir)*factor//20+lengthdir_x(10,dir*0.1)
mydir=point_direction(myx,myy,x,y)
myx+=lengthdir_x(22,mydir+addir)
myy+=lengthdir_y(22,mydir+addir)
if i=times-1 {
scrMeleeBlood(myx,myy)
sound_play(sndSwanDie)
global.shake=6
repeat (12) {
chunkadd=random(1)
my_id=instance_create(myx+lengthdir_x(22,mydir+addir)*chunkadd,myy+lengthdir_y(22,mydir+addir)*chunkadd,objSwanChunks)
my_id.direction=mydir+addir-90+choose((-45+random(90)),(135+random(90)))
my_id.speed=2+random(4)
}
}
i+=1
if dead=0 dir+=20
}
if times>0 times-=1 
}
}

}


with objSwanGunHead {
if init=0 {
i=0 
mydir=point_direction(objSwanBossBody.x-16,objSwanBossBody.y,x,y)
myx=objSwanBossBody.x-16
myy=objSwanBossBody.y
tempdir=dir+(3*(1-dead))
dist=point_distance(objSwanBossBody.x-16,objSwanBossBody.y,x,y)
while point_distance(myx,myy,x,y)>22 and i<ceil(point_distance(x,y,objSwanBossBody.x+16,objSwanBossBody.y)*(1/22))+4 {
if i=0 index=1 else index=0
mydist=point_distance(myx,myy,x,y)
factor=mydist*(1/(dist*2))
if factor>1 factor=1
addir=lengthdir_x(sway,dir)*factor//20+lengthdir_x(10,dir*0.1)
mydir=point_direction(myx,myy,x,y)
myx+=lengthdir_x(22,mydir+addir)
myy+=lengthdir_y(22,mydir+addir)
if dead=0 dir+=20
i+=1
}
times=i+1
dir=tempdir
diereload=0
init=1
} else {
if diereload>0 diereload-=1 else {
diereload=12
mydir=point_direction(objSwanBossBody.x-16,objSwanBossBody.y,x,y)
myx=objSwanBossBody.x-16
myy=objSwanBossBody.y
dist=point_distance(objSwanBossBody.x-16,objSwanBossBody.y,x,y)
i=0
repeat times {
mydist=point_distance(myx,myy,x,y)
factor=mydist*(1/(dist*2))
if factor>1 factor=1
addir=lengthdir_x(sway,dir)*factor//20+lengthdir_x(10,dir*0.1)
mydir=point_direction(myx,myy,x,y)
myx+=lengthdir_x(22,mydir+addir)
myy+=lengthdir_y(22,mydir+addir)
if i=times-1 {
scrMeleeBlood(myx,myy)
global.shake=6
repeat (12) {
chunkadd=random(1)
my_id=instance_create(myx+lengthdir_x(22,mydir+addir)*chunkadd,myy+lengthdir_y(22,mydir+addir)*chunkadd,objSwanChunks)
my_id.direction=mydir+addir-90+choose((-45+random(90)),(135+random(90)))
my_id.speed=2+random(4)
}
sound_play(sndSwanDie)
}
i+=1
if dead=0 dir+=20
}
if times>0 times-=1
}
}

}

}

if objSwanChainsawHead.init=1 and objSwanGunHead.init=1 {
image_speed=0
if objSwanChainsawHead.times=0 and objSwanGunHead.times=0 {
state=2
scrCreateBloodWhirl(x,y)
repeat (16) {
scrMeleeBlood(x-64+random(128),y-64+random(128))
}
sound_play(sndLSDTigerDie)
bgm_Stop()
scrPlaySong(Videodrome);
objSwanGunHead.depth=1
objSwanChainsawHead.depth=1
global.shake=12
}
}
}

if state=2 {
if image_xscale<3 {image_xscale+=0.1 image_yscale+=0.1} else instance_destroy()
}
