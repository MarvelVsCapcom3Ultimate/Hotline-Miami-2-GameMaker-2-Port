if wait>0 wait-=1 else {
if talked=0 {
scrGetMessage(0)
talked=1
} else {
if !instance_exists(objConversation) {
if sprite_index=sprCopSearch {sprite_index=sprCopSearchEnd image_index=0}
if image_index<4 {image_index+=0.125 y+=0.5} else {
instance_create(x,y,objCop)
objCop.dir=90
with objCop move_outside_solid(270,16)
instance_destroy()
}
}
}
}
