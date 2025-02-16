if image_angle=0 {
if swans=0 {
my_id=instance_create(-32,objPlayer.y+96,objSwanShadowDive)
my_id.image_angle=45
my_id.direction=45
my_id.speed=16
alarm[0]=60
sound_play(sndSwanFly)
}
if swans=1 {
my_id=instance_create(room_width+32,objPlayer.y+96,objSwanShadowDive)
my_id.image_angle=135
my_id.direction=135
my_id.speed=16
sound_play(sndSwanFly)
}
swans+=1
}
