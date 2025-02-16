image_index=2
i=0
repeat (32) {
shard[i]=instance_create(x+2,y+i*2,objZebraShard)
if frac(i)>0 shard[i].hspeed=sign(lengthdir_x(1,shotdir))*(1+random(3)) else shard[i].hspeed=sign(lengthdir_x(1,shotdir))*(0.5+random(1))+lengthdir_y(1,-45+i*0.355)*sign(lengthdir_x(1,shotdir))
shard[i].image_index=ceil(random(8))*random(1)
shard[i].i=i
shard[i].shoty=shoty
shard[i].shotdir=shotdir
with shard[i] {
dist=point_distance(x,i*2,x,shoty)*0.05
if dist<1 dist=1
motion_add(shotdir,random(2/dist))
}
shine=instance_create(x+2,y+i*2,objZebraShine)
shine.hspeed=-1+random(2)
//shard[i].direction=random(360)
i+=1
}
shards=32
