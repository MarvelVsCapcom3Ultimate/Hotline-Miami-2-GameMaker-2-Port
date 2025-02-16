if image_index<10 image_index+=0.15 else {
my_id=instance_create(x,y,objDeadBody)
my_id.image_angle=90
my_id.sprite_index=sprPoliceDeadNeck
my_id=instance_create(x,y+16,objPigButcher)
instance_destroy()
}

if image_index>=7 and snap=0 {
snap=1
sound_play(sndBonesBreak)
}
