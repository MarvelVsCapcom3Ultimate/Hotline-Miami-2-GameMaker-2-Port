if instance_exists(objSonTakeLSD) {
scrCameraPan(objSonTakeLSD.x,objSonTakeLSD.y)
}

if objLSDSink.sprite_index=sprLSDSinkOverflowing and state=0 {
if wait>0 wait-=1 else {
instance_create(208,272,objMafiaFlip)
state=1
}
}
