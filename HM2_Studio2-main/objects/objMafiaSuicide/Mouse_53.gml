if state=2 {
if place_meeting(x+lengthdir_x(4,image_angle),y+lengthdir_y(4,image_angle),objPlayer) {
with objPlayer instance_destroy()
my_id=instance_create(x,y,objSonKillMafia)
my_id.image_angle=image_angle
instance_destroy()
}
}
