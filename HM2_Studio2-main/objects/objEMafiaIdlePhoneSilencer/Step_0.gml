if wait>0 wait-=1 else {
seen=scrLook(objPlayer.x,objPlayer.y,4)
if seen=0 or seen=2 {
my_id=instance_create(x,y,objEMafiaStatic)
my_id.sprite_index=sprEMafiaWalkSilencer
my_id.direction=direction
my_id.angle=direction
my_id.speed=2
my_id.alert=1
my_id.ammo=12
instance_destroy()
}
wait=15
}
