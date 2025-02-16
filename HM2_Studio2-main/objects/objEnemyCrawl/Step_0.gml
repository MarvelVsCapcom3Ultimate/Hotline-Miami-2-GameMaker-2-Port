if !place_free(x+lengthdir_x(8,image_angle),y+lengthdir_y(8,image_angle)) image_angle+=10
if (image_index>2 and image_index<4) or (image_index>7) {
if place_free(x+lengthdir_x(0.5,image_angle),y) x+=lengthdir_x(0.5,image_angle)
if place_free(x,y+lengthdir_y(0.5,image_angle)) y+=lengthdir_y(0.5,image_angle)
}
if crawl>0 crawl-=1 else {if image_index<3 image_speed=0}
