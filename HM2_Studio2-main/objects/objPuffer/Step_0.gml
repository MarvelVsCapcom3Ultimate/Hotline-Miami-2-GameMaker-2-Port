exit
if round(random(3))=2 {
my_id=instance_create(mouse_x,mouse_y,objFirePuff)
my_id.direction=-15+random(30)
my_id.image_angle=180+direction
my_id.speed=1+random(1)
my_id.friction=0.05
}
