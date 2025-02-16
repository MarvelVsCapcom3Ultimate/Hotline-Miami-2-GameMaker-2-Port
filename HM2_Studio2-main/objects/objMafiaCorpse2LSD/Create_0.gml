image_speed=0.125
image_index=random(100)
scrMeleeBlood(x,y)
scrMeleeBlood(x,y)
repeat (4) {
dir=random(360)
dist=5+random(16)
my_id=instance_create(x+lengthdir_x(dist,dir),y+lengthdir_y(dist,dir),objIntestine)
}
