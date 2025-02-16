if other.image_index>0 exit
sound_play(choose(sndGlass1,sndGlass2))
other.image_index=1
other.shotdir=direction
other.target=id
if other.object_index=objWoodWindowV {
with other {
alarm[0]=3
image_index=1
shoty=other.y-other.vspeed*0.5
repeat (7) {
i=shoty-1+random(2)
my_id=instance_create(x+4,i,objShard)
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
}

if other.object_index=objWoodWindowH {
with other {
alarm[0]=3
image_index=1
shotx=other.x-other.hspeed*0.5
repeat (7) {
i=shotx-1+random(2)
my_id=instance_create(i,y+4,objShard)
my_id.vspeed=sign(lengthdir_y(1,shotdir))*(0.5+random(1))+lengthdir_y(1,45+i*0.71)*sign(lengthdir_y(1,shotdir))
my_id.image_index=ceil(random(8))*random(1)
my_id.i=i
my_id.shotx=shotx
my_id.shotdir=shotdir
with my_id {
dist=point_distance(i,y,shotx,y)*0.5
if dist<1 dist=1
motion_add(shotdir,5/dist)
}
}
}
}
