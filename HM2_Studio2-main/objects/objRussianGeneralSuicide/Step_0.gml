if on=1 {
if image_index<8 {
image_index+=0.2
if image_index>2 and image_index-0.2<2 {
scrMeleeBlood(x,y-4)
sound_play(snd9mm)
my_id=instance_create(x,y-12,objEBullet)
my_id.direction=90
my_id.image_angle=90
my_id.speed=8
direction=90
speed=1
friction=0.1
with objBankChair {
direction=90
speed=1
friction=0.1
}
}
}
}
