if instance_exists(objSon) {
if objPlayer.active=1 {
if sprite_index=sprEMafiaDrinkVodkaBag {
sprite_index=sprRobberWalkBag
image_index=0
image_angle=0
image_speed=0
solid=0
}

image_index+=speed*0.05
legindex+=speed*0.1
if speed=0 legindex=0

if point_distance(x,y,objPlayer.x,objPlayer.y)>40 {
if scrLook(objPlayer.x,objPlayer.y,4)>0 {
if lookreload>0 lookreload-=1 else scrSwanChase(path,objPlayer.x,objPlayer.y)
} else {
path_end()
motion_add(point_direction(x,y,objPlayer.x,objPlayer.y),0.5)
if speed>3 speed=3
friction=0
}
} else {
friction=0.5
}
} else friction=0.5
}
