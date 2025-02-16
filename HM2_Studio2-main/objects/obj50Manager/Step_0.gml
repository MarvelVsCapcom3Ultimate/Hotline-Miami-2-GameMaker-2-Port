if state=0 {
if wait>0 wait-=1 else {
if !instance_exists(objConversation) {
if message<3 {
scrGetMessage(message)
message+=1
} else state=1
}
}
}

if state=1 {
if !instance_exists(objConversation) {
if image_angle=180 {
if x>96 {x-=2 image_index+=0.15 legindex+=0.3 scrCameraPan(x,y)} else {state=2 wait=100}
} else image_angle=scrRotate(image_angle,180,10)
}
}

if state=2 {
scrCameraPan(objCobraChair.x,objCobraChair.y)
if wait>0 wait-=1 else {
if sprite_index=spr50ManagerWalkUnarmed image_angle=0
sprite_index=spr50ManagerWalkGun
if x<464 {x+=2 image_index+=0.15 legindex+=0.3} else {legindex=0 image_index=0 if image_angle<90 image_angle+=10 else state=3 scrCameraPan(x+40,(objCobraChair.y+y)*0.5)}
}
}

if state=3 {
scrCameraPan(x+40,(objCobraChair.y+y)*0.5)
if !instance_exists(objConversation) {
if message<5 {
scrGetMessage(message)
message+=1
} else state=4
}
}

if state=4 {
if !instance_exists(objConversation) {
if sprite_index=spr50ManagerWalkGun {sprite_index=spr50ManagerAimGun image_index=0}
if image_index<4 image_index+=0.2 else {sprite_index=spr50ManagerAttackGun image_index=0 state=5 sound_play(snd9mm)}
}
}

if state=5 {
if image_index=0 {
my_id=instance_create(x,y-16,objEBullet)
my_id.direction=90
my_id.image_angle=90
my_id.speed=12
}
if image_index<1 image_index+=0.25 else {sprite_index=spr50ManagerAimGun state=6 image_index=4 wait=100}
}

if state=6 {
if wait>0 wait-=1 else {
if image_index>0 image_index-=0.2 else {objEffector.fade=1 objEffector.next=1 objEffector.nextroom=rmCamp3Night objEffector.newsong=1 objEffector.song=Interlude state=7}
}
}

if state=7 {
objEffector.amount-=14.5
}
