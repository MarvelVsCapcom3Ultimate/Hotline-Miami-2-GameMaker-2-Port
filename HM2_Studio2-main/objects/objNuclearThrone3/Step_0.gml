if image_index>0 {solid=0 depth=2 exit}
if scrMovingPlayerExists() {
if scrIsAttacking(objPlayer.sprite_index) {
if place_meeting(x-lengthdir_x(12,objPlayer.dir),y-lengthdir_y(12,objPlayer.dir),objPlayer) {
sound_play(sndWeaponHit)
image_index=1
image_angle=point_direction(objPlayer.x,objPlayer.y,x,y)-90
direction=image_angle+90
speed=1
}
}
}

if place_meeting(x,y,objBullet) or place_meeting(x,y,objEBullet) {
bullets=0
global.my_id=id
with objBullet {
if place_meeting(x,y,global.my_id) {
global.my_id.bullets+=1
global.my_dir=direction
}
}
with objEBullet {
if place_meeting(x,y,global.my_id) {
global.my_id.bullets+=1
global.my_dir=direction
}
}
if bullets>2 image_index=3 else image_index=2
image_angle=global.my_dir-90
direction=image_angle+90
speed=1
}
