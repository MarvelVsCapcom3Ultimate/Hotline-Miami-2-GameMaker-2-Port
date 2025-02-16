if height>0 height-=0.25 else {
if drop=0 {
sound_play(sndBoxingBag)
i=0
repeat (3) {
if i=0 my_id=instance_create(x,y,objUzi)
if i=1 my_id=instance_create(x,y,objShotgun)
if i=2 my_id=instance_create(x,y,objMendoza)
my_id.direction=random(360)
my_id.speed=random(2)
my_id.friction=0.15
i+=1
}
drop=1
}
}
image_angle+=speed*3
