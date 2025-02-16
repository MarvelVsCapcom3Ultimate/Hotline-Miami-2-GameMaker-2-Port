if objPlayer.y<y2 {
if song=0 {
scrPlaySong(Dust)
song=1
}

if vol<1 {vol+=0.005 scrSongVolume(vol)}
objPlayer.active=0
objPlayer.aimon=0
objPlayer.dir=90
if objPlayer.y>-32 objPlayer.y-=1.5
objPlayer.image_index+=0.1
objPlayer.legindex+=0.2
if objPlayer.y>__view_get( e__VW.HView, 0 )/2 scrCameraPan(objPlayer.x,objPlayer.y) else scrCameraPan(objPlayer.x,__view_get( e__VW.HView, 0 )/2)
if objPlayer.y<-32 {
if objLSD.on=0 {objLSD.on=1 objLSDBlend.on=1}
} 
}
 
if round(random(80))=2 objNewBGTiger.thunder=1


if objPlayer.y<y2+44 {
with objHeavensGateLeft {if image_angle<90 {image_angle=scrRotate(image_angle,90,1) objRainbow.vol=1-image_angle*(1/90) scrSongVolume(objRainbow.vol)} if place_meeting(x,y,objPlayer) solid=0 else solid=1}
with objHeavensGateRight {image_angle=scrRotate(image_angle,270,1) if place_meeting(x,y,objPlayer) solid=0 else solid=1}
}
