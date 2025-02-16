if on==0 {
if !instance_exists(objConversation) {
if objPlayer.image_index>0 objPlayer.image_index-=0.25 else {
on=-1
image_index=0
objPlayer.image_speed=0
objPlayer.active=1
objPlayer.aimon=1
objPlayer.sprite_index=sprPigWalkUnarmed
}
} else {
if objPlayer.image_index<3 objPlayer.image_index+=0.25
}
}
