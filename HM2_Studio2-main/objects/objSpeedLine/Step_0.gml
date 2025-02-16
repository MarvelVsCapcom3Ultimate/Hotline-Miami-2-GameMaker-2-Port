if room=rmSubway1 {
image_alpha=(0.15+random(0.1))*(1-objTrain.stationalpha)
image_blend=merge_color(c_dkgray,c_gray,random(0.25))
}
if room=rmHighway {
image_alpha=random(0.01)+(abs(hspeed)-7)*0.0015
}
if room=rmLSDGate {
image_alpha=random(speed*0.0125)
image_angle=direction
image_xscale=speed
}
