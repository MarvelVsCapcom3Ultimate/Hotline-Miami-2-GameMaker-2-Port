my_id=instance_create(x,y,objFlame)
my_id.direction=point_direction(x,y,mouse_x,mouse_y)-1+random(2)
my_id.speed=8
my_id.image_angle=my_id.direction
if instance_exists(lastflame) my_id.target=lastflame
lastflame=my_id
