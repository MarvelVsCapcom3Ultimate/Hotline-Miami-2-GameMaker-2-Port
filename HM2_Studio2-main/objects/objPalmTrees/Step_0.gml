if room=rmScene {
if x<-64 instance_destroy()
}
if room=rmReturn {
if x>room_width instance_destroy()
}
dir+=4
