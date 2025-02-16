if instance_number(objEnemy)+instance_number(objKnockedOut)=0 {
if objPlayer.y<0 {
objPlayer.active=0
objPlayer.y-=2
objPlayer.aimon=0
objPlayer.dir=90
objPlayer.image_index+=0.15
objPlayer.legindex+=0.15
if objEffector.fade=0 {
objEffector.fade=1
objEffector.newsong=1
objEffector.song=Dust
objEffector.next=1
objEffector.nextroom=rmScore
global.level=rmOceanSide
}
}
}
