if sprite_index=sprFatMafiaLSDDie {
speed=0
image_speed=0
path_speed=0
if image_index<7 image_index+=0.2 else {
my_id=instance_create(x,y,objDeadBody)
my_id.sprite_index=sprSonDeadExplode
my_id.bled=1
scrMeleeBlood(x,y)
scrMeleeBlood(x,y)
repeat (20) {
my_id=instance_create(x+16-random(32),y+16-random(32),choose(objBrains,objIntestine))
my_id.direction=point_direction(x,y,my_id.x,my_id.y)
my_id.speed=2+random(3)
my_id.friction=0.15
}
sound_play(sndSwanDie)
global.shake=8
instance_destroy()
}
exit
}
if path_index>0 {
image_speed=0.2
if path_position=1 path_end()
} else {if killed=0 image_speed=speed*0.1}
if !instance_exists(objPlayer) {alert=0 speed=0 exit}
scrSoldierFatKnifeStep()

