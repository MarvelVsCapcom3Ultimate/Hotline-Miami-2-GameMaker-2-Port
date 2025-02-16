if other.speed>30 {
bullets=1
scrBloodShot(x,y,bullets)
sprite_index=sprFatSoldierDyingSniper
image_index=1
image_speed=0
speed=0
angle=other.direction-180
direction=other.direction-180
if path_index>0 path_end()
with other {
my_id=instance_create(x,y,objSmokeHit)
my_id.color1=c_red
my_id.color2=c_maroon
my_id.image_angle=image_angle
my_id.direction=image_angle
my_id.speed=random(1)
instance_destroy()
}
exit
}


image_xscale=3
image_yscale=3
global.my_id=id
bullets=0
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
alert=1
}
}
if bullets>3 shotgun=1
scrBloodShot(x,y,bullets)
image_xscale=1
image_yscale=1
if sprite_index=sprFatSoldierDying or sprite_index=sprFatSoldierDyingSniper exit
energie-=bullets
if energie<=0 {
sprite_index=sprFatSoldierDying
image_index=1
image_speed=0
if path_index>0 path_end()
}
