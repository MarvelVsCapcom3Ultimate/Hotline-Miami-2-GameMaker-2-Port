if state=0 {
if wait>0 wait-=1 else {image_speed=0.1 scrCameraPan(x,y)}
if image_index>25 and sprite_index=sprGirlLockPick {
objPigTub.index=1
wait=16
}
}



if state=1 {
image_angle=scrRotate(image_angle,point_direction(x,y,208,388),10)
if wait>0 wait-=1 else state=2
}

if state=2 {
scrCameraPan(x,y)
dir=point_direction(x,y,208,388)
if x<208 x+=lengthdir_x(myspeed,dir)
if y>388 y+=lengthdir_y(myspeed,dir)
if x>=208 and y<=388 state=3
}

if state=3 {
scrCameraPan(x,y)
if sprite_index=sprVictim5Walk {
image_index=0
sprite_index=sprVictim5Look
}
}

if state=4 {
scrCameraPan(x,y)
image_angle=scrRotate(image_angle,90,10)
if y>188 y-=myspeed else state=5
}

if state=5 {
scrCameraPan(x,y)
image_angle=scrRotate(image_angle,0,10)
if x<424 x+=myspeed else state=6
}

if state=6 {
scrCameraPan(x,y)
image_angle=scrRotate(image_angle,90,10)
if y>124 y-=myspeed else state=7
}

if state=7 {
scrCameraPan(objPigSleeping.x,objPigSleeping.y)
image_angle=scrRotate(image_angle,180,10)
if x>288 x-=myspeed else instance_destroy()
}

if y<288 {
myspeed=2
image_speed=0.15
with instance_nearest(x,y,objEditorDoorH) {
if image_angle-5>0 {
image_angle-=5
swingspeed=0
} else image_angle=0
}
}
