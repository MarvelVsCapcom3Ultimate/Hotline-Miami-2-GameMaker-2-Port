if state=0 {
if instance_number(objColombianBoss)+instance_number(objColombianNPC)+instance_number(objColombianHenchman)=0 {
if wait>0 wait-=1 else {
viewy=__view_get( e__VW.YView, 0 )
state=1
scrPlaySong(Dust)
scrSongVolume(0)
objEffector.fade=1
objEffector.next=1
objEffector.nextroom=rmScore
}
}
}

if state=1 {
viewpos+=viewspeed
viewspeed-=0.01
__view_set( e__VW.YView, 0, viewy+viewpos )
objEffector.amount+=14.5
if vol<1 vol+=0.005
if vol>1 vol=1
scrSongVolume(vol)
}
