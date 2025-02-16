if state=1 exit
if instance_exists(objConversation) exit
if objWarWriter.state=11 {
if point_distance(x,y,objPlayer.x,objPlayer.y)<48 {
state=1
sound_play(sndPickUpWeapon)
}
}
