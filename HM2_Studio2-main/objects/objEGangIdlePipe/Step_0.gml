if wait>0 wait-=1 else {
seen=scrLook(objPlayer.x,objPlayer.y,4)
if seen=0 or seen=2 {
my_id=instance_create(x,y,objEGangMeleeRandom)
my_id.direction=direction
my_id.sprite_index=sprEGangWalkPipe
my_id.alert=1
instance_destroy()
}
wait=15
}
