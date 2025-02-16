if objPlayer.sprite_index=sprNickeWalkUnarmed and instance_exists(objGeneral) exit
if objPlayer.x<=0 and global.left>0 {
if !instance_exists(objEnemy) and !instance_exists(objKnockedOut) {
if !instance_exists(objGeneral) {
objPlayer.x+=room_width 
objPlayer.persistent=1
objPlayer.alarm[0]=15 
room_goto(global.left)
} else {
objEffector.newsong=1 
if room=rmCamp1 objEffector.song=Delay
objEffector.fade=1
objEffector.next=1
objEffector.nextroom=global.left
objPlayer.active=0
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
} else {
objEffector.newsong=1 
if room=rmCamp1 objEffector.song=Delay
objEffector.fade=1
objEffector.next=1
objEffector.nextroom=global.right
objPlayer.active=0
}
}
}
if objPlayer.y<=0 and global.up>0 {
if !instance_exists(objEnemy) and !instance_exists(objKnockedOut) {
if instance_exists(objGeneral) or global.up=rmScore {
objEffector.newsong=1 
if (room == rmCamp1) 
	objEffector.song = Delay;
if (global.up == rmScore) 
{
	objEffector.song = Dust;
	global.level = rmEndCamp1;
}
objEffector.fade=1
objEffector.next=1
objEffector.nextroom=global.up
objPlayer.active=0
objPlayer.persistent=0
} else {
objPlayer.y+=room_height 
objPlayer.persistent=1
objPlayer.alarm[0]=15 
room_goto(global.up)
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
} else {
objEffector.newsong=1 
if room=rmCamp1 objEffector.song = Delay;
objEffector.fade=1
objEffector.next=1
objEffector.nextroom=global.down
objPlayer.active=0
}
}
}
