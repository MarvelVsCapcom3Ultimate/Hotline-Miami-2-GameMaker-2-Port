repeat (3) {
my_id=instance_create(x,y,objFireBallFlame)
my_id.direction=random(360)
my_id.image_angle=random(360)
my_id.speed=0.2+random(1)
}
instance_destroy()
