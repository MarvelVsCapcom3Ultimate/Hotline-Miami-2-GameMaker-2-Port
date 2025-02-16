if state=0 {
if wait>0 wait-=1 else {
if objPlayer.sprite_index=sprNickeWalkUnarmed and !instance_exists(objConversation) {state=1 wait=60}
}
}

if state=2 {
if !instance_exists(objConversation) {
objPlayer.active=1
objPlayer.aimon=1
if wait>0 wait-=1 else {
if image_index<7 image_index+=0.15
}
}
}

if state=3 {
if instance_exists(objConversation) {
if objConversation.current=1 {
objPlayer.sprite_index=sprNickeGivePhoto
objPlayer.image_index=0
state=4
}
}
}

if state=4 {
if objPlayer.image_index<3 objPlayer.image_index+=0.15 else {
if vol>0 vol-=0.005
if vol<0 vol=0
scrSongVolume(vol)
if objPlayer.image_index<6 objPlayer.image_index+=0.15
if image_index<10 image_index+=0.15
if objPlayer.image_index>=6 and image_index>=10 and !instance_exists(objConversation) {
scrPlaySong(Dust)
scrSongVolume(0)
objEffector.fade=1
objEffector.next=1
objEffector.newsong=0
objEffector.nextroom=rmScore
global.level=rmNickeStore
vol=0
state=5
}
}
}

if state=5 {
if vol<1 vol+=0.005
if vol>1 vol=1
scrSongVolume(vol)
objEffector.amount+=14.5
__view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) - (viewspeed) )
if viewspeed<3 viewspeed+=0.01
}

if image_index>0 and state>=2 and state<4 {
if vol>0 vol-=0.005
if vol<0 vol=0
scrSongVolume(vol)
}
