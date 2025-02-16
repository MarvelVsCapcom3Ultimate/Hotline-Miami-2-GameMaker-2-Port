if on=0 exit
global.zebra=0
if objPlayer.sprite_index=sprSonFiddleMagnumLSD {
with objZebraGlassV rewind=1
} else {
global.left=-global.left
while global.zebra=0 {
with objZebraGlassV {
if round(random(10))=2 and global.zebra=0 {
if (global.left=-1 and x<room_width/2) {
global.zebra=1 
rewind=1
sound_play(sndGlassReverse)
}
if (global.left=1 and x>room_width/2) {
global.zebra=1 
rewind=1
sound_play(sndGlassReverse)
}
}
}
}
alarm[0]=140
}


