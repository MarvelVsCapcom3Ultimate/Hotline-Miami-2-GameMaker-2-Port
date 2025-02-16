if sprite_index=sprColombianHidingReload {
if image_index<sprite_get_number(sprite_index)-1 image_index+=0.2 else {
ammo=24
sprite_index=sprColombianHiding
}
exit
}
if alertwait>-1 {if alertwait=0 {alert=1} alertwait-=1}
//if scrIsSearching(sprite_index) {image_speed=0.2 speed=0 exit}
if lookreload>0 lookreload-=1 else {
seen=scrLookExt(objPlayer.x,objPlayer.y,12,640) 
if seen=0 {alert=1}
if seen=2 {alert=2}
if seen==1 and alert>0 {alert=0}
lookreload=8
}
if instance_exists(objPlayerDead) or ammo=0 {alert=0}
if alert>0 {
if image_index<4 image_index+=0.25 else {
dist=point_distance(x,y,objPlayer.x,objPlayer.y)
if dist>640 alert=0 else {
angle=scrRotate(angle,point_direction(x,y,objPlayer.x,objPlayer.y),10)
if ammo>0 {
if reload>0 reload-=1 else {
sound_play(snd9mm)
ammo-=1
shake=3
reload=4
global.shake=6
//mask_index=sprWeaponMask
if place_meeting(x+lengthdir_x(8,angle),y+lengthdir_y(8,angle),objSolid) {
my_id=instance_create(x,y,objSmokeHit)
global.dir=angle
with my_id move_contact_all(global.dir,26)
} else {
my_id=instance_create(x+lengthdir_x(26,angle),y+lengthdir_y(26,angle),objEBullet)
if instance_exists(my_id) {
my_id.direction=angle-6+random(12)
my_id.speed=12+random(4)
my_id.image_angle=my_id.direction
}
}
my_id=instance_create(x+lengthdir_x(5,angle-5*image_yscale),y+lengthdir_y(5,angle-5*image_yscale),objShell)
my_id.sprite_index=sprUziShell
my_id.image_angle=angle
my_id.direction=angle-90*image_yscale-20+random(30)
my_id.speed=1+random(3)
light=20
mask_index=sprMask
}
}
}
}
} else {if image_index>0 image_index-=0.2 else if ammo=0 {sprite_index=sprColombianHidingReload image_index=0}}
