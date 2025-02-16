if room=rmHotelUpstairs or room=rmHotelOutside or room=rmHotelLobby or room=rmHotelAftermath exit
if global.paused=1 nothing=1 else {
if instance_exists(objStartPoint) {
objPlayer.x=instance_nearest(objPlayer.x,objPlayer.y,objStartPoint).x
objPlayer.y=instance_nearest(objPlayer.x,objPlayer.y,objStartPoint).y
}
}
