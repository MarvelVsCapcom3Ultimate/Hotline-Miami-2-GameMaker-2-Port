if risen=0 {
if point_distance(x,y,objPlayer.x,objPlayer.y)<96 or on {
on=1
target=instance_position(512,69,objEditorDoorH)
if instance_exists(target)  {
if point_distance(x,y,target.x,target.y)>29 {
direction=point_direction(x,y,target.x+24,target.y)
speed=2
sprite_index=sprVictim1Walk
image_speed=0.25
image_angle=direction
} else {
sprite_index=sprVictim1Idle2
speed=0
image_speed=0.2
}
}
}
} else {
dist=point_distance(x,y,objPlayer.x,objPlayer.y)
if dist<64 {
dir=point_direction(objPlayer.x,objPlayer.y,x,y)
direction=dir-180
if place_free(x+lengthdir_x(1,dir),y) x+=lengthdir_x(1,dir)
if place_free(x,y+lengthdir_y(1,dir)) y+=lengthdir_y(1,dir)
sprite_index=sprVictim1Walk
image_speed=0.1
} else {image_speed=0 speed=0 direction=scrRotate(direction,point_direction(x,y,objPlayer.x,objPlayer.y),10)}
}
