if state<3 {
if objPlayer.y>320 {
if point_distance(x,y,objPlayer.x,objPlayer.y)<64 {
objPlayer.active=0
objPlayer.aimon=0
objPlayer.dir=scrRotate(objPlayer.dir,point_direction(objPlayer.x,objPlayer.y,x,y),10)
image_speed=0 
sprite_index=sprWarWriter1
image_index=0
if !instance_exists(objConversation) {
scrGetMessage(state)
state+=1
}
}
}
}

if state=3 {
if !instance_exists(objConversation) {
playerx=objPlayer.x
playery=objPlayer.y
if objPlayer.x>314 objPlayer.x-=1
if objPlayer.x<312 objPlayer.x+=1
if objPlayer.y>356 objPlayer.y-=1
if objPlayer.y<356 objPlayer.y+=1
if point_distance(playerx,playery,objPlayer.x,objPlayer.y)>0 {objPlayer.legdir=point_direction(playerx,playery,objPlayer.x,objPlayer.y) objPlayer.image_index+=0.1 objPlayer.legindex+=0.15} else {objPlayer.legindex=0 if objWarPhotographer.image_angle=point_direction(objWarPhotographer.x,objWarPhotographer.y,objPlayer.x,objPlayer.y-8) and objWarPhotographer.sprite_index=sprWarPhotographerPhoto2 {state=4 dir=point_direction(objPlayer.x,objPlayer.y,objWarPhotographer.x,objWarPhotographer.y)-5}}
objWarPhotographer.image_angle=scrRotate(objWarPhotographer.image_angle,point_direction(objWarPhotographer.x,objWarPhotographer.y,objPlayer.x,objPlayer.y-8),10)
with objWarPhotographer {
image_speed=0
if sprite_index=sprWarPhotographerPhoto1 {
image_index=0
sprite_index=sprWarPhotographerPutAway
}
if sprite_index=sprWarPhotographerPutAway {
if image_index<5 image_index+=0.15 else {image_index=0 sprite_index=sprWarPhotographerPickUp}
}
if sprite_index=sprWarPhotographerPickUp {
if image_index<5 image_index+=0.15 else {image_index=0 sprite_index=sprWarPhotographerPhoto2}
}
}
}
}

if state=4 {
with objWarJacket {
if y<objPlayer.y-28 {if x>objPlayer.x+1 x-=1 if x<objPlayer.x-1 x+=1 y+=1 image_index+=0.15 legindex+=0.2}
speed=0
image_speed=0
}
objPlayer.dir=scrRotate(objPlayer.dir,dir,10)
if objWarJacket.y>=objPlayer.y-28 {if objPlayer.dir=dir state=5 objPlayer.image_index=0}
}

if state=5 {
objWarJacket.visible=0
objPlayer.sprite_index=sprNickeJacketPose
if objPlayer.image_index<5 objPlayer.image_index+=0.15 else state=6
}

if state=6 {
if objWarPhotographer.image_index<64 objWarPhotographer.image_index+=0.15 else state=7
}

if state>=7 and state<=8 {
if objPlayer.image_index<11 objPlayer.image_index+=0.15
if !instance_exists(objConversation) {
scrGetMessage(state-4)
state+=1
}
}

if state=9 {
if !instance_exists(objConversation) {
image_speed=0
image_index=0
if objWarPhotographer.image_index<75 objWarPhotographer.image_index+=0.15 else state=10
if objPlayer.image_index<11 objPlayer.image_index+=0.15
}
}

if state=10 {
objPlayer.sprite_index=sprNickeWalkUnarmed
objPlayer.active=1
objPlayer.aimon=1
objWarJacket.visible=1
objWarJacket.direction=dir
state=11
}

if state=11 {
with objWarPhotographer {
if point_distance(x,y,objPlayer.x,objPlayer.y)<64 image_angle=scrRotate(image_angle,point_direction(x,y,objPlayer.x,objPlayer.y),10)
}
if objWarPhotographer.state=1 state=12
}

if state>0 and state<10 {
if instance_exists(objConversation) {
if objEffector.sprite=sprFaceWriter image_speed=0.1 else {image_speed=0 image_index=0}
} else {image_speed=0 image_index=0}
scrCameraPan((objPlayer.x+x)*0.5+60,(objPlayer.y+y)*0.5)
if point_distance(x,y,objPlayer.x,objPlayer.y)<96 image_angle=scrRotate(image_angle,point_direction(x,y,objPlayer.x,objPlayer.y),10)
}
