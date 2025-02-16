if reload>0 exit
if current=1 and room=rmLSDGate exit
if current<messages {
current+=1
if current=1 and room=rmLSDGate {
objEffector.sprite=sprFaceSonGate
sprite=sprFaceSonGate
objEffector.lastsprite=sprFaceSonGate
sound_play(sndLSDGate)
index=0
}
} else {
instance_destroy()
if line1[current]="MARTIN?" and objEffector.sprite=sprFaceGirl {
bgm_Stop(global.currentsong)
scrSongVolume(0)
scrPlaySong(Dust)
scrSongVolume(0)
}
exit
}
reload=10

if line1[current]="Here's Martin Brown!" sound_play(sndApplauseShort)

