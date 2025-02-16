if image_index<targetindex exit
if hits<1 {
body=instance_create(x,y,objKnockedOut)
body.sprite_index=sprEMafiaGetUp
body.image_angle=image_angle
body.dead=0
} else {
body=instance_create(x,y,objDeadBody)
body.sprite_index=sprite
body.image_index=index
body.image_angle=image_angle
if hits>1 {kills+=1 body.dead=1} else body.dead=0
}
if body.dead=1 objPlayer.amount=1
instance_destroy()
scrPlayerExecuteFinish()
