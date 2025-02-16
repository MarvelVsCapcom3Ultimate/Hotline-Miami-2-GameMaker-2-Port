if on>0 and index<6 {
if point_distance(other.x,other.y,x+77,y+75)<75 {
with other {
scrMeleeBlood(x,y)
repeat (3) {
scrMeleeBlood(x-16+random(32),y-16+random(32))
}
repeat (5) {
my_id=instance_create(x-3+random(6),y-3+random(6),objIntestine)
my_id.direction=point_direction(x,y,my_id.x,my_id.y)
my_id.speed=1.5+random(1.5)
}
my_id=instance_create(x,y,objDeadBody)
my_id.sprite_index=sprEMafiaDeadExplosion
if object_index=objEMafiaFat my_id.sprite_index=sprEMafiaFatDeadExplosion 
if object_get_parent(object_index)=objDog my_id.sprite_index=sprDogDeadExplosion
my_id.direction=point_direction(objMethExplosion.x+77,objMethExplosion.y+75,x,y)
my_id.image_angle=my_id.direction
my_id.speed=2+random(1)
my_id.image_index=random(360)
instance_destroy()
}
} else {
with other {
scrGetKnockedOut(object_index,point_direction(objMethExplosion.x+77,objMethExplosion.y+75,x,y))
}
}
}
