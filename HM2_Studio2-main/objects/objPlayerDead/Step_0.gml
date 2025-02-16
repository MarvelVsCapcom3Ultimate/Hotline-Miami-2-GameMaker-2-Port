//if sprite_index=sprEGangDeadBlunt exit
if speed=0 {
if bled=0 and drag=0 {bled=1 instance_create(x,y,objBloodPool)}
}

if !place_free(x,y) speed=0

if drag=1 {
if wait>0 wait-=1 else {

with instance_nearest(x,y,objEnemy) {
scrEnemyDropWeapon()
my_id=instance_create(x,y,objCobraEnemy)
my_id.sprite_index=sprite_index
my_id.image_index=image_index
my_id.dir=direction
with my_id scrGoToExact(path,objPlayerDead.x+lengthdir_x(30,objPlayerDead.image_angle-180),objPlayerDead.y+lengthdir_y(30,objPlayerDead.image_angle-180))
instance_destroy()
}
drag=2
}
}
