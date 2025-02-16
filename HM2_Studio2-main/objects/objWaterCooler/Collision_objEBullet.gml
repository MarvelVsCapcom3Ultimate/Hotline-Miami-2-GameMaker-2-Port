if sprite_index=sprWaterCoolerBroken exit
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
if bullets<2 {
shotdir[shots]=point_direction(x,y,other.x-other.hspeed*0.5,other.y-vspeed*0.5)
index[shots]=0
height[shots]=random(50)
shots+=1
with other instance_destroy()
} else {
if life>30 sound_play(sndWaterCooler)
sound_play(sndDoorHit)
repeat (life*0.125) {
my_id=instance_create(x,y,objWaterSplat)
my_id.direction=random(360)
my_id.speed=2+random(2)
}
repeat (life*0.25) {
my_id=instance_create(x,y,objWaterSmudge)
my_id.direction=random(360)
my_id.speed=3+random(3)
my_id.image_angle=my_id.direction
}
repeat(life*0.05) {
my_id=instance_create(x-12+random(24),y-12+random(24),objBigWater)
}
repeat (16) {
my_id=instance_create(x-5+random(10),y-5+random(10),objPlasticShard)
my_id.direction=point_direction(x,y,my_id.x,my_id.y)
my_id.speed=2+random(3)
my_id.image_index=floor(random(12))
}
sprite_index=sprWaterCoolerBroken
image_speed=0
image_index=0
}
