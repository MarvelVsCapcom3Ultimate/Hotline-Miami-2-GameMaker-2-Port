image_speed=0
bled=0
global.blink=1

if room=rmPoliceStationFloor2Part2 {
if instance_number(objEnemy)<=1 {
if objGirlRevenge.state=0 {
my_id=instance_create(x-8+random(16),y-8+random(16),objKeys)
my_id.direction=point_direction(x,y,my_id.x,my_id.y)
my_id.speed=1
my_id.friction=0.1
}
}
}
