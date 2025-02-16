if image_speed>0 {
if instance_exists(target) {
if place_meeting(x,y,target) {
target.x+=lengthdir_x(3,image_angle)
target.y+=lengthdir_y(3,image_angle)
target.myxspeed=0
target.myyspeed=0
}
}
}
