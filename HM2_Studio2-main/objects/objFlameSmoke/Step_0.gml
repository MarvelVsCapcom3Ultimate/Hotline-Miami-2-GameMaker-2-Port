if image_index<=3 {
image_blend=merge_color(c_orange,c_red,image_index*(1/3))
image_index+=0.125
} 
if image_index>3 {
if image_index<7 {
image_blend=merge_color(c_red,c_black,(image_index)-3*(1/4))
image_index+=0.125
} else instance_destroy()
}
