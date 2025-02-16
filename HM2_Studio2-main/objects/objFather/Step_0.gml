if state=0 {
if objPlayer.x<224 {
objPlayer.active=0
objPlayer.aimon=0
objPlayer.dir=0
objPlayer.x+=1
objPlayer.image_index+=0.1
objPlayer.legindex+=0.2
scrCameraPan(x-32,y)
exit
}
}
if state<6 {
objShade.color=merge_color(c_white,c_gray,amount)
if amount<1 amount+=0.05
if !instance_exists(objConversation) {
scrGetMessage(state)
state+=1
}
}

if state=6 {
if !instance_exists(objConversation) {
if objGrandFather.image_index<17 objGrandFather.image_index+=0.2 else {
instance_create(0,0,objNightmareLight)
sound_play(sndThunder)
scrPlaySong(Richard);
with objShade instance_destroy()
state=7
}
}
}

if state>6 and state<10 {
if !instance_exists(objConversation) {
scrGetMessage(state-1)
state+=1
}
}

if state=10 {
if !instance_exists(objConversation) {
objEffector.fade=1
objEffector.next=1
objEffector.nextroom=rmScore
objEffector.newsong=1
global.level=rmCrimeScene3Floor1
objEffector.song = Dust;
objEffector.amount+=12.5
}
}

if instance_exists(objConversation) {
if objConversation.sprite_index=sprFaceRichard scrCameraPan(objGrandFather.x,objGrandFather.y)
if objConversation.sprite_index=sprFaceFather {scrCameraPan(objFather.x,objFather.y) image_index+=0.1} else image_index=0
if objConversation.sprite_index=sprFaceSon scrCameraPan(objPlayer.x,objPlayer.y)
}
