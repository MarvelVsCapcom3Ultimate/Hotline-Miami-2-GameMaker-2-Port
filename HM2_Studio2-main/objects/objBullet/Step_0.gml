if x>room_width+100 or x<-100 or y<-100 or y>room_height+100 instance_destroy()
if sprite_index=sprBulletLSD {
direction+=-5+random(10)
image_angle=direction
image_yscale+=0.04
}
