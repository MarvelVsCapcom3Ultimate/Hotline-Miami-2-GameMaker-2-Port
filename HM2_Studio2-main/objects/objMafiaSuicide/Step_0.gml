if state=0 {
if objPlayer.x<288 {
if objPlayer.sprite_index=sprSonWalkClub {
objEffector.whitealpha=1
objPlayer.sprite_index=sprSonWalkUnarmed
sound_play(sndLSDBell)
}
}
if objPlayer.y<y+96 {
objPlayer.active=0
objPlayer.aimon=0
objPlayer.dir=point_direction(objPlayer.x,objPlayer.y,x,y)
if y<objPlayer.y-48 {
y+=1.5
image_index+=0.15
legindex+=0.25
image_angle=scrRotate(image_angle,point_direction(x,y,objPlayer.x,objPlayer.y),5)
} else {state=1 sprite_index=sprEMafiaHandShotgun image_index=0}
scrCameraPan(x,y)
}
}

if state=1 {
image_angle=scrRotate(image_angle,point_direction(x,y,objPlayer.x,objPlayer.y),5)
if image_index<5 image_index+=0.15 else {state=2 objPlayer.active=1 objPlayer.aimon=1}
}


