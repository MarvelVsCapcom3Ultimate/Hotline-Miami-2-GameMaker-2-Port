if object_index=objPlayerDead or global.paused=1 nothing=1 else {
if alarm[0]<=0 alarm[0]=60
}
if global.paused=1 nothing=1 else {
if instance_exists(objPlayerSwanGun) {
sprite=objPlayerSwanGun.sprite_index
ammo=objPlayerSwanGun.ammo
with objPlayerSwanGun instance_destroy()
my_id=instance_create(x,y,objPlayerSwanGun)
my_id.sprite_index=sprite
my_id.ammo=ammo
}
}
