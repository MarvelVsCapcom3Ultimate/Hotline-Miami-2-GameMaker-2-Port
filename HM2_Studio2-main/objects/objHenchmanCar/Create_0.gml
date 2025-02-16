doorindex=0
my_id=instance_create(x,y,objHenchmanCarFloor)
my_id.image_angle=image_angle

if !instance_exists(objPlayer) {on=1 scrCenterOn(x,y) depth=-1} else on=0
done=0

image_speed=0
if !instance_exists(objPlayer) {
my_id=instance_create(x,y,objPlayerDead)
my_id.bled=1
my_id.visible=0
}
wait=0
start=30
enter=0
