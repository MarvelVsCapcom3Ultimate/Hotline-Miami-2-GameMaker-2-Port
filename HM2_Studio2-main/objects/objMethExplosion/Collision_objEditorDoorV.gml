if on=0 or index>6 exit
with other {
i=0
repeat (16) {
my_id=instance_create(x,y+i*2,objWoodDebris)
if x<objMethExplosion.x my_id.hspeed=-random(4) else my_id.hspeed=random(4)
i+=1
}
instance_destroy()
}
