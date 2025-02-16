direction+=diradd
if round(random(20))=2 diradd=8-random(16)
if round(random(4))=2 {
my_id=instance_create(x-8+random(16),y-8+random(16),objFireBall)
my_id.direction=random(360)
my_id.speed=1+random(1)
}
if round(random(3))=2  {
my_id=instance_create(x-8+random(16),y-8+random(16),objFlameSmoke)
my_id.direction=random(360)
my_id.speed=0.5+random(1)
}
if !place_free(x+hspeed,y) hspeed=-hspeed
if !place_free(x,y+vspeed) vspeed=-vspeed
