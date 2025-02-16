if wait>0 wait-=1 else {
seen=scrLook(objPlayer.x,objPlayer.y,4)
if seen=0 or seen=2 {
my_id=instance_create(x,y,objSoldierRandom)
my_id.sprite_index=sprSoldierWalkKalashnikov
my_id.direction=direction
my_id.angle=direction
my_id.speed=2
my_id.alert=1
my_id=instance_create(x,y,objPoncho)
my_id.image_angle=direction
my_id.direction=direction-180
my_id.speed=2
my_id.friction=0.2
instance_destroy()
}
wait=15
}
