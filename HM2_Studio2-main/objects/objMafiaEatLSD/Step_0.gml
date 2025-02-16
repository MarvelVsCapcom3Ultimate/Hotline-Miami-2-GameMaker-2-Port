if state=0 {
if objPlayer.y<512 {
if wait>0 wait-=1 else {
if sprite_index=sprMafiaEatLSD {
sprite_index=sprMafiaFlameOnLSD
image_index=0
image_speed=0
}
image_angle=scrRotate(image_angle,point_direction(x,y,objPlayer.x,objPlayer.y),5)
if image_index<14 image_index+=0.15 else {
my_id=instance_create(x,y,objEMafiaRandom)
my_id.sprite_index=sprEMafiaWalkKalashnikovLSD
my_id.ammo=24
my_id.direction=image_angle
instance_destroy()
}
}
}
}
