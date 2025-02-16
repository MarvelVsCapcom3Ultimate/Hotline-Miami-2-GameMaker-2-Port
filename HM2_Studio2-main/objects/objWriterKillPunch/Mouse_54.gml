if image_index<targetindex exit
if cpr=1 exit
if hits<3 {
body=instance_create(x,y,objKnockedOut)
if sprite=sprEMafiaDieWriter body.sprite_index=sprEMafiaGetUp
if sprite=sprEGangDieWriter body.sprite_index=sprEGangGetUp
body.image_angle=image_angle
body.dead=0
body.enemyx=enemyx
body.enemyy=enemyy
} else {
body=instance_create(x,y,objDeadBody)
body.sprite_index=sprite
body.image_index=index
body.image_angle=image_angle
if hits>5 {kills+=1 body.dead=1} else body.dead=0
}
scrPlayerExecuteFinish()
if body.dead=1 objPlayer.amount=1
instance_destroy()
