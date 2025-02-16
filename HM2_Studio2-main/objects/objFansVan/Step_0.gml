if speed>0 or sprite_index=sprFansVanRepairHQ {mask_index=sprite_index exit}

if on=1 {
if done=0 {
if image_index<12 image_index+=0.2 else {
my_id=instance_create(x,y,player)
my_id.active=0
my_id.direction=image_angle+90
my_id.active=0
my_id.start=0
if player=objPlayerSwanChainsaw {
secondswan=instance_create(x,y,objPlayerSwanGun)
secondswan.active=0
secondswan.dir=image_angle+90
}
with objPlayerDead instance_destroy()
wait=18
done=1
}
}
}

if wait>0 {
wait-=1
my_id.direction=direction+90
my_id.x+=lengthdir_x(2,image_angle+90)
my_id.y+=lengthdir_y(2,image_angle+90)
my_id.legindex+=0.35
my_id.image_index+=0.2
if instance_exists(secondswan) and wait<8 {
secondswan.dir=image_angle+90
secondswan.wait=10
secondswan.x+=lengthdir_x(2,image_angle+90)
secondswan.y+=lengthdir_y(2,image_angle+90)
secondswan.legindex+=0.35
secondswan.image_index+=0.2
} 
} else {
if done=1 {my_id.active=1 done=2 scrSaveFloor() on=2} 
}

if instance_exists(secondswan) and objPlayer.sprite_index=sprSwanStartChainsaw {
if lengthdir_y(1,image_angle+90)>0 and secondswan.y<objPlayerSwanChainsaw.y {
secondswan.dir=image_angle+145
secondswan.wait=10
secondswan.x+=lengthdir_x(2,image_angle+145)
secondswan.y+=lengthdir_y(2,image_angle+145)
secondswan.legindex+=0.35
secondswan.image_index+=0.2
}
if lengthdir_y(1,image_angle+90)<0 and secondswan.y>objPlayerSwanChainsaw.y {
secondswan.dir=image_angle+145
secondswan.wait=10
secondswan.x+=lengthdir_x(2,image_angle+145)
secondswan.y+=lengthdir_y(2,image_angle+145)
secondswan.legindex+=0.35
secondswan.image_index+=0.2
}
}

if done=2 and global.done=0 {
if image_index>0.2 image_index-=0.2 else {if image_index>0 sound_play(sndCarClose) image_index=0 mask_index=sprite_index}
}

if global.done=1 {
if point_distance(x,y,objPlayer.x,objPlayer.y)<80 and objPlayer.visible=1 {
if image_index<12 {
if image_index=0 sound_play(sndCarOpen)
image_index+=0.5
}
} else {
if sprite_index=sprFansVan {if image_index>0.25 image_index-=0.25 else {if image_index>0 sound_play(sndCarClose) image_index=0}}
}

mask_index=sprite_index
if place_meeting(x,y,objPlayer) or enter=1 {
enter=1
solid=0
with objPlayer active=0
if point_distance(x,y,objPlayer.x,objPlayer.y)>12 {
objPlayer.x+=lengthdir_x(2,point_direction(objPlayer.x,objPlayer.y,x,y))
objPlayer.y+=lengthdir_y(2,point_direction(objPlayer.x,objPlayer.y,x,y))
with objPlayerSwanGun {
persistent=0
x+=lengthdir_x(2,point_direction(x,y,objPlayer.x,objPlayer.y))
y+=lengthdir_y(2,point_direction(x,y,objPlayer.x,objPlayer.y))
legindex+=0.2
image_index+=0.1
}
} else {
with objPlayer visible=0
with objPlayerSwanGun {
persistent=0
x+=lengthdir_x(2,point_direction(x,y,objPlayer.x,objPlayer.y))
y+=lengthdir_y(2,point_direction(x,y,objPlayer.x,objPlayer.y))
legindex+=0.2
image_index+=0.1
}
if sprite_index=sprFansVan {if image_index>0.25 image_index-=0.25 else {sound_play(sndCarClose) sound_play(sndCarStart) sprite_index=sprFansVanStart image_index=0}}
if sprite_index=sprFansVanStart {
if image_index<5 image_index+=0.25
if start>0 start-=1 else {
objEffector.next=1
objEffector.fade=1
objEffector.newsong=1
objEffector.nextroom=scrGetNextRoom()
objEffector.song=scrGetSong()

/*if room=rmFansLevel2Floor1 objEffector.nextroom=rmRestart else objEffector.nextroom=rmScene
if room=rmFansLevel1Floor1 {objEffector.nextroom=rmTalkShow objEffector.stopsong=1}
if room=rmFansHeadQuarters {objEffector.newsong=1 
global.level=scrGetNextRoom()*/
}
}
}

}
mask_index=sprFansVanMask
}
/* */
/*  */
