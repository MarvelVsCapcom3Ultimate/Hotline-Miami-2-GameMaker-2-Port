if sprite_index=sprLSDSink {
if image_index>0 {
if image_index<3 image_index+=0.15 else image_index=1
if wait>0 wait-=1 else {
sound_play(sndLSDBell3)
sprite_index=sprLSDSinkOverflowing
image_index=0
image_speed=0.15
objEffector.whitealpha=1
//objSon.active=1
//objSon.aimon=1
objSon.sprite_index=sprSonWalkUnarmed
with objPlayer move_outside_solid(270,16)
}
}
}
