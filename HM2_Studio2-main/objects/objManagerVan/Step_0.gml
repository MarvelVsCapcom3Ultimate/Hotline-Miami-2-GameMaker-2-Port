if global.done=1 {
if state=0 {
if objPlayer.x>608 {
objPlayer.active=0
state=1
}
}

if state=1 {
if image_index<11 image_index+=0.2 else {
if message<4 {
if !instance_exists(objConversation) {
scrGetMessage(message)
message+=1
}
} else state=2
}
}

if state=2 {
if !instance_exists(objConversation) {
objPlayer.active=1
state=3
}
}

if state=3 {
if image_index>0 image_index-=0.2
}

}
