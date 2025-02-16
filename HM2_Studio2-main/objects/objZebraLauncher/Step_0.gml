if on=1 {
if objPlayer.sprite_index=sprSonWalkMagnumLSD {
if objPlayer.ammo=0 {
objPlayer.active=0
objPlayer.image_index=0
objPlayer.aimon=0
objPlayer.legindex=0
objPlayer.sprite_index=sprSonFiddleMagnumLSD
}
}

if objPlayer.sprite_index=sprSonFiddleMagnumLSD {
with objPlayer {
if image_index<10.4 image_index+=0.1 else image_index=9
}
if !instance_exists(objZebraShard) {
if !instance_exists(objZebraBoss) {
if global.left=1 {
my_id=instance_create(room_width/2+230,objPlayer.y,objZebraBoss)
my_id.image_angle=180
my_id.image_yscale=-1
my_id.hspeed=-6
}
if global.left=-1 {
my_id=instance_create(room_width/2-230,objPlayer.y,objZebraBoss)
my_id.hspeed=6
}
}
}
}
} 

if on=0 {
if wait>0 wait-=1 else {
if instance_exists(objZebraParts) {
if objEffector.fade=0 {
objEffector.whitealpha=1
objEffector.fade=1
objEffector.next=1
objEffector.nextroom=room_next(room)
objEffector.newsong=1
objEffector.song = Fahkeet;
}
objPlayer.persistent=1
objPlayer.addx=0
objPlayer.addy=0
objPlayer.sprite_index=sprSonWalkUnarmedLSD
}
}
}
