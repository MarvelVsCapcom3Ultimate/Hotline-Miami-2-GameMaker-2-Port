if state=0 {
if objPlayer.y<138 and objPlayer.x>228 and objPlayer.x<252 {
with objPlayer {if active=1 scrDropWeapon()}
objPlayer.active=0
objPlayer.aimon=0
objPlayer.dir=90
if objPlayer.y>96 {
objPlayer.y-=1
objPlayer.image_index+=0.1
objPlayer.legindex+=0.15
scrCameraPan(objCop.x,objCop.y)
} else {
state=1
objPlayer.image_index=0
objPlayer.legindex=0
}
}
}


if state=1 {
if image_index<6 image_index+=0.2
scrCameraPan(objCop.x,(objCop.y+y)/2)
if talked<4 {
if !instance_exists(objConversation) {
scrGetMessage(talked)
talked+=1
}
} else state=2
if talked>=2 {
objPlayer.sprite_index=sprCopBadge
if objPlayer.image_index<16 objPlayer.image_index+=0.2
}
}

if state=2 {
if !instance_exists(objConversation) {
if objEffector.fade=0 {with objPoliceAim fire=1}
if done=0 {alarm[0]=45 done=1}
}
if objEffector.fade=1 {
objEffector.amount+=8
}
if talked>=2 and scrMovingPlayerExists() {
objPlayer.sprite_index=sprCopBadge
if objPlayer.image_index<16 objPlayer.image_index+=0.2
}
}


