if image_index<24 {
if image_index<12 {
global.shake=5
if round(random(3))=2 {
my_id=instance_create(x+scrPosDirX(2,5,image_angle)-1+random(2),y+scrPosDirY(2,5,image_angle)-1+random(2),objSplat)
my_id.image_angle=random(360)
my_id.direction=image_angle+(-120+random(60))*left
my_id.speed=1.5+random(3)
}
if round(random(3))=2  {
my_id=instance_create(x+scrPosDirX(2,5,image_angle)-1+random(2),y+scrPosDirY(2,5,image_angle)-1+random(2),objSmudge)
my_id.direction=image_angle+(-120+random(60))*left
my_id.image_angle=my_id.direction
my_id.speed=1.5+random(3)
}
if round(random(12))=2  {
my_id=instance_create(x+scrPosDirX(2,5,image_angle)-1+random(2),y+scrPosDirY(2,5,image_angle)-1+random(2),objIntestine)
my_id.direction=image_angle+(-120+random(60))*left
my_id.image_angle=my_id.direction
my_id.speed=1.5+random(3)
}
} else {if !sound_isplaying(sndChainsawExecution2) sound_stop(sndChainsawExecution2)}
image_index+=0.2
} else {
scrPlayerExecuteFinish()
instance_destroy()
}

if round(image_index)>=19  and dead=0 {
dead=1
sound_play(sndBoxingBag)
my_id=instance_create(x+scrPosDirX(9,5,image_angle),y+scrPosDirY(9,5,image_angle),objDeadBody)
my_id.sprite_index=sprEGangFatDeadSwan
if sprite_index=sprEMafiaFatDieSwan my_id.sprite_index=sprEMafiaFatDeadSwan
my_id.image_index=0
my_id.image_angle=image_angle
my_id.direction=image_angle
my_id.speed=1.5
my_id.friction=0.15
my_id.image_yscale=left
}
