if state=0 {
if objPlayer.y<432 and objPlayer.x<496 and objPlayer.x>456 {
objPlayer.active=0
objPlayer.dir=90
objPlayer.aimon=0
with objPlayer {
scrDropWeapon()
}
state=1
}
}

if state=1 {
if objPlayer.x<479 objPlayer.x+=1
if objPlayer.x>481 objPlayer.x-=1
if objPlayer.y>232 objPlayer.y-=2
objPlayer.image_index+=0.15
objPlayer.legindex+=0.25
scrCameraPan(objPlayer.x,objPlayer.y)
if objPlayer.x>=479 and objPlayer.x<=481 and objPlayer.y<=232 state=2
}

if state>0 {
if vol>0 vol-=0.005 
if vol<0 vol=0
scrSongVolume(vol)
}

if state=2 {
scrCameraPan(480,(objPlayer.y+objColombianBoss.y)/2)
if !instance_exists(objConversation) {
if current<7 {
scrGetMessage(current)
current+=1
} else {
state=3
global.target=-1234
with objMafiaNPC {
if x<480 {
visible=1
scrGoToExactSpeed(path,targetx,targety,1)
if global.target<0 global.target=id
}
}
}
}
}

if state=3 {
scrCameraPan(global.target.x,global.target.y)
if wait>0 wait-=1 else state=4
}

if state=4 {
scrCameraPan(480,(objPlayer.y+objColombianBoss.y)/2)
if !instance_exists(objConversation) {
if current<8 {
scrGetMessage(current)
current+=1
} else {
state=5
wait=220
global.target=-1234
with objMafiaNPC {
if x>480 {
visible=1
scrGoToExactSpeed(path,targetx,targety,1)
if global.target<0 global.target=id
}
}
}
}
}

if state=5 {
scrCameraPan(global.target.x,global.target.y)
if wait>0 wait-=1 else state=6
}

if state=6 {
scrCameraPan(480,(objPlayer.y+objColombianBoss.y)/2)
if !instance_exists(objConversation) {
scrGetMessage(9)
state=7
}
}

if state=7 {
scrCameraPan(480,(objPlayer.y+objColombianBoss.y)/2)
if !instance_exists(objConversation) {
with objMafiaNPC on=1
}
}
