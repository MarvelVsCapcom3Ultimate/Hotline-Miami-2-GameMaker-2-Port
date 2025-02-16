if image_index<8 image_index+=0.1 else {
sound_play(sndShotgun)
my_id=instance_create(x+lengthdir_x(41,image_angle),y+lengthdir_y(41,image_angle),objSon)
my_id.sprite_index=sprSonAttackShotgun
my_id.image_index=2
my_id.image_speed=0.35
my_id.dir=image_angle-180
my_id.ammo=5

scrMeleeBlood(x,y)
scrMeleeBlood(x,y)

my_id=instance_create(x,y,objMafiaSlither)
my_id.direction=image_angle-180
my_id.speed=2.5
instance_destroy()
}
