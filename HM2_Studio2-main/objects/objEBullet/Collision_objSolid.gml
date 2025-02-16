my_id=instance_create(x,y,objSmokeHit)
my_id.image_angle=direction
my_id.direction=direction-180
my_id.speed=random(1)
amount=random(0.5)
my_id.color1=merge_color(c_gray,c_dkgray,amount)
my_id.color2=merge_color(c_dkgray,c_black,amount)
x+=lengthdir_x(speed,direction)
y+=lengthdir_y(speed,direction)
repeat (4+random(6)) {
dir=-65+random(130)
my_id=instance_create(x+lengthdir_x(8,image_angle-180+dir),y+lengthdir_y(8,image_angle-180+dir),objSpark)
my_id.direction=image_angle-180+dir
my_id.image_angle=image_angle-180+dir
my_id.speed=2+random(5)*random(1)
}
instance_destroy()

