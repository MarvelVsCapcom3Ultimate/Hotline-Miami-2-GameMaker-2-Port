if wait>0 {wait-=1 exit}
if room=rmNickeStore {
if state=0 {
objPlayer.dir=90
objPlayer.aimon=0
objPlayer.active=0
objPlayer.sprite_index=sprNickeStoreAnswerPhone
objPlayer.image_index=6
objPlayer.legindex=0
scrGetMessage(0)
scrCenterOn(objPlayer.x,objPlayer.y)
state=1
}

if state=1 {
if !instance_exists(objConversation) {
if objPlayer.image_index>0 {if image_index<=2 objStoreCounter.image_index=0 objPlayer.image_index-=0.15} else {
if objPlayer.y<332 {objPlayer.sprite_index=sprNickeWalkStore objPlayer.y+=1 objPlayer.image_index+=0.1} else {
state=2
objPlayer.active=1
objPlayer.aimon=1
}
}
}
}

}
