if sprite_index=sprSonTakePillLSD image_speed=0
if pills=2 {
scrGetMessage(1)
}
if pills=4 {
sound_play(sndLSDBell)
sound_stop(sndLSDFreak)
scrSongVolume(1)
objEffector.whitealpha=1
instance_create(0,0,objLSD)
sprite_index=sprSonGetUpLSD
objSonCouchLSD.image_index=1
objSonTableLSD.image_index=1
with objNPC instance_destroy()
wait=100
}
