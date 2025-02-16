if point_distance(x,y,objPlayer.x,objPlayer.y)<48 {
vspeed=-1.5
hspeed=0
image_speed=0.25
sprite_index=sprCrabWalk
}



if x<180 hspeed=abs(hspeed)
if x>276 hspeed=-abs(hspeed)
if y>48 vspeed=-abs(vspeed)
if y<8 and speed<1 vspeed=abs(vspeed)

image_angle=direction
