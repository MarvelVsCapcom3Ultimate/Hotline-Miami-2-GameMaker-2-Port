if sprite_index=sprWriterKillPunch {
if image_index<targetindex {
previndex=image_index
image_index+=0.5
if image_index>=2 and previndex<2 {
sound_play(sndPunch)
hits+=1
}
if image_index>=6 and previndex<6 {
sound_play(sndPunch)
hits+=1
}
} else {
if hits<4 {image_index=targetindex if image_index=8 {image_index=0 targetindex=0}} else {
body=instance_create(x,y,objDeadBody)
body.sprite_index=sprite
body.image_index=15
body.image_angle=image_angle
kills+=1 
body.dead=1
scrPlayerExecuteFinish()
if body.dead=1 objPlayer.amount=1
instance_destroy()
}
}
}

if cpr>0 {
if hits>3 and sprite_index=sprWriterKillPunch {
if image_index=targetindex {
sprite_index=sprWriterCpr1
image_index=0
index=9
}
}
if sprite_index=sprWriterCpr1 {
if image_index<44 image_index+=0.15 else {
sprite_index=sprWriterCpr2
image_index=0
}
}
if sprite_index=sprWriterCpr2 {

if image_index<39 image_index+=0.15 else {
if cpr<2 {
image_index=0
cpr+=1
} else {
body=instance_create(x,y,objDeadBody)
body.sprite_index=sprite
body.image_index=index
body.image_angle=image_angle
if hits>5 {body.dead=1} else body.dead=0
scrPlayerExecuteFinish()
if body.dead=1 objPlayer.amount=1
instance_create(x,y,objAskForHelp)
instance_destroy()
}
}
}

}
