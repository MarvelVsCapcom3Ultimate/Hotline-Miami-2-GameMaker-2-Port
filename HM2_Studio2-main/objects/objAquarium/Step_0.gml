if sprite_index=sprAquariumBreak exit
if place_meeting(x,y,objBullet) or place_meeting(x,y,objEBullet) {
my_id=instance_create(x,y,objAquariumWater)
my_id.image_angle=image_angle
sound_play(choose(sndGlass1,sndGlass2))
sound_play(sndAquarium)
sprite_index=sprAquariumBreak
image_index=0
image_speed=0

if image_angle=0 {
i=0
repeat (42) {
my_id=instance_create(x+8,y-21+i,objShard)
my_id.direction=point_direction(x-64,y,my_id.x,my_id.y)
my_id.speed=2+random(2)
my_id.image_index=floor(random(12))
i+=1
}
}
if image_angle=90 {
i=0
repeat (42) {
my_id=instance_create(x-21+i,y-8,objShard)
my_id.direction=point_direction(x,y+64,my_id.x,my_id.y)
my_id.speed=2+random(2)
my_id.image_index=floor(random(12))
i+=1
}
}
if image_angle=180 {
i=0
repeat (42) {
my_id=instance_create(x-8,y-21+i,objShard)
my_id.direction=point_direction(x+64,y,my_id.x,my_id.y)
my_id.speed=2+random(2)
my_id.image_index=floor(random(12))
i+=1
}
}
if image_angle=270 {
i=0
repeat (42) {
my_id=instance_create(x-21+i,y+8,objShard)
my_id.direction=point_direction(x,y-64,my_id.x,my_id.y)
my_id.speed=2+random(2)
my_id.image_index=floor(random(12))
i+=1
}
}
}

if scrMovingPlayerExists() {
if scrIsAttacking(objPlayer.sprite_index) and place_meeting(x-lengthdir_x(12,objPlayer.dir),y-lengthdir_y(12,objPlayer.dir),objPlayer) {
my_id=instance_create(x,y,objAquariumWater)
my_id.image_angle=image_angle
sound_play(choose(sndGlass1,sndGlass2))
sound_play(sndAquarium)
sprite_index=sprAquariumBreak
image_index=0
image_speed=0

if image_angle=0 {
i=0
repeat (42) {
my_id=instance_create(x+8,y-21+i,objShard)
my_id.direction=point_direction(x-64,y,my_id.x,my_id.y)
my_id.speed=2+random(2)
my_id.image_index=floor(random(12))
i+=1
}
}
if image_angle=90 {
i=0
repeat (42) {
my_id=instance_create(x-21+i,y-8,objShard)
my_id.direction=point_direction(x,y+64,my_id.x,my_id.y)
my_id.speed=2+random(2)
my_id.image_index=floor(random(12))
i+=1
}
}
if image_angle=180 {
i=0
repeat (42) {
my_id=instance_create(x-8,y-21+i,objShard)
my_id.direction=point_direction(x+64,y,my_id.x,my_id.y)
my_id.speed=2+random(2)
my_id.image_index=floor(random(12))
i+=1
}
}
if image_angle=270 {
i=0
repeat (42) {
my_id=instance_create(x-21+i,y+8,objShard)
my_id.direction=point_direction(x,y-64,my_id.x,my_id.y)
my_id.speed=2+random(2)
my_id.image_index=floor(random(12))
i+=1
}
}
}
}
