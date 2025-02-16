if on=1 {
if point_distance(x,y,objPlayer.x,objPlayer.y)<64 {
if objPlayer.active=1 {
objPlayer.active=0
objPlayer.aimon=0
objPlayer.legindex=0
objPlayer.image_index=0
objPlayer.sprite_index=sprHenchmanSleepy
my_id=instance_create(objPlayer.x-8,objPlayer.y+4,objMoneyBag)
my_id.on=0
}
if objEffector.fade=0 {
objEffector.next=1
objEffector.fade=1
objEffector.nextroom=rmHighway
objEffector.newsong=0
objEffector.song=""
objEffector.stopsong=1
} 
objEffector.amount+=14.5
if objPlayer.image_index<35 objPlayer.image_index+=0.15
}
}
