if done=0 {
if room=rmCopApartment3Floor2Part3 {
if place_meeting(x,y+8,objPlayer) {
if objPlayer.active=1 {
done=1
objPlayer.active=0
objPlayer.aimon=0
objPlayer.dir=90
objPlayer.sprite_index=sprCopAnswerPhone
objPlayer.image_index=0
objPlayer.legindex=0
objPlayer.x=x
} 
}
}
}
