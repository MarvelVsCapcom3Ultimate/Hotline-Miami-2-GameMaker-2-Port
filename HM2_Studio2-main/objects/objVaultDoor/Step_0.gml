if solid=1 or abs(swingspeed)>3.5 nothing=1 else {
global.my_id=id
with objEnemy {
if place_meeting(x,y,global.my_id) {
global.my_id.target=id
with global.my_id {
if target.object_index=objDog nothing=1 else {
swinger=2
if y>target.y and target.x<x {swingspeed=-1 exit}
if y>target.y and target.x>x {swingspeed=1 exit}
if target.x<x+lengthdir_x(32,image_angle+270) swingspeed=-1 else swingspeed=1
}
}
}
}
}


if abs(swingspeed)>0 {
image_angle+=swingspeed
if place_meeting(x,y,objFurniture) {
image_angle-=swingspeed
swingspeed*=-0.5
}
if image_angle<0 {image_angle=0 swingspeed=abs(swingspeed)}
if image_angle>135 {image_angle=135 swingspeed=-abs(swingspeed)}
swingdir=sign(swingspeed)
if abs(swingspeed)<0.25 {
if image_angle>-1 and image_angle<1 {swingspeed=0 image_angle=0}
}

if swingspeed>0.15 swingspeed-=0.15 else {
if swingspeed<0 swingspeed+=0.15 else {swinger=0 swingspeed=0}
}
}

