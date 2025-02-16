if sprite_index=sprBloodSquirt1 {
if round(random(12))=2 {
my_id=instance_create(x+lengthdir_x(6+abs(lengthdir_y(24*image_xscale,dir)),image_angle),y+lengthdir_y(6+abs(lengthdir_y(24*image_xscale,dir)),image_angle),objSmudge)
my_id.speed=random(1)
my_id.direction=image_angle-5+random(10)
my_id.image_angle=my_id.direction
}
surface_set_target(objGore.surf)
repeat (random(2)) {
draw_sprite_ext(sprBloodSpeck,random(10),x*2+lengthdir_x(6+abs(lengthdir_y(24*image_xscale,dir)),image_angle)*2-7+random(14),y*2+lengthdir_y(6+abs(lengthdir_y(24*image_xscale,dir)),image_angle)*2-7+random(14),2,2,image_angle-7+random(14),c_white,1)
}
surface_reset_target()
}

if sprite_index=sprBloodSquirt2 {
if round(random(24))=2 and dir<150 {
my_id=instance_create(x+lengthdir_x(3+abs(lengthdir_y(12*image_xscale,dir)),image_angle),y+lengthdir_y(3+abs(lengthdir_y(12*image_xscale,dir)),image_angle),objSmudge)
my_id.speed=random(1)
my_id.direction=image_angle-5+random(10)
my_id.image_angle=my_id.direction
}
surface_set_target(objGore.surf)
repeat (random(2)) {
draw_sprite_ext(sprBloodSpeck,random(10),x*2+lengthdir_x(3+abs(lengthdir_y(12*image_xscale,dir)),image_angle)*2-7+random(14),y*2+lengthdir_y(3+abs(lengthdir_y(12*image_xscale,dir)),image_angle)*2-7+random(14),2,2,image_angle-7+random(14),c_white,1)
}
surface_reset_target()
}

dir+=image_speed*16
