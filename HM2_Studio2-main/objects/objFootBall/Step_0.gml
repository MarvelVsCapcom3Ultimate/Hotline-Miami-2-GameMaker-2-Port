if !place_free(x+hspeed*2,y) hspeed=-hspeed
if !place_free(x,y+vspeed*2) vspeed=-vspeed
image_speed=speed*0.5
if speed<0.7 friction=0.005 else friction=0.05
image_angle=direction
