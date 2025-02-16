i=0
repeat (64) {
my_id=instance_create(x+4,y+i,objShard)
if frac(i)>0 my_id.hspeed=sign(lengthdir_x(1,shotdir))*(1+random(3)) else my_id.hspeed=sign(lengthdir_x(1,shotdir))*(0.5+random(1))+lengthdir_y(1,-45+i*0.71)*sign(lengthdir_x(1,shotdir))
my_id.image_index=ceil(random(8))*random(1)
my_id.i=i
my_id.shoty=shoty
my_id.shotdir=shotdir
with my_id {
dist=point_distance(x+4,y+i,x+4,shoty)*0.5
if dist<1 dist=1
motion_add(shotdir,2/dist)
}
if round(random(2))=1 {
my_id=instance_create(x+2,y+i,objShine)
my_id.hspeed=-1+random(2)
//my_id.direction=random(360)
}
i+=1
}

instance_destroy()
