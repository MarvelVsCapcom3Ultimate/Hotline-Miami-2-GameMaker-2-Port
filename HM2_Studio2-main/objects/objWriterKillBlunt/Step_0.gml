if image_index<targetindex {
previndex=image_index
image_index+=0.5
if image_index>=4 and previndex<4 {
sound_play(sndPunch)
hits+=1
if hits>1 {
sound_play(sndHit)
repeat (2+random(3)) {
my_id=instance_create(x+lengthdir_x(17,image_angle)-1+random(2),y+lengthdir_y(17,image_angle)-1+random(2),objBloodSquirt)
my_id.image_angle=image_angle-120+random(240)
}
instance_create(x+lengthdir_x(17,image_angle),y+lengthdir_y(17,image_angle),objBigBlood)
}
}
} else {
if hits<=1 {
image_index=0 targetindex=0
} else {
my_id=instance_create(x,y,objDeadBody)
my_id.image_angle=image_angle
my_id.sprite_index=sprite
my_id.image_index=index
instance_destroy()
kills+=1
scrPlayerExecuteFinish()
}
}
