if wait>0 {wait-=1 exit}
if state=0 {
scrGetMessage(0)
state=1
}

if state=1 {
if !instance_exists(objConversation) {
if objPlayer.image_index<19 {objPlayer.image_index+=0.15 objRobberVodka.image_index+=0.15 objRobberVodkaBag.image_index+=0.15} else {
state=2
objPlayer.active=1
objPlayer.aimon=1
objPlayer.image_index=0
objPlayer.sprite_index=sprSonWalkUnarmed
}
}
}
