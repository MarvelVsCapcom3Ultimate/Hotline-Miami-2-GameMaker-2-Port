if on=1 {
if round(random(3))=2 {
if image_angle=0 or image_angle=180 my_id=instance_create(x-16+random(32),y,objElectricity)
if image_angle=90 or image_angle=270 my_id=instance_create(x,y-16+random(32),objElectricity)
my_id.direction=random(360)
my_id.speed=random(1)
my_id.depth=-1
}
if round(random(2))=1 {
if image_angle=0 or image_angle=180 my_id=instance_create(x-5+random(10)-16+random(32),y-5+random(10),objElectricSpark)
if image_angle=90 or image_angle=270 my_id=instance_create(x-5+random(10),y-5+random(10)-16+random(32),objElectricSpark)
my_id.direction=point_direction(x,y,my_id.x,my_id.y)
my_id.speed=3+random(2)
my_id.image_angle=my_id.direction
my_id.depth=-1
}
if life>0 life-=1 else on=0
}
