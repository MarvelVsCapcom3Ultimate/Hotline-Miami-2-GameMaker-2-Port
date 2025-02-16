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
image_xscale=1
image_yscale=1
energie-=bullets
if energie<=0 scrEnemyDieShot(object_index,bullets)
objEffector.roomkills++;
