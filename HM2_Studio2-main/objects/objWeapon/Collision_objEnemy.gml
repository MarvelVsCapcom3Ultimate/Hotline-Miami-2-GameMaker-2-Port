if other.object_index=objFatPolice or other.object_index=objEGangFat or other.object_index=objEMafiaFat or object_get_parent(other.object_index)=objDog or other.object_index=objColombianHiding or other.object_index=objColombianDodger exit

global.dir=direction
move_bounce_all(0)



if speed<5 {speed*=0.2 exit}
speed*=0.2
if other.object_index=objVictim6 {
with other {
scrMeleeBlood(x,y)
my_id=instance_create(x,y,objDeadBody)
my_id.sprite_index=sprVictim6Dead
my_id.image_angle=global.dir
sound_play(sndHit)
sound_play(sndPunch)
instance_destroy()
}
exit
}
with other {
sound_play(sndWeaponHit)
scrEnemyGetKnockedOut(object_index,global.dir)
}
