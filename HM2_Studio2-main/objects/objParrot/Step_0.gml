if point_distance(x,y,objPlayer.x,objPlayer.y)<96 {
direction=point_direction(objPlayer.x,objPlayer.y,x,y)
if speed=0 speed=2
sprite_index=sprParrotFly
}

if speed>=2 {
if speed<5 speed+=0.1
image_speed=speed*0.1
image_angle=direction
}

if x>room_width+30 or x<-30 or y<-30 or y>room_width+30 instance_destroy()
