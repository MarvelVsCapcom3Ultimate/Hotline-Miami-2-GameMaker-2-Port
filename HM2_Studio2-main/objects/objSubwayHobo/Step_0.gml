if wait>0 {wait-=1 exit}

if state=0 {
if x>objBoy2Subway.x+16 {
x-=1
image_index+=0.1
legindex+=0.2
} else state=1
}

if state=1 {
image_angle=scrRotate(image_angle,point_direction(x,y,objBoy2Subway.x,objBoy2Subway.y),10)
if sprite_index=sprHoboWalkUnarmed {
sprite_index=sprHoboMoney
image_index=0
}
if image_index<4.25 image_index+=0.1 else {wave+=1 image_index=3}
if wave>8 {
wave=0
state=2
}
}

if state=2 {
if sprite_index=sprHoboMoney 
{
if image_index<6 image_index+=0.1 else {
image_index=0 
sprite_index=sprHoboWalkUnarmed
}
} else {
if x>objWriterSubway.x+24
{
x-=1
if x<objWriterSubway.x+56 {y-=1 image_angle=scrRotate(image_angle,135,10)} else image_angle=scrRotate(image_angle,180,10)
image_index+=0.1
legindex+=0.2
} else state=3
}
}

if state=3 {
image_angle=scrRotate(image_angle,point_direction(x,y,objWriterSubway.x,objWriterSubway.y),10)
if sprite_index=sprHoboWalkUnarmed {
sprite_index=sprHoboMoney
image_index=0
legindex=0
}
if image_index<4.25 image_index+=0.1 else {state=4}
}

if state=4 {
if image_index<4.25 image_index+=0.1 else image_index=3
if !instance_exists(objConversation) {
scrGetMessage(0)
state=5
}
}

if state=5 {
if instance_exists(objConversation) {
if image_index<4.25 image_index+=0.1 else image_index=3
}
if !instance_exists(objConversation) {
if image_index<6 and sprite_index=sprHoboMoney image_index+=0.1 else {
if sprite_index=sprHoboMoney {
image_index=0
sprite_index=sprHoboWalkUnarmed
}
if objWriterSubway.image_index<2 objWriterSubway.image_index+=0.1 else {
scrGetMessage(1)
state=6
}
}
}
}

if state=6 {
if !instance_exists(objConversation) {
if sprite_index=sprHoboWalkUnarmed {
sprite_index=sprHoboPutOnMask
image_index=0
objNewBGPig.thunder=1
sound_play(choose(sndLightning1,sndLightning2,sndLightning3))
}
if image_index<3.2 image_index+=0.1 else {
sprite_index=sprHoboRooster
image_index=0
state=7
objWriterSubway.image_index=1
scrGetMessage(2)
}
}
}

if state=7 {
if !instance_exists(objConversation) {
scrGetMessage(3)
state=8
}
}

if state=8 {
if !instance_exists(objConversation) {
if sprite_index=sprHoboRooster {
sprite_index=sprHoboTakeOffMask
image_index=0
}
if image_index<3.2 image_index+=0.1 else {
scrGetMessage(4)
state=9
}
}
}

if state=9 {
if !instance_exists(objConversation) {
scrGetMessage(5)
state=10
}
}

if state=10 {
if !instance_exists(objConversation) {
scrGetMessage(6)
state=11
}
}

if state=11 {
if !instance_exists(objConversation) {
scrGetMessage(7)
state=12
}
}

if state=12 {
if !instance_exists(objConversation) {
if sprite_index=sprHoboTakeOffMask {
if image_index>0 image_index-=0.1 else {
objNewBGPig.thunder=1 
sound_play(choose(sndLightning1,sndLightning2,sndLightning3))
sprite_index=sprHoboRooster
image_index=0
}
} else {
scrGetMessage(8)
state=13
}
}
}

if state=13 {
if !instance_exists(objConversation) {
scrGetMessage(9)
state=14
}
}

if state=14 {
if !instance_exists(objConversation) {
if sprite_index=sprHoboRooster { 
objEffector.whitealpha=1
sprite_index=sprHoboWalkUnarmed
image_index=0
scrGetMessage(10)
state=15
}
} 
}

if state=15 {
if !instance_exists(objConversation) {
if image_angle<270 image_angle=scrRotate(image_angle,270,10) else {
if y<starty {y+=1 image_index+=0.1 legindex+=0.2} else state=16
}
}
}

if state=16 {
if image_angle>180 image_angle=scrRotate(image_angle,180,10) else {
if x>-32 {x-=1 image_index+=0.1 legindex+=0.2} else {objEffector.next=1 objEffector.newsong=1 objEffector.song=Run objEffector.nextroom=rmScene global.level=rmSubwayPlatform objEffector.fade=1 objEffector.amount+=12.5}
}
}
