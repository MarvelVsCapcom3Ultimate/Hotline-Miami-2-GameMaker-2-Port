if state=0 {
if objPlayer.y<544 and objPlayer.x>240 and objPlayer.x<576 {
objPlayer.active=0
objPlayer.aimon=0
objPlayer.sprite_index=sprWriterYell
scrGetMessage(3)
state=1
}
}

if state=1 {
if !instance_exists(objConversation) {
if objPlayer.image_index<9 objPlayer.image_index+=0.1 else {
objPlayer.active=1
objPlayer.aimon=1
objPlayer.sprite_index=sprWriterWalkUnarmed
with objEditorDoorV solid=0
state=2
instance_destroy()
scrSaveFloor()
}
} else {
objPlayer.dir=scrRotate(objPlayer.dir,90,10)
if objPlayer.image_index<5 objPlayer.image_index+=0.1 else objPlayer.image_index=4
}
}
