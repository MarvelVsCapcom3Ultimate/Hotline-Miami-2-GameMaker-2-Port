if wait>0 exit
if bselect=0 {
if global.player=select nothing=1 else {with objEditorPlayer instance_destroy() with objEditorCar instance_destroy()}
global.levelname=levelname
global.player=select
global.mysong=currentsong
i=0 
repeat (6) {
global.available[i]=available[i]
i+=1
}
with objEditor scrEditorCorrectEnemyType(0)
scrEditorRemoveUnavailableEnemies()
with objEditor scrCreateCheckboxes()
instance_destroy()
}

if bselect=1 instance_destroy()


if mouse_x>room_width/2-width/2+130 and mouse_y>room_height/2-height/2+8 and mouse_x<room_width/2-width/2+332 and mouse_y<room_height/2-height/2+8+16 {
write=1
blink=1
keyboard_string=levelname
} else write=0

if mouse_x>room_width/2+8 and mouse_y>room_height/2+height/2-32 and mouse_x<room_width/2+width/2-16 and mouse_y<room_height/2+height/2-16 {
windowopen=!windowopen
} else {
if songselect>-1 currentsong=songselect
windowopen=0
}
