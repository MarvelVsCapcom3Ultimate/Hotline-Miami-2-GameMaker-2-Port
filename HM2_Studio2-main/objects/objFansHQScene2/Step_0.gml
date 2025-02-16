if wait>0 {wait-=1 exit}

if state<10 {
if !instance_exists(objConversation) {
scrGetMessage(state)
state+=1
}
if instance_exists(objConversation) {
if objEffector.sprite=sprMaskTiger scrCameraPan(objTigerDrink.x+24,objTigerDrink.y)
if objEffector.sprite=sprMaskSwan1 scrCameraPan(objSwanRollJoint.x+24,objSwanRollJoint.y)
if objEffector.sprite=sprMaskBear scrCameraPan(objBearCheckGun.x+24,objBearCheckGun.y)
if objEffector.sprite=sprMaskSwan2 scrCameraPan(objSwan2Sitting.x+24,objSwan2Sitting.y)
if objEffector.sprite=sprMaskZebra scrCameraPan(objPlayerZebra.x+24,objPlayerZebra.y)
}
} else {
if state=10 {
if !instance_exists(objConversation) {
objPlayer.active=1
objPlayer.aimon=1
state=11
} else {
if objEffector.sprite=sprMaskTiger scrCameraPan(objTigerDrink.x+24,objTigerDrink.y)
if objEffector.sprite=sprMaskSwan1 scrCameraPan(objSwanRollJoint.x+24,objSwanRollJoint.y)
if objEffector.sprite=sprMaskBear scrCameraPan(objBearCheckGun.x+24,objBearCheckGun.y)
if objEffector.sprite=sprMaskSwan2 scrCameraPan(objSwan2Sitting.x+24,objSwan2Sitting.y)
if objEffector.sprite=sprMaskZebra scrCameraPan(objPlayerZebra.x+24,objPlayerZebra.y)
}
}
}


