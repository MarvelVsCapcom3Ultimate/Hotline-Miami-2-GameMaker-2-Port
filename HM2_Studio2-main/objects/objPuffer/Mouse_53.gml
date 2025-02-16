i=random(1)
repeat (8) {
length=1+random(2)
my_id=instance_create(mouse_x+lengthdir_x(length,i*(360/8)),mouse_y+lengthdir_y(length,i*(360/8)),objFirePuff)
my_id.image_angle=i*(360/8)-180
my_id.direction=my_id.image_angle-180
my_id.speed=0.5+random(1)
my_id.friction=0.1
i+=1
}
repeat (4) {
my_id=instance_create(mouse_x-4+random(8),mouse_y-4+random(8),objFireBall)
my_id.direction=point_direction(mouse_x,mouse_y,my_id.x,my_id.y)
my_id.speed=0.25+random(0.25)
}

repeat (16) {
my_id=instance_create(mouse_x,mouse_y,objFireSpark)
my_id.direction=random(360)
my_id.speed=3+random(3)
my_id.image_angle=my_id.direction
}
