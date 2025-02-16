if speed>0 exit
sprite_index=choose(sprParrotIdle1,sprParrotIdle2,sprParrotIdle3,sprParrotWalk,sprParrotWalk,sprParrotWalk,sprParrotWalk)
if sprite_index=sprParrotWalk {
direction=random(360)
speed=1
image_angle=direction
}
image_speed=0.125
