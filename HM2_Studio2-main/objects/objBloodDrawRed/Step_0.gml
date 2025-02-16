if sea=1 {
instance_create(random(room_width),room_height/2+3+random(48),objSeaGlimmer)
}
if reload>0 reload-=1 else {
reload=16
instance_create(-64,room_height/2,objPalmTrees)
}
if camount<2 camount+=0.1 else camount=2
if camount<1 {
color2=merge_color(c_white,c_red,camount)
color1=merge_color(c_white,c_teal,camount)
} else {
color2=merge_color(c_red,c_fuchsia,camount-1)
color1=merge_color(c_teal,c_aqua,camount-1)
}
