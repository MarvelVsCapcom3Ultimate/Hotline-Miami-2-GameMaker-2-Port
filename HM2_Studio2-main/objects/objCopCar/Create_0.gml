doorindex=0
trunkindex=0
my_id=instance_create(x,y,objCopCarFloor)
my_id.image_angle=image_angle
if instance_exists(objEnemy) {
my_id=instance_create(x+lengthdir_x(43,image_angle+180),y+lengthdir_y(43,image_angle+180),objShotgun)
my_id.image_angle=90+image_angle+random(10)
my_id.depth=0
}

my_id=instance_create(x,y,objCopCarTrunk)
my_id.image_angle=image_angle
if !instance_exists(objPlayer) {on=1 scrCenterOn(x,y) depth=-1} else on=0
done=0

image_speed=0
if !instance_exists(objPlayer) {
my_id=instance_create(x,y,objPlayerDead)
my_id.visible=0
my_id.bled=1
}
wait=0
start=30
enter=0
trunk=instance_exists(objEnemy)
