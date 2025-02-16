if image_alpha<1 image_alpha+=0.1
if scrMovingPlayerExists() {
if place_meeting(x,y,objPlayer) {
with objPlayer {
my_id=instance_create(x,y,objPlayerDead)
my_id.sprite_index=sprSonDeadZebra
my_id.image_angle=point_direction(objZebraBoss.x,objZebraBoss.y,x,y)
my_id.direction=my_id.image_angle
my_id.speed=2.5
my_id.friction=0.25
sound_play(sndPunch)
sound_play(sndBoxingBag)
sound_play(sndHit)
sound_play(sndDoorHit)
scrMeleeBlood(x,y)
scrMeleeBlood(x,y)
instance_destroy()
}
}
}
