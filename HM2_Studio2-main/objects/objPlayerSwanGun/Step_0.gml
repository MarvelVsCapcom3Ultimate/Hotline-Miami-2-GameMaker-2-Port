/*if gotoplayer>0 {
gotoplayer-=1
if point_distance(x,y,objPlayer.x,objPlayer.y)>16 {
x=objPlayer.x
y=objPlayer.y
}
}*/
if active=0 exit
if instance_exists(objPlayerDead) {
if giveupwait>0 giveupwait-=1 else {
if sprite_index=sprSwanGiveUp {if image_index<4 image_index+=0.125} else {
scrDropWeapon()
sprite_index=sprSwanGiveUp
image_index=0
image_speed=0
speed=0
}
exit
}
}

if scrIsWalking(sprite_index) {
image_index+=speed*0.05
}
legindex+=speed*0.1
if speed=0 legindex=0

if point_distance(x,y,objPlayer.x,objPlayer.y)>40 {
if scrLook(objPlayer.x,objPlayer.y,4)>0 {
if lookreload>0 lookreload-=1 else scrSwanChase(path,objPlayer.x,objPlayer.y)
} else {
path_end()
motion_add(point_direction(x,y,objPlayer.x,objPlayer.y),0.5)
if speed>3 speed=3
friction=0
}
} else {
friction=0.5
}

if ammo=0 {
if sprite_index=sprSwanWalkUnarmed nothing=1 else {scrDropWeapon() image_speed=0}
weapon=instance_nearest(x,y,objWeapon)
if instance_exists(weapon) {
if scrIsGun(weapon.object_index) {
if weapon.ammo>0 {
if point_distance(x,y,weapon.x,weapon.y)<24 {
if weapon.object_index=obj9mm sprite_index=sprSwanWalk9mm
if weapon.object_index=objUzi sprite_index=sprSwanWalkUzi
if weapon.object_index=objShotgun sprite_index=sprSwanWalkShotgun
if weapon.object_index=objM16 sprite_index=sprSwanWalkM16
if weapon.object_index=objKalashnikov sprite_index=sprSwanWalkKalashnikov
if weapon.object_index=objDoubleBarrel sprite_index=sprSwanWalkDoubleBarrel
if weapon.object_index=objSilencer sprite_index=sprSwanWalkSilencer
ammo=weapon.ammo
with weapon instance_destroy()
sound_play(sndPickUpWeapon)
}
}
}
}
}
/* */
/*  */
