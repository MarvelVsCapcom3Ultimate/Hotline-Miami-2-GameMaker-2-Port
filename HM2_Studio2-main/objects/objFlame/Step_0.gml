if instance_exists(target) {
image_angle=point_direction(x,y,target.x,target.y)
}
image_xscale+=0.01
image_yscale+=0.04
image_blend=merge_color(c_white,c_orange,random(0.5))

if round(random(3))=2 {
my_id=instance_create(x,y,objFireBallFlame)
my_id.direction=direction-10+random(20)
my_id.speed=6
}
