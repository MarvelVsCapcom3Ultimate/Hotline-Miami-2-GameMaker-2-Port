if speed=0 {
if bled=0 and scrCanBleed() {bled=1 instance_create(x,y,objBloodPool)}
}



if scrBodyIsFlying(sprite_index) {
if speed<2 {
if image_index<3 image_index+=0.2
} else {
with objGlassPanel solid=0
scrFlyThroughWindow()
}
if !place_free(x,y) speed=0
with objGlassPanel solid=1
} else {
if !place_free(x,y) speed=0
}
