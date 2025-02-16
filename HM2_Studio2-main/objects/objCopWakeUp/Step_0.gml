if wait>0 wait-=1 else {
if image_index<27 image_index+=0.15 else {
my_id=instance_create(x,y,objCop)
my_id.dir=image_angle
instance_destroy()
}
}
