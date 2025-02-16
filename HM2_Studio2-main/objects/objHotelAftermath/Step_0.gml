if state<8 {
if !instance_exists(objConversation) {
scrGetMessage(state)
state+=1
} else {
if objConversation.sprite=sprFaceBlackSquad scrCameraPan(objSquadBlackLean.x,objSquadBlackLean.y)
if objConversation.sprite=sprFaceFatSquad scrCameraPan(objSquadFatLean.x,objSquadFatLean.y)
if objConversation.sprite=sprFaceNicke scrCameraPan(objPlayer.x,objPlayer.y)
}
} else {
if !instance_exists(objConversation) {
objEffector.next=1
objEffector.nextroom=rmScore
global.level=rmCobraApartment2
objEffector.newsong=1
objEffector.song=Dust
objEffector.fade=1
objEffector.amount+=10.5
} else {
if objConversation.sprite=sprFaceBlackSquad scrCameraPan(objSquadBlackLean.x,objSquadBlackLean.y)
if objConversation.sprite=sprFaceFatSquad scrCameraPan(objSquadFatLean.x,objSquadFatLean.y)
if objConversation.sprite=sprFaceNicke scrCameraPan(objPlayer.x,objPlayer.y)
}
}
