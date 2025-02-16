image_xscale=3
image_yscale=3
global.my_id=id
bullets=0
with objEBullet {
if place_meeting(x,y,global.my_id) {
global.my_id.bullets+=1
my_id=instance_create(x,y,objSmokeHit)
my_id.color1=c_gray
my_id.color2=c_dkgray
my_id.image_angle=image_angle
my_id.direction=image_angle
my_id.speed=random(1)
instance_destroy()
alert=1
}
}
image_xscale=1
image_yscale=1
if sprite_index=sprArcadeLuftrausersBreak exit
sound_play(choose(sndGlass1,sndGlass2))
sound_play(sndTaser)
sprite_index=sprArcadeLuftrausersBreak
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


