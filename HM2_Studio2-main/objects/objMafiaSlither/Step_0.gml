motion_add(point_direction(x,y,240,240),0.2)
if speed>1 speed=1
image_angle=direction
if point_distance(x,y,240,240)<4 instance_destroy()

if round(random(1)) {
my_id=instance_create(x-4+random(8),y-4+random(8),objTinyBlood)
my_id.sprite_index=sprTinyBlood2
my_id.image_angle=image_angle
}
