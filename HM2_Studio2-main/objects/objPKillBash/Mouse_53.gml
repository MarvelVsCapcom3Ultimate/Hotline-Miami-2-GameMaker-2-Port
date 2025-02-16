if image_index=3 {
sound_play(sndWeaponHit)
global.shake=3
if energie>0 {
energie-=1
image_index=0
} else {
sound_play(sndHit)
sound_play(sndPunch)
global.shake=5
myx=x+lengthdir_x(20,image_angle)
myy=y+lengthdir_y(24,image_angle)
repeat (2+random(3)) {
my_id=instance_create(x+lengthdir_x(22,image_angle)-1+random(2),y+lengthdir_y(22,image_angle)-1+random(2),objBloodSquirt)
my_id.image_angle=image_angle-120+random(240)
my_id.depth=3
}
repeat (2) instance_create(x+lengthdir_x(17,image_angle),y+lengthdir_y(17,image_angle),objBigBlood)
my_id=instance_create(myx,myy,objBloodPool)
my_id=instance_create(x,y,objDeadBody)
if sprite=sprEGangDieBash my_id.sprite_index=sprEGangDeadBash
if sprite=sprEMafiaDieBash my_id.sprite_index=sprEMafiaDeadBash
my_id.image_index=0
my_id.image_angle=image_angle
scrPlayerExecuteFinish()
instance_destroy()
}
}
/* */
/*  */
