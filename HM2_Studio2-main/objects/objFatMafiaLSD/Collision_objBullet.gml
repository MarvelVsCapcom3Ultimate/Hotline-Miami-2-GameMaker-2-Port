image_xscale=3
image_yscale=3
global.my_id=id
bullets=0
dir=other.direction
with objBullet {
if place_meeting(x,y,global.my_id) {
global.my_id.bullets+=1
my_id=instance_create(x,y,objSmokeHit)
my_id.color1=c_red
my_id.color2=c_maroon
my_id.image_angle=image_angle
my_id.direction=image_angle
my_id.speed=random(1)
instance_destroy()
}
}
image_xscale=1
image_yscale=1
if bullets>3 {
speed=0
direction=dir-180
sprite_index=sprFatMafiaLSDDie
image_index=0
repeat (20) {
my_id=instance_create(x+lengthdir_x(6,direction-180),y+lengthdir_y(6,direction-180),choose(objBrains,objIntestine))
my_id.direction=dir-15+random(30)
my_id.speed=2+random(3)
my_id.friction=0.15
}
scrMeleeBlood(x,y)
scrMeleeBlood(x,y)
scrMeleeBlood(x,y)
}
