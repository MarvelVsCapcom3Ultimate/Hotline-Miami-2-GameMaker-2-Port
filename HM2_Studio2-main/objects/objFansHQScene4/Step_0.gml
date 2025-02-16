if objPlayer.x>380 and objPlayer.x<480 and objPlayer.y>42 and objPlayer.y<130 {
if state<12 {
objPlayer.active=0
objPlayer.aimon=0
objPlayer.dir=point_direction(objPlayer.x,objPlayer.y,objFansTable.x,objFansTable.y)
if !instance_exists(objConversation) {
scrGetMessage(state)
state+=1
} else {
if objConversation.sprite=sprMaskZebra scrCameraPan(objZebraIdle.x,objZebraIdle.y)
if objConversation.sprite=sprMaskSwan1 scrCameraPan(objSwanIdleJoint.x,objSwanIdleJoint.y)
if objConversation.sprite=sprMaskTiger scrCameraPan(objTigerLeanTable.x,objTigerLeanTable.y)
if objConversation.sprite=sprMaskBear scrCameraPan(objPlayer.x,objPlayer.y)
}
} else {
if !instance_exists(objConversation) {
objFansVan.sprite_index=sprFansVan
objFansVan.image_speed=0
objFansVan.image_index=0
objPlayer.active=1
objPlayer.aimon=1
global.done=1
} else {
if objConversation.sprite=sprMaskZebra scrCameraPan(objZebraIdle.x,objZebraIdle.y)
if objConversation.sprite=sprMaskSwan1 scrCameraPan(objSwanIdleJoint.x,objSwanIdleJoint.y)
if objConversation.sprite=sprMaskTiger scrCameraPan(objTigerLeanTable.x,objTigerLeanTable.y)
if objConversation.sprite=sprMaskBear scrCameraPan(objPlayer.x,objPlayer.y)
}
}
}

