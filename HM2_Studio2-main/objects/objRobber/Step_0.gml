if state=0 {
if objPlayer.x>32 {
state=1
legindex=random(12)
}
}

if state=1 {
if !place_meeting(x+3,y,objPlayer) {
if x<768 {x+=1.5 image_index+=0.1 legindex+=0.2 image_angle=0} else state=2
if x>64 and y<368 {y+=0.5 image_angle=-22.5}
}
}

if state=2 {
image_angle=scrRotate(image_angle,90,10)
image_index=0
legindex=0
}

if state=4 {
if wait>0 wait-=1 else {
sprite_index=sprRobberPutOnMask
if image_index<9 image_index+=0.15 else {state=5 wait=20}
}
}

if state=5 {
if wait>0 wait-=1 else {
sprite_index=sprRobberWalkUnarmed
target=instance_nearest(x,y,objUzi)
if instance_exists(target) {
if point_distance(x,y,target.x,target.y)>16 {
mydir=point_direction(x,y,target.x,target.y)
x+=lengthdir_x(3,mydir)
y+=lengthdir_y(3,mydir)
image_index+=0.15
legindex+=0.3
image_angle=mydir
} else {
with target instance_destroy()
sound_play(sndPickUpWeapon)
sprite_index=sprRobberWalkUzi
state=6
}
}
}
}

if state=6 {
scrGoToExactSpeed(path,1215,112,3)
solid=0
state=7
}

if state=7 {
image_index+=0.15
legindex+=0.3
image_angle=direction
if x=1215 instance_destroy()
}
