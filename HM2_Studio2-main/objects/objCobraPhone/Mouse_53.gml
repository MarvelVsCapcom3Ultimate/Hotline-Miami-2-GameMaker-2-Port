if talked=0 {
if place_meeting(x,y+8,objPlayer) {
scrGetMessage(0)
talked=1
image_index=1
objPlayer.active=0
objPlayer.dir=point_direction(objPlayer.x,objPlayer.y,x-5,y)
objPlayer.sprite_index=sprCobraPhone
objPlayer.image_index=0
global.done=1
}
}
