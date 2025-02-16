if image_index<sprite_get_number(sprite_index)-1 image_index+=indexspeed else instance_destroy()
image_xscale+=0.005
image_yscale+=0.005*sign(image_yscale)
