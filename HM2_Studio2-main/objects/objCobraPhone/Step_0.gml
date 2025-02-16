if room=rmCobraApartment1 {
if talked>0 and talked<6 {
if objPlayer.image_index<3 objPlayer.image_index+=0.15
if !instance_exists(objConversation) {
scrGetMessage(talked)
talked+=1
}
}
if talked=6 and !instance_exists(objConversation) {
if objPlayer.sprite_index=sprCobraPhone {
if objPlayer.image_index>0.15 objPlayer.image_index-=0.15 else {
image_index=0
objPlayer.active=1
objPlayer.sprite_index=sprCobraWalkUnarmed
}
}
}
}

if room=rmCobraApartment2 {
if talked>0 and talked<4 {
if objPlayer.image_index<3 objPlayer.image_index+=0.15
if !instance_exists(objConversation) {
scrGetMessage(talked)
talked+=1
}
}
if talked=4 and !instance_exists(objConversation) {
if objPlayer.sprite_index=sprCobraPhone {
if objPlayer.image_index>0.15 objPlayer.image_index-=0.15 else {
image_index=0
objPlayer.active=1
objPlayer.sprite_index=sprCobraWalkUnarmed
}
}
}
}
