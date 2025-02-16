with other instance_destroy()
scrCreateBloodWhirl(x,y)
alarm[0]=10
global.shake=12
repeat (2) scrMeleeBlood(x,y)
scrMeleeBlood(x,y)
repeat (24) {
my_id=instance_create(x,y,objBrains)
my_id.direction=random(360)
my_id.speed=4+random(3)
}
repeat (16) {
my_id=instance_create(x,y,objIntestine)
my_id.direction=random(360)
my_id.speed=3+random(2.5)
}
my_id=instance_create(x,y,objPlayerDead)
my_id.bled=1
my_id.sprite_index=sprSonDeadExplode
instance_destroy()
sound_play(sndPunch)
sound_play(sndHit)
sound_play(sndThunder)

