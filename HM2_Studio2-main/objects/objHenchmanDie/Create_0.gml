state=0
wait=80
image_speed=0.2
zebraangle=point_direction(x+16,y+32,x,y)
bearangle=point_direction(x-24,y+38,x,y)
swanangle=point_direction(x+22,y+48,x,y)

zebrasprite=sprZebraWalkPipe
bearsprite=sprBearWalkUnarmed
swansprite=sprSwan2Stomp
zebraindex=0
bearindex=0
swanindex=0
swanx=0
bled=0
on=0

if instance_exists(objPlayerZebra) zebravisible=0 else zebravisible=1
if instance_exists(objPlayerBear) bearvisible=0 else bearvisible=1
if instance_exists(objPlayerSwanChainsaw) swanvisible=0 else swanvisible=1

with instance_nearest(x,y,objEditorDoorV) {
image_angle=90
solid=0
}

done=0
global.done=0

sweep=1
sweepwait=120
vol=1

swanpos=0
