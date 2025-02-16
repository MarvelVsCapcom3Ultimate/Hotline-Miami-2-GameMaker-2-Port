if abs(__background_get( e__BG.HSpeed, 0 ))>7 {
if round(random(1)) instance_create(room_width,random(room_height),objSpeedLine)
}

if x>=-18*50 and play=0 {
scrPlaySong(Frantic)
play=1
}
if sprite_index=sprHenchmanCar1 {
if round(random(8))=2 {
my_id=instance_create(x-20,y-9-3+random(6),objMoneyFly)
my_id.hspeed=4+random(4)
my_id.x+=random(hspeed)
}
}

if sprite_index=sprHenchmanCar2 {
if round(random(24))=2 {
my_id=instance_create(room_width+24,random(room_height),choose(objSkeletons,objSkeletonParts,objSkeletonParts))
}
if round(random(128))=2 and !instance_exists(objCarWreck){
my_id=instance_create(room_width+24,choose(random(32),160+random(96)),objCarWreck)
my_id.image_angle=-20+random(40)
}
with objSkeletons {x+=__background_get( e__BG.HSpeed, 0 ) if x<-64 instance_destroy()}
with objSkeletonParts {x+=__background_get( e__BG.HSpeed, 0 ) if x<-64 instance_destroy()}
with objCarWreck {x+=__background_get( e__BG.HSpeed, 0 ) if x<-64 instance_destroy()}
}

if state<2 {
if x>room_width {
if __background_get( e__BG.HSpeed, 0 )>-24 __background_set( e__BG.HSpeed, 0, __background_get( e__BG.HSpeed, 0 ) - (0.25) )
x+=__background_get( e__BG.HSpeed, 0 )
} else {
if __background_get( e__BG.HSpeed, 0 )<-1 {
x+=__background_get( e__BG.HSpeed, 0 )
if abs(__background_get( e__BG.HSpeed, 0 ))>18 and x<room_width*0.5 __background_set( e__BG.HSpeed, 0, __background_get( e__BG.HSpeed, 0 ) + (0.135) )
if __background_get( e__BG.HSpeed, 0 )>-18 __background_set( e__BG.HSpeed, 0, -18 )
if x<room_width/3 x+=point_distance(x,y,room_width/3,y)*0.05
if __background_get( e__BG.HSpeed, 0 )=-18 and state=0 state=1
}
}
} else {
hspeed=0
}
if round(random(30))=2 targety=starty-5+random(10)
if y>targety-0.1 y-=0.1
if y<targety+0.1 y+=0.1
if state=1 {
if wait>0 wait-=1 else {
scrGetMessage(0)
state=2
wait=110
}
}

if state<9 and state>=2 {
if instance_exists(objConversation) and state=2 {
if objConversation.current>=6 and stop=0 {
stop=1
sound_play(sndDirector)
bgm_stop(global.currentsong)
scrPlaySong(Videodrome);
}
}

if !instance_exists(objConversation) {
if sprite_index=sprHenchmanCar1 {
bgm_Stop(global.currentsong)
scrPlaySong(Richard)
alpha=1
sound_play(sndThunder)
sprite_index=sprHenchmanCar2
__background_set( e__BG.Index, 0, bgBeachRoadDark )
__background_set( e__BG.HSpeed, 0, -12 )
instance_create(x,y,objStorm)
}
if wait>0 wait-=1 else {
scrGetMessage(state-1)
state+=1
}
}
}

if state=9 {
objEffector.fade=1
objEffector.next=1
objEffector.newsong=1
objEffector.song = Interlude;
objEffector.nextroom=rmHenchmanHomeFloor2B
}
