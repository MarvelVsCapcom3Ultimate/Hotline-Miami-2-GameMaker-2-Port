image_speed=0
image_index=0
if energie<=0 {
my_id=instance_create(x,y,objDeadBody)
my_id.image_angle=image_angle
my_id.sprite_index=sprite
my_id.image_index=3
scrPlayerExecuteFinish()
instance_destroy()
}
