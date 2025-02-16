if sprite_index=sprELisArcadeIsaac {
if scrMovingPlayerExists() {
if scrIsAttacking(objPlayer.sprite_index) and place_meeting(x-lengthdir_x(12,objPlayer.dir),y-lengthdir_y(12,objPlayer.dir),objPlayer) {
sound_play(choose(sndGlass1,sndGlass2))
sound_play(sndTaser)
sprite_index=sprArcadeIsaacBroken
image_index=0
image_speed=0

if image_angle=0 {
i=0
repeat (13) {
my_id=instance_create(x-6+i,y,objShard)
my_id.direction=point_direction(x,y-64,my_id.x,my_id.y)
my_id.speed=2+random(2)
my_id.image_index=floor(random(12))
i+=1
}
}
if image_angle=90 {
i=0
repeat (13) {
my_id=instance_create(x,y-6+i,objShard)
my_id.direction=point_direction(x-64,y,my_id.x,my_id.y)
my_id.speed=2+random(2)
my_id.image_index=floor(random(12))
i+=1
}
}
if image_angle=180 {
i=0
repeat (13) {
my_id=instance_create(x-6+i,y,objShard)
my_id.direction=point_direction(x,y+64,my_id.x,my_id.y)
my_id.speed=2+random(2)
my_id.image_index=floor(random(12))
i+=1
}
}
if image_angle=270 {
i=0
repeat (13) {
my_id=instance_create(x,y-6+i,objShard)
my_id.direction=point_direction(x+64,y,my_id.x,my_id.y)
my_id.speed=2+random(2)
my_id.image_index=floor(random(12))
i+=1
}
}

}
}
}


if sprite_index=sprArcadeIsaacBroken {
if life>0 {
life-=1 
if round(random(3))=2 {
my_id=instance_create(x,y,objElectricity)
my_id.direction=random(360)
my_id.speed=random(1)
}
if round(random(2))=1 {
my_id=instance_create(x-5+random(10),y-5+random(10),objElectricSpark)
my_id.direction=point_direction(x,y,my_id.x,my_id.y)
my_id.speed=3+random(2)
my_id.image_angle=my_id.direction
}
} else {image_speed=0 if sprite_index=sprArcadeIsaacBroken image_index=0}
}
