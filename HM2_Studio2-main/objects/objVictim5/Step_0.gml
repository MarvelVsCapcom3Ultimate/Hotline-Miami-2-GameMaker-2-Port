if point_distance(x,y,objPlayer.x,objPlayer.y)>44 {
if sprite_index=sprVictim5Idle3 sprite_index=sprVictim5Idle2
if image_index<9 image_index+=0.15 else image_index=2
} else {
if sprite_index=sprVictim5Idle2 sprite_index=sprVictim5Idle3
if image_index<7 image_index+=0.15 else image_index=0
}
direction=scrRotate(direction,point_direction(x,y,objPlayer.x,objPlayer.y),8)


if scrIsAttacking(objPlayer.sprite_index) {
if place_meeting(x+lengthdir_x(12,objPlayer.dir-180),y+lengthdir_y(12,objPlayer.dir-180),objPlayer) or place_meeting(x,y,objPlayer) {
my_id=instance_create(x,y,objEnemyCrawl)
my_id.direction=point_direction(objPlayer.x,objPlayer.y,x,y)
my_id.speed=1+random(2)
my_id.friction=0.15
my_id.sprite_index=sprVictim5Crawl
my_id.alarm[0]=6
my_id.image_angle=my_id.direction
global.shake=8
scrMeleeBlood(x,y)
sound_play(sndHit)
sound_play(sndPunch)
instance_destroy()
}
}
