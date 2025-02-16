image_speed=0
image_index=6 
image_yscale=choose(1,2,3)
image_xscale=3+image_yscale
hspeed-=image_yscale*2

if room=rmSubway1 {
hspeed=objTrain.trainspeed*(0.9+random(0.1))
image_blend=c_black
image_alpha=(0.15+random(0.1))*(1-objTrain.stationalpha)
}

if room=rmHighway {
hspeed=__background_get( e__BG.HSpeed, 0 )*(1.5+random(0.2))
image_alpha=random(0.01)+(abs(hspeed)-7)*0.0015
}

if room=rmLSDGate {
image_yscale=0.5+random(0.5)
}
