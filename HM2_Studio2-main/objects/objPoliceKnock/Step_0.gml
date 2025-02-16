if sprite_index=sprPoliceKnock {
if image_index>8 and knocks=0 {sound_play(sndKnock) knocks+=1}
if image_index>13 and knocks=1 {sound_play(sndKnock) knocks+=1}
if image_index>18 and knocks=2 {sound_play(sndKnock) knocks+=1}
}


if state=0 {
if instance_nearest(x,y,objEditorDoorH).image_angle=0 and on=0 nothing=1 else {
on=1
sprite_index=sprPoliceAim
image_index=0
image_speed=0
if y>288 y-=1 else {state=1 scrGetMessage(2)}
objPlayer.active=0
objPlayer.aimon=0
objPlayer.dir=90
}
}

if state=1 {
if !instance_exists(objConversation) {
scrGetMessage(3)
state=2
}
}

if state=2 {
if !instance_exists(objConversation) {
scrGetMessage(4)
state=3
}
}

if state=3 {
if !instance_exists(objConversation) {
scrGetMessage(5)
state=4
}
}

if state=4 {
if !instance_exists(objConversation) {
if objEffector.fade=0 {
objEffector.fade=1
objEffector.next=1
objEffector.nextroom=rmScene
objEffector.newsong=1
objEffector.song=Videodrome
global.level=rmPoliceStationFloor1
global.title="FINAL CUT"
global.subtitle="6TH SCENE"
}
objEffector.amount+=14
}
}
