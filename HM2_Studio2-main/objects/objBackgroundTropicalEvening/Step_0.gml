if !scrMovingPlayerExists() exit
if objPlayer.sprite_index=sprNickeWalkUnarmed and instance_exists(objGeneral) exit
if room=rmHotelPool or room=rmHotelUpstairs or room=rmHotelOutside or room=rmHotelLobby exit
if objPlayer.x<=0 and global.left>0 {
if !instance_exists(objEnemy) and !instance_exists(objKnockedOut) {
if !instance_exists(objGeneral) {
objPlayer.x+=room_width 
objPlayer.persistent=1
objPlayer.alarm[0]=15 
room_goto(global.left)
} 
}
}
if objPlayer.x>=room_width and global.right>0 {
if !instance_exists(objEnemy) and !instance_exists(objKnockedOut) {
if !instance_exists(objGeneral) {
objPlayer.x-=room_width 
objPlayer.persistent=1
objPlayer.alarm[0]=15 
room_goto(global.right)
} 
}
}
if objPlayer.y<=0 and global.up>0 {
if !instance_exists(objEnemy) and !instance_exists(objKnockedOut) {
if !instance_exists(objGeneral) {
objPlayer.y+=room_height 
objPlayer.persistent=1
objPlayer.alarm[0]=15 
room_goto(global.up)
} else {
if room=rmCamp3Day {
objEffector.newsong=1 
objEffector.song = WayHome;
objEffector.fade=1
objEffector.next=1
objEffector.nextroom=global.up
objPlayer.active=0
}
}
}
}
if objPlayer.y>=room_height and global.down>0 {
if !instance_exists(objEnemy) and !instance_exists(objKnockedOut) {
if !instance_exists(objGeneral) {
objPlayer.y-=room_height 
objPlayer.persistent=1
objPlayer.alarm[0]=15 
room_goto(global.down)
} 
}
}
