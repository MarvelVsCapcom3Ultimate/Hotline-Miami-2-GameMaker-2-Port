if image_index<5 image_index+=0.2 else {
if broke=0 {
broke=1
sound_play(sndGlass1)
scrPlaySong(Videodrome)
repeat (8) {
my_id=instance_create(x+lengthdir_x(39,image_angle-180)-2+random(4),y+lengthdir_y(39,image_angle-180)-2+random(4),objShard)
my_id.direction=point_direction(x+lengthdir_x(39,image_angle-180),y+lengthdir_y(39,image_angle-180),my_id.x,my_id.y)
my_id.sprite_index=sprPhantomPiece
my_id.image_index=random(1000)
my_id.speed=1+random(2)
my_id.friction=0.2
my_id.image_alpha=1
}
alarm[0]=15
}
}
