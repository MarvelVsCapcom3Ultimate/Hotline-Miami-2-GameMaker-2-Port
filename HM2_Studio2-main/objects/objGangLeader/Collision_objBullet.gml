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


global.shake=5
my_id=instance_create(x,y,objDeadBody)
my_id.direction=other.direction
my_id.speed=1+random(1)+bullets*0.5
if my_id.speed>4.5 my_id.speed=4.5
my_id.friction=0.15
if bullets>2 my_id.sprite_index=sprGangLeaderDeadShotgun else my_id.sprite_index=sprGangLeaderDeadMachinegun
my_id.image_index=floor(random(sprite_get_number(my_id.sprite_index)))
my_id.alarm[0]=6
my_id.image_angle=my_id.direction
scrMeleeBlood(x,y)
scrMeleeBlood(x,y)
with (instance_create(x, y - 24, objPoints))
	objPoints.str = "1000pts";
global.myscore+=1000
with objWriter {kills+=1 objEffector.killamount=1}
my_id1=instance_create(x,y,objGangLeaderPipe) 
my_id1.direction=random(360)
my_id1.friction=0.15 
my_id1.speed=3
my_id1=instance_create(x,y,objGangLeaderGlasses) 
my_id1.direction=random(360)
my_id1.friction=0.15 
my_id1.speed=3
instance_destroy()
