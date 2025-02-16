if instance_exists(objFansHQScene5) {
if objFansHQScene5.state=9 {
if place_meeting(x,y-8,objPlayer) {
scrGetMessage(2)
objFansHQScene5.state=10
objPlayer.active=0
objPlayer.aimon=0
}
}
}
