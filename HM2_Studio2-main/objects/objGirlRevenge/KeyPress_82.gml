if state=9 {
objPlayer.persistent=1
persistent=1
objMaskDrop.persistent=1
objMaskDrop.x-=480
objMaskDrop.y+=48
objPlayer.x-=480
objPlayer.y+=48
objPlayer.movex=0
objPlayer.movey=0
x-=480
y+=48
viewx=__view_get( e__VW.XView, 0 )-480
viewy=__view_get( e__VW.YView, 0 )+48
room_goto_next()
state=10
wait=30
}
