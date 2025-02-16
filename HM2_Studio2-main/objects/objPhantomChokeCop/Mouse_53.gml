if done>=2 {
my_id=instance_create(x,y,objCop)
my_id.active=0
my_id.aimon=0
my_id.dir=image_angle
my_id.sprite_index=sprCopPush
my_id.image_index=1

my_id=instance_create(x+lengthdir_x(10,image_angle),y+lengthdir_y(10,image_angle),objPhantomFall)
my_id.direction=image_angle
my_id.speed=2
my_id.friction=0.15
my_id.image_angle=image_angle-180

instance_destroy()
}
