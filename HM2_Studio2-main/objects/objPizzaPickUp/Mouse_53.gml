if on=0 exit
if place_meeting(x,y+24,objPlayer) {
repeat (3) {
my_id=instance_create(x-2+random(2),y+5-random(2),objChange)
my_id.speed=1+random(1)
my_id.direction=90-20+random(40)
my_id.image_angle=random(360)
my_id.friction=0.1
repeat (2) {
my_id=instance_create(x-2+random(2),y+5-random(2),objChange)
my_id.speed=random(2)
my_id.direction=90-20+random(40)
my_id.image_angle=random(360)
my_id.friction=0.15
my_id.image_index=1+random(1)
}
}
objPlayer.sprite_index=sprBearWalkPizza
global.done=1
instance_destroy()
}
