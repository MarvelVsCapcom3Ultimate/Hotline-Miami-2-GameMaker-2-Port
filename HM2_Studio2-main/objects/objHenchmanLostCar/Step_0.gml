if state=0 {
if objPlayer.y>360 {
if objPlayer.sprite_index=sprHenchmanWalkUnarmed {
objPlayer.active=0
objPlayer.aimon=0
objPlayer.sprite_index=sprHenchmanShakeHead
objPlayer.legindex=0
objPlayer.image_index=0
objPlayer.image_speed=0
}
with objPlayer dir=scrRotate(dir,point_direction(x,y,objHenchmanLostCar.x,objHenchmanLostCar.y),5)
scrCameraPan(x,y)
if objPlayer.image_index<17.25 objPlayer.image_index+=0.1 else objPlayer.image_index=14
objEffector.fade=1
objEffector.next=1
objEffector.newsong=1
objEffector.song = Sexualizer;
objEffector.nextroom=rmScene
objEffector.amount+=14.5
global.level=rmFansLevel2Floor1
global.title="EXECUTION"
global.subtitle="EIGHTH SCENE"
}
}
