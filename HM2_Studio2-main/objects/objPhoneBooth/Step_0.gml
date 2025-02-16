if room=rmCourt {
if talked>0 and talked<12 {
if objWriter.image_index>4 and objWriter.image_index<14 objWriter.dir=scrRotate(objWriter.dir,250,5)
if objWriter.image_index<15 objWriter.image_index+=0.125 else {
objWriter.dir=scrRotate(objWriter.dir,270,5)
if !instance_exists(objConversation) {
scrGetMessage(talked+16)
talked+=1
}
}
}
if talked>=12 {
if !instance_exists(objConversation) {
if objWriter.image_index>4 objWriter.image_index=4
if objWriter.image_index>0.125 objWriter.image_index-=0.125 else {objWriter.active=1 objWriter.sprite_index=sprWriterWalk with objWriter move_outside_solid(90,16)}
}
}
}
