if image_index>=10 and dead=0 {
sound_play(sndPunch)
sound_play(sndHit)
global.shake=5
repeat (2+random(1)) {
my_id=instance_create(x+scrPosDirX(21,-3,image_angle)-1+random(2),y+scrPosDirY(21,-3,image_angle)-1+random(2),objBloodSquirt)
my_id.image_angle=image_angle-120+random(240)
}
repeat (3) instance_create(x+scrPosDirX(21,-3,image_angle)-1+random(2),y+scrPosDirY(21,-3,image_angle)-1+random(2),objBigBlood)
dead=1
}

if image_index<17 image_index+=0.3 else {
my_id=instance_create(x+scrPosDirX(9,5,image_angle),y+scrPosDirY(9,5,image_angle),objDeadBody)
my_id.sprite_index=sprDogDeadBlunt
my_id.image_index=2
my_id.image_angle=image_angle
scrPlayerExecuteFinish()
instance_destroy()
}
