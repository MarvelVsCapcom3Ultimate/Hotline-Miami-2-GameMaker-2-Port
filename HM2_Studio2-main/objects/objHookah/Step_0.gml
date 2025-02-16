if image_index=0 {
if scrMovingPlayerExists() {
if point_distance(x,y,objPlayer.x,objPlayer.y)<32 {
image_index=1
solid=0
image_angle=point_direction(objPlayer.x,objPlayer.y,x,y)
speed=1.5
direction=image_angle
friction=0.1
}
}
}

if image_index>=1 {
if index<23 index+=0.25
if alpha>0.25 alpha-=0.01
}
