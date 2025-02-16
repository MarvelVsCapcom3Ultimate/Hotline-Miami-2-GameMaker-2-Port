if speed>0 exit

mask_index=sprite_index
if place_meeting(x,y,objPlayer) or enter=1 {
enter=1
solid=0
depth=1
with objPlayer active=0
if point_distance(x,y,objPlayer.x,objPlayer.y)>12 {
objPlayer.x+=lengthdir_x(2,point_direction(objPlayer.x,objPlayer.y,x,y))
objPlayer.y+=lengthdir_y(2,point_direction(objPlayer.x,objPlayer.y,x,y))
with objWarJacket{
persistent=0
x+=lengthdir_x(2,point_direction(x,y,objPlayer.x,objPlayer.y))
y+=lengthdir_y(2,point_direction(x,y,objPlayer.x,objPlayer.y))
legindex+=0.2
image_index+=0.1
}
} else {
with objPlayer visible=0
with objWarJacket {
persistent=0
x+=lengthdir_x(2,point_direction(x,y,objPlayer.x,objPlayer.y))
y+=lengthdir_y(2,point_direction(x,y,objPlayer.x,objPlayer.y))
legindex+=0.2
image_index+=0.1
}
if startsound=0 {sound_play(sndCarStart) startsound=1}
if startsound=1 {
if start>0 start-=1 else {
objEffector.next=1
objEffector.fade=1
objEffector.nextroom=scrGetNextRoom()
objEffector.newsong=1
objEffector.song=scrGetSong()
/*if room=rmFansLevel2Floor1 objEffector.nextroom=rmRestart else objEffector.nextroom=rmScene
if room=rmFansLevel1Floor1 {objEffector.nextroom=rmTalkShow objEffector.stopsong=1}
if room=rmFansHeadQuarters {objEffector.newsong=1 
global.level=scrGetNextRoom()*/
}
}

}
}
mask_index=sprMilitaryJeepUSAMask

/* */
/*  */
