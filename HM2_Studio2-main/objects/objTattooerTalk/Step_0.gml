if talked<9 and talked>0 {
if !instance_exists(objConversation) {
scrGetMessage(talked)
talked+=1
}
}

if instance_exists(objConversation) {
if objEffector.sprite=sprFaceTattooer image_index+=0.1 else image_index=0
}
