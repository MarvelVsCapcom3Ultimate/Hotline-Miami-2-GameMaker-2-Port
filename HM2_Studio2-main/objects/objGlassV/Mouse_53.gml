if image_index=0 {
alarm[0]=3
image_index=1
shotdir=point_direction(mouse_x,mouse_y,x,y+16)
shoty=random(32)
repeat (7) {
i=shoty-1+random(2)
my_id=instance_create(x+2,y+i,objShard)
my_id.hspeed=sign(lengthdir_x(1,shotdir))*(0.5+random(1))+lengthdir_y(1,-45+i*0.71)*sign(lengthdir_x(1,shotdir))
my_id.image_index=ceil(random(8))*random(1)
my_id.i=i
my_id.shoty=shoty
my_id.shotdir=shotdir
with my_id {
dist=point_distance(x,i,x,shoty)*0.5
if dist<1 dist=1
motion_add(shotdir,5/dist)
}
}
}
else {
image_index=0
with objShard instance_destroy()
}
