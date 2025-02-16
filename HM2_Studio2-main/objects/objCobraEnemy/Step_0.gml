legindex+=path_speed*0.2
if sprite_index=sprEMafiaWalkUnarmed image_index+=path_speed*0.2
if wait>0 scrCameraPan(x,y) else {
if camspeed<4 camspeed+=0.025
__view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) - (camspeed) )
vol=1-objEffector.amount*(1/180)
if vol<0 vol=0
if vol>1 vol=1
scrSongVolume(vol)
}
if state=0 {
if path_position=1 {path_end()}

if path_index>0 {sprite_index=sprEMafiaWalkUnarmed dir=direction} else {
sprite_index=sprEMafiaDrag
dir=scrRotate(dir,point_direction(x,y,objPlayerDead.x,objPlayerDead.y),10)
if image_index<11 image_index+=0.2 else {
state=1
}
}
}

if state=1 {
scrDragToExact(path,576,208)
state=2
}

if state=2 {
if wait>0 wait-=1 else objEffector.amount+=14.5
if wait==0 {
objEffector.fade=1
objEffector.next=1
objEffector.nextroom=rmScore
scrPlaySong(Dust)
global.level=rmCamp3Night
scrSongVolume(0)
wait-=1
}
dir=point_direction(x,y,objPlayerDead.x,objPlayerDead.y)
objPlayerDead.image_angle=point_direction(objPlayerDead.x,objPlayerDead.y,x,y)-180
objPlayerDead.x=x+lengthdir_x(30,point_direction(x,y,objPlayer.x,objPlayer.y))
objPlayerDead.y=y+lengthdir_y(30,point_direction(x,y,objPlayer.x,objPlayer.y))
}
