if wait>0 wait-=1 else {
seen=scrLook(objPlayer.x,objPlayer.y,4)
if seen=0 or seen=2 {
my_id=instance_create(x,y,objEGangRandom)
my_id.direction=direction
my_id.alert=1
instance_create(x+2,y+8,objMoneyBag)
instance_destroy()
}
wait=15
}
