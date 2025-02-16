if image_index=2 exit
if scrMovingPlayerExists() {
if scrIsAttacking(objPlayer.sprite_index) and place_meeting(x-lengthdir_x(12,objPlayer.dir),y-lengthdir_y(12,objPlayer.dir),objPlayer) {
sound_play(choose(sndGlass1,sndGlass2))
image_index=2
if object_index=objWoodWindowV {
shoty=objPlayer.y
shotdir=objPlayer.dir
i=0
repeat (64) {
my_id=instance_create(x+4,y+i,objShard)
my_id.shoty=objPlayer.y
my_id.shotdir=objPlayer.dir
if frac(i)>0 my_id.hspeed=sign(lengthdir_x(1,shotdir))*(1+random(3)) else my_id.hspeed=sign(lengthdir_x(1,shotdir))*(0.5+random(1))+lengthdir_y(1,-45+i*0.71)*sign(lengthdir_x(1,shotdir))
my_id.image_index=ceil(random(8))*random(1)
my_id.i=i
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
i+=0.5
}
}

if object_index=objWoodWindowH {
shotx=objPlayer.x
shotdir=objPlayer.dir
i=0
repeat (64) {
my_id=instance_create(x+i,y+4,objShard)
my_id.shotx=objPlayer.x
my_id.shotdir=objPlayer.dir
if frac(i)>0 my_id.vspeed=sign(lengthdir_y(1,shotdir))*(1+random(3)) else my_id.vspeed=sign(lengthdir_y(1,shotdir))*(0.5+random(1))+lengthdir_y(1,45+i*0.71)*sign(lengthdir_y(1,shotdir))
my_id.image_index=ceil(random(8))*random(1)
my_id.i=i
with my_id {
dist=point_distance(x+i,y+4,shotx,y+4)*0.5
if dist<1 dist=1
motion_add(shotdir,2/dist)
}
if round(random(2))=1 {
my_id=instance_create(x+i,y+4,objShine)
my_id.vspeed=-1+random(2)
//my_id.direction=random(360)
}
i+=0.5
}
}

}
}
