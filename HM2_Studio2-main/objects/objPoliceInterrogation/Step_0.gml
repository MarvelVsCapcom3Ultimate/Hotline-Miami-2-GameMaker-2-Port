if talked<7 {
if !instance_exists(objConversation) {
scrGetMessage(talked)
talked+=1
}
}

if talked=3 and instance_exists(objConversation) {
if objConversation.current>4 {if sprite_index=sprPoliceMask {sprite_index=sprPoliceThrowMask image_index=0} }
}

if sprite_index=sprPoliceThrowMask {
if image_index<6 image_index+=0.15 else {
image_angle=270
sprite_index=sprPoliceTalk
}
if image_index>2.25 and !instance_exists(objMaskDrop) {
my_id=instance_create(x-9,y+7,objMaskDrop)
my_id.depth=0
my_id.direction=240
my_id.speed=1
my_id.friction=0.05
my_id.image_index=1
}
}

if talked=1 or talked=3 or talked=5 or talked=7 {
if instance_exists(objConversation) image_speed=0.2 else image_speed=0 
if sprite_index=sprPoliceMask image_speed=0.2
} else {
if talked<9 {
if instance_exists(objConversation) image_speed=0
if sprite_index=sprPoliceMask image_speed=0.2
}
}

if talked=4 or talked=6 {
with objPigInterrogation image_speed=0.2
} else {
with objPigInterrogation image_speed=0
}

if talked=7 {
if !instance_exists(objConversation) {
sprite_index=sprPoliceWalkUnarmed
image_angle=scrRotate(image_angle,90,10)
if image_angle=90 {
if y>objCellDoor.y+11 {y-=1 image_index+=0.15} else {sprite_index=sprPoliceKnock talked=8}
}
}
}


if talked=8 {
if image_index<23 image_index+=0.15 else {image_index=0 talked=9}
if image_index>8 and knocks=0 {sound_play(sndKnock) knocks+=1}
if image_index>13 and knocks=1 {sound_play(sndKnock) knocks+=1}
if image_index>18 and knocks=2 {sound_play(sndKnock) knocks+=1}
if image_index>10 opendoor=1
}

if opendoor=1 {
with objPoliceGuard {
if state=0 {image_angle=scrRotate(image_angle,0,10) if image_angle=0 state=1}
if state=1 {if x<objCellDoor.x+16 {image_index+=0.15 x+=1} else state=2}
if state=2 {image_index=0 image_angle=scrRotate(image_angle,270,10) if image_angle=270 {state=3 sprite_index=sprPoliceSlide image_index=0} }
if state=3 {if y<objCellDoor.y-11 y+=1 if image_index<7 image_index+=0.15 else {state=4 objPoliceInterrogation.sprite_index=sprPoliceTalk objPoliceInterrogation.image_speed=0.15}}
}
}

if talked=9 {
with objPigInterrogation {
sprite_index=sprPigPutOnMask 
if image_index<17 image_index+=0.15 else {objPoliceInterrogation.talked=10 image_index=0 sprite_index=sprPigTakePhone image_angle=70}
if image_index>=13 with objMaskDrop instance_destroy()
if image_index>=5 {depth=-1 with objPoliceChairPig {if image_index=0 {bgm_Stop(global.currentsong) scrPlaySong(Decade) scrSongVolume(1) image_index=1 speed=3 direction=270 friction=0.15}} depth=-1}
}
}

if talked=10 {
with objPigInterrogation {
if image_index<3 image_index+=0.15 else {scrGetMessage(7) objPoliceInterrogation.talked=11}
if image_index>=1 {sound_stop(sndPhoneCallEcho) objPoliceDeskPig.image_index=1}
}
}

if talked=11 {
if !instance_exists(objConversation) {
with objPigInterrogation {
if image_index>0 image_index-=0.2 else {
objPoliceDeskPig.image_index=0
my_id=instance_create(x,y+5,objPigButcher)
instance_destroy()
}
}
}
}
