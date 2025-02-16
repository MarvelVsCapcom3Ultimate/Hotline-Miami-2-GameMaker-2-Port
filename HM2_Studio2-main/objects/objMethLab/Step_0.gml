
if place_meeting(x,y,objBullet) or place_meeting(x,y,objEBullet) {
with objMethExplosion {
image_index=2
sound_play(sndBigExplosion) 
scrSongVolume(0.1) 
vol=0.1
starttime=current_time 
on=1
depth=-2
}
instance_create(x,y,objExplosionGround)
repeat (32) {
my_id=instance_create(x-16+random(32),y-16+random(32),objWoodDebris)
my_id.direction=point_direction(x,y,my_id.x,my_id.y)
my_id.speed=random(4)
}
repeat (24) {
my_id=instance_create(x-16+random(32),y-16+random(32),objPlasticShard)
my_id.direction=point_direction(x,y,my_id.x,my_id.y)
my_id.speed=random(4)
my_id.friction=0.1
//my_id.image_alpha=0.5
}
i=0
repeat (8) {
my_id=instance_create(x-16+random(32),y-16+random(32),objMethDebris)
my_id.direction=point_direction(x,y,my_id.x,my_id.y)
my_id.speed=random(4)
my_id.friction=0.1
my_id.image_index=i
i+=1
//my_id.image_alpha=0.5
}
instance_destroy()
}

