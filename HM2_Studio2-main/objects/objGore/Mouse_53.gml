/*repeat (12) {
my_id=instance_create(mouse_x,mouse_y,objTinyBlood)
my_id.direction=random(360)
my_id.speed=4+random(4)
}*/
exit
repeat (6) {
my_id=instance_create(mouse_x,mouse_y,objSplat)
my_id.direction=random(360)
my_id.speed=2+random(2)
}
repeat (5) {
my_id=instance_create(mouse_x,mouse_y,objSmudge)
my_id.direction=random(360)
my_id.speed=3+random(3)
my_id.image_angle=my_id.direction
}
repeat(3) {
my_id=instance_create(mouse_x-12+random(24),mouse_y-12+random(24),objBigBlood)
}
alarm[0]=7
/* */
/*  */
