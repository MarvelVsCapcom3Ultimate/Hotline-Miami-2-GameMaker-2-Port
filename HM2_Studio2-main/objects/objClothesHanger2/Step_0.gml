image_angle+=diradd
if diradd>0 diradd-=0.02 else {
if diradd<-0.02 diradd+=0.02 else diradd=0
}
if instance_exists(objPlayerDead) exit
image_xscale=1.2
image_yscale=1.2
if place_meeting(x,y,objPlayer) and scrMovingPlayerExists() {
if objPlayer.y<y {
if abs(objPlayer.myxspeed)>0 diradd=-objPlayer.myxspeed*0.5
}
if objPlayer.y>y {
if abs(objPlayer.myxspeed)>0 diradd=objPlayer.myxspeed*0.5
}

if objPlayer.x>x {
if abs(objPlayer.myyspeed)>0 diradd=-objPlayer.myyspeed*0.5
}
if objPlayer.x<x {
if abs(objPlayer.myyspeed)>0diradd=objPlayer.myyspeed*0.5
}
}
image_xscale=1
image_yscale=1
