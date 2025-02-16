if state=0 {
__view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) + (1) )
if wait>0 wait-=1 else {
scrGetMessage(current)
current+=1
state=1
wait=30
}
}

if state=1 {
if current<5 {
if !instance_exists(objConversation) {
scrGetMessage(current)
current+=1
}
} else {
if !instance_exists(objConversation) {
if wait>0 wait-=1 else {
objEffector.whitealpha=1 
sound_play(sndLightning1) 
scrPlaySong(Richard) 
my_id=instance_create(objSoldierTent.x,objSoldierTent.y-96,objGeneralCrazy)
my_id.image_angle=270
state=2
my_id=instance_create(x,y,objRain)
with my_id {
areas=3
areax1[0]=96
areay1[0]=64
areax2[0]=232
areay2[0]=232

areax1[1]=232
areay1[1]=128
areax2[1]=328
areay2[1]=232

areax1[2]=152
areay1[2]=296
areax2[2]=488
areay2[2]=408
}
objSquadFatLean.sprite_index=sprSquadFatStand
objSquadBlackLean.sprite_index=sprSquadBlackStand
objSquadBlackLean.image_angle=90
objSquadBlackLean.y+=4
objNickeSitGround.sprite_index=sprNickeWalkUnarmed
objNickeSitGround.image_angle=90
objNickeSitGround.y+=4
objSquadJacket1.sprite_index=sprSquadJacketWalkUnarmed
objSquadJacket1.image_speed=0
objSquadJacket1.image_index=0
}
} 
}
}

if state=2 {
if objGeneralCrazy.y<objSoldierTent.y-24 {
objGeneralCrazy.y+=1
objGeneralCrazy.image_index+=0.15
objGeneralCrazy.legindex+=0.2
} else {
objGeneralCrazy.image_index=0 
objGeneralCrazy.legindex=0 
objGeneralCrazy.sprite_index=sprGeneralRaiseArms 
state=3
}
}

if state=3 {
if objGeneralCrazy.image_index<5 objGeneralCrazy.image_index+=0.15 else {
if current<7 {
if !instance_exists(objConversation) {
scrGetMessage(current)
current+=1
}
} else {
if !instance_exists(objConversation) {state=4 objGeneralCrazy.sprite_index=sprGeneralDropMask objGeneralCrazy.image_index=0}
}
}
}

if state=4 {
if objGeneralCrazy.sprite_index=sprGeneralDropMask {
if objGeneralCrazy.image_index<12 {
objGeneralCrazy.image_index+=0.15 
scrSongVolume(1-objGeneralCrazy.image_index*(1/13))
} else {
objGeneralCrazy.image_index=0 
objGeneralCrazy.sprite_index=sprGeneralWalkBlood
scrPlaySong(Videodrome)
instance_create(objGeneralCrazy.x,objGeneralCrazy.y,objPantherFace)
}
} else {
if current<10 {
if !instance_exists(objConversation) {
scrGetMessage(current)
current+=1
} 
} else {
if !instance_exists(objConversation) {
if objEffector.fade=0 {
objEffector.fade=1
objEffector.next=1
objEffector.newsong=1
objEffector.song = Ghost
objEffector.nextroom=rmCamp3Day
}
objEffector.amount+=12.5
}
}
}
}

if current>=9 {
if objGeneralCrazy.image_angle=90 or done=1 {
done=1
objGeneralCrazy.y-=1
objGeneralCrazy.image_index+=0.15
objGeneralCrazy.legindex+=0.2
if objGeneralCrazy.y<272 {objGeneralCrazy.x+=1 objGeneralCrazy.image_angle=45}
} else {if done=0 objGeneralCrazy.image_angle=scrRotate(objGeneralCrazy.image_angle,90,5)}
}

if instance_exists(objConversation) {
if objEffector.sprite=sprFaceNicke scrCameraPan(objNickeSitGround.x,objNickeSitGround.y)
if objEffector.sprite=sprFaceBlackSquad scrCameraPan(objSquadBlackLean.x,objSquadBlackLean.y)
if objEffector.sprite=sprFaceFatSquad scrCameraPan(objSquadFatLean.x,objSquadFatLean.y)
if objEffector.sprite=sprFaceGeneralPanther or objEffector.sprite_index=sprFaceGeneralBlood scrCameraPan(objGeneralCrazy.x,objGeneralCrazy.y)
}
