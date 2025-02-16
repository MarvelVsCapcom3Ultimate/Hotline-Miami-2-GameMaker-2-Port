dir=image_angle
repeat (4) {
my_id=instance_create(x,y,objSplat)
my_id.direction=dir-45+random(90)
my_id.speed=2+random(2)
}
repeat (9) {
my_id=instance_create(x,y,objSmudge)
my_id.direction=dir-45+random(90)
my_id.speed=3+random(3)
my_id.image_angle=my_id.direction
}
repeat(3) {
my_id=instance_create(x-12+random(24),y-12+random(24),objBigBlood)
}
