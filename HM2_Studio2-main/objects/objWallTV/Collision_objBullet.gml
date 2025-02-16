if sprite_index=sprWallTVBreak exit
image_xscale=3
image_yscale=3
global.my_id=id
bullets=0
with objBullet {
if place_meeting(x,y,global.my_id) {
global.my_id.bullets+=1
my_id=instance_create(x,y,objSmokeHit)
my_id.color1=c_gray
my_id.color2=c_dkgray
my_id.image_angle=image_angle
my_id.direction=image_angle
my_id.speed=random(1)
instance_destroy()
alert=1
}
}
image_xscale=1
image_yscale=1
if sprite_index=sprELisWallTV {
global.shake=3
sound_play(sndBottleBreak)
sound_play(sndTaser)
sprite_index=sprWallTVBreak
i=0
repeat (12) {
my_id=instance_create(x+lengthdir_x(5,image_angle-45+i*(90/12)),y+lengthdir_y(5,image_angle-45+i*(90/12)),objTVShards)
my_id.direction=image_angle-45+i*(90/12)
my_id.speed=1+random(3)
i+=1
}
} 
