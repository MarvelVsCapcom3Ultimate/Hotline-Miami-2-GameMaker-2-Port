if room=rmCourt {
if talked=0 {
if place_meeting(x,y-12,objWriter) {
if objWriter.x>x-6 and objWriter.x<x+6 {
writery=objWriter.y
objWriter.x=x
objWriter.active=0
objWriter.dir=270
objWriter.sprite_index=sprWriterPhone
objWriter.image_index=0
objWriter.y=y-10
global.done=1
talked=1
}
}
}
}
