i=0
repeat shots {
if life>height[i] {
if round(random(1)) {
my_id=instance_create(x+lengthdir_x(12,shotdir[i]),y+lengthdir_y(12,shotdir[i]),objWaterSmudge)
my_id.image_angle=random(360)
}
}
i+=1
}
