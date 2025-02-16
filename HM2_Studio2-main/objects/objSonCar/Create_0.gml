image_speed=0
with objPlayerDead instance_destroy()
if !instance_exists(objPlayer) {
my_id=instance_create(x,y,objPlayerDead)
my_id.visible=0
my_id.bled=1
}
bottom=instance_create(x,y,objSonCarBottom)
bottom.image_angle=image_angle
done=0
on=0
wait=0
start=30
enter=0
doorangle=0
