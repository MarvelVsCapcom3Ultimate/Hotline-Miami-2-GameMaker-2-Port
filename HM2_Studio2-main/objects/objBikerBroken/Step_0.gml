if state=1 {
if player.y>248 {player.image_angle=90 player.y-=2 player.image_index+=0.15 player.legindex+=0.25} else {
if player.x<348 {player.image_angle=scrRotate(player.image_angle,0,10) player.x+=2 player.image_index+=0.15 player.legindex+=0.25} else state=2
}
scrCameraPan(player.x,player.y)
}

if state=2 {
player.image_angle=scrRotate(player.image_angle,270,10)
if player.image_angle=270 {player.sprite_index=sprWriterSitDown player.image_index=0 state=3}
}

if state=3 {
if player.image_index<5 player.image_index+=0.2 else state=4
}

if state>3 and state<12 {
if !instance_exists(objConversation) {
scrGetMessage(state-4)
state+=1
} 
}

if state=12 {
if !instance_exists(objConversation) {
if player.sprite_index=sprWriterSitDown or player.sprite_index=sprWriterSitTalk or player.sprite_index=sprWriterSitWrite {
if player.sprite_index=sprWriterSitTalk or player.sprite_index=sprWriterSitWrite {player.sprite_index=sprWriterSitDown player.image_index=5}
if player.image_index>0.2 player.image_index-=0.2 else player.sprite_index=sprWriterWalkUnarmed
}
if player.sprite_index=sprWriterWalkUnarmed {
if player.x>objPlayer.x {
if player.image_angle=180 {
player.x-=2 
player.image_index+=0.15 
player.legindex+=0.25
} else player.image_angle=scrRotate(player.image_angle,180,10)
} else {
if player.y<objPlayer.y player.y+=2 else state=13
player.image_index+=0.15 
player.legindex+=0.25
player.image_angle=scrRotate(player.image_angle,270,10)
}
}
}
}

if state=13 {
objPlayer.active=1
objPlayer.dir=player.image_angle
objPlayer.aimon=1
objPlayer.visible=1
with player instance_destroy()
state=14
}

if instance_exists(objConversation) {
if objConversation.sprite=sprFaceWriter {scrCameraPan(player.x,player.y) player.sprite_index=sprWriterSitTalk player.image_index+=0.1} else {player.sprite_index=sprWriterSitWrite player.image_index+=0.125}
if objConversation.sprite=sprFaceBiker {scrCameraPan(objBikerBroken.x,objBikerBroken.y) image_index+=0.1} 
} else {
image_index=0
}
