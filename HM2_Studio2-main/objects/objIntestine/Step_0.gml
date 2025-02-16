image_angle+=speed*diradd*2
if instance_exists(objBloodPool) {if wait<3 wait+=1}
if speed>0 {
surface_set_target(objGore.surf)
repeat (2) {
dir=random(360)
length=random(4)
myx=x+lengthdir_x(length,dir)
myy=y+lengthdir_y(length,dir)
draw_sprite_ext(sprBloodSpeck,random(10),myx*2,myy*2,2,2,dir,c_white,1)
}
surface_reset_target()
}
