image_speed=path_speed*0.1
if path_position=1 {image_index=0 path_end()}

if path_index>0 dir=direction else {
if point_distance(x,y,objPlayer.x,objPlayer.y)<96 dir=scrRotate(dir,point_direction(x,y,objPlayer.x,objPlayer.y),10)
if !place_free(x+hspeed,y) hspeed=-hspeed
if !place_free(x,y+vspeed) vspeed=-vspeed
}
