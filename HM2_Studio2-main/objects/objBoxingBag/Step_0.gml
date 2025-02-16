if scrMovingPlayerExists() {
if scrIsAttacking(objPlayer.sprite_index) {
if punch=0 {
if place_meeting(x-lengthdir_x(12,objPlayer.dir),y-lengthdir_y(12,objPlayer.dir),objPlayer) {
image_speed=0.2
image_angle=point_direction(objPlayer.x,objPlayer.y,x,y)
if image_index>2 image_index=2
sound_play(sndBoxingBag)
punch=1
}
}
} else punch=0
}
