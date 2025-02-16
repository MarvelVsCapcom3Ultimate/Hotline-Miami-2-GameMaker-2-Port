if image_index<4 image_index+=0.2 else {
my_id=instance_create(x,y,objDeadBody)
my_id.sprite_index=sprite
my_id.image_index=5
my_id.image_angle=image_angle
scrPlayerExecuteFinish()
instance_destroy()
}

if image_index>2 and dead=0 {
sound_play(sndBoxingBag)
sound_play(sndPunch)
dead=1
}
