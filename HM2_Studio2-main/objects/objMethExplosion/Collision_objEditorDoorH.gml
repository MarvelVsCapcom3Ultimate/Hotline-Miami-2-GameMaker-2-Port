if on=0 or index>6 exit
with other {
i=0
repeat (16) {
my_id=instance_create(x+i*2,y,objWoodDebris)
if y<objMethExplosion.y my_id.vspeed=-random(4) else my_id.vspeed=random(4)
i+=1
}
instance_destroy()
}
