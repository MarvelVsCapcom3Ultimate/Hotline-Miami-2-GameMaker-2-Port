if state=0 {
if objPlayer.y>488 and objPlayer.x>360 and objPlayer.x<440 {
objPlayer.active=0
objPlayer.aimon=0
scrGetMessage(state)
state+=1
}
}

if state>0 and state<11 {
objPlayer.dir=scrRotate(objPlayer.dir,point_direction(objPlayer.x,objPlayer.y,x,y),10)
if !instance_exists(objConversation) {
scrGetMessage(state)
state+=1
}
}

if state=11 {
if !instance_exists(objConversation) {
objPlayer.active=1
objPlayer.aimon=1
global.done=1
instance_create(x,y,objLevelCleared)
state=12
}
}



if state>0 {
if instance_exists(objConversation) {
if objEffector.sprite=sprFaceSaunaGangster scrCameraPan(x+40,y) else scrCameraPan(objPlayer.x+40,objPlayer.y)
}
with objEnemy {
my_id=instance_create(x,y,objCasinoEnemy)
my_id.sprite_index=sprite_index
my_id.image_index=image_index
my_id.dir=direction
with my_id {
if x>400 scrGoTo(path,480-random(80),408+random(60)) else scrGoTo(path,400-random(80),408+random(60))
}
instance_destroy()
}
}
