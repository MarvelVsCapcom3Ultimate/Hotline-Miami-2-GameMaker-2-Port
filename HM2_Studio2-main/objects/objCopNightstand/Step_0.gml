if done=1 {
if objPlayer.sprite_index=sprCopAnswerPhone {
if objPlayer.image_index<4 {
objPlayer.image_index+=0.15
if objPlayer.image_index>=3 image_index=1
} else {
if !instance_exists(objConversation) {
if talk<talks {
scrGetMessage(talk)
talk+=1 
}
} else {
if talk>=talks {done=2 }
}
}
}
}

if done=2 {
if !instance_exists(objConversation) {
if objPlayer.image_index<7 {
objPlayer.image_index+=0.15
if objPlayer.image_index>=6 image_index=0
} else {
done=3
objPlayer.sprite_index=sprCopCheckGun
objPlayer.image_index=0
wait=60
}
}
}

if done=3 {
if wait>0 wait-=1 else {
if objPlayer.image_index<45 {
objPlayer.image_index+=0.15
if objPlayer.image_index>=25 {
if objPlayer.image_index-0.15<25 {
objEffector.fade=1
objEffector.next=1
objEffector.restart=1
}
objEffector.amount+=14
}
}
}
}
