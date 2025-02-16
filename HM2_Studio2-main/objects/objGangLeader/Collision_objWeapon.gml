if other.speed<2 exit
with other move_bounce_all(0)
global.shake=2
my_id=instance_create(x,y,objKnockedOut)
my_id.direction=point_direction(other.x,other.y,x,y)
my_id.speed=2+random(2)
my_id.friction=0.15
my_id.image_angle=my_id.direction-180
my_id.enemyx=my_id.x
my_id.enemyy=my_id.y
my_id.sprite_index=sprGangLeaderGetUp
instance_destroy()

