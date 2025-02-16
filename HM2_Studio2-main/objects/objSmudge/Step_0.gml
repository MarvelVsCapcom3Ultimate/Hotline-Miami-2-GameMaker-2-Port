if speed=0 {
if image_index=0 {
repeat (3+random(4)) {
my_id=instance_create(x,y,objTinyBlood)
my_id.direction=image_angle-30+random(60)
my_id.speed=3+random(2)
my_id.image_angle=my_id.direction
}
surface_set_target(objGore.surf)
repeat (4+random(4)) {
dir=image_angle-30+random(60)
length=7+random(10)
myx=x+lengthdir_x(length,dir)
myy=y+lengthdir_y(length,dir)
draw_sprite_ext(sprBloodSpeck,random(10),myx*2,myy*2,2,2,dir,c_white,1)
}
surface_reset_target()
}
if image_index<target-1 image_index+=0.25 else done=1
}
