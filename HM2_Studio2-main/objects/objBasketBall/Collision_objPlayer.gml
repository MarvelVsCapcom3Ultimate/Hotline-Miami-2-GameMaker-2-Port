if other.object_index=objPlayerDead exit
if abs(other.myxspeed)>0 or abs(other.myyspeed)>0 {
direction=point_direction(objPlayer.x,objPlayer.y,x,y)
image_angle=direction
speed=3
}
