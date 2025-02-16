if on=0 exit 
if place_meeting(x,y+8,objSon) {
on=0
wait=30
objPlayer.aimon=0
objPlayer.active=0
objPlayer.dir=90
objPlayer.image_index=0
objPlayer.legindex=0
objPlayer.sprite_index=sprSonTurnOnWater
objPlayer.x=365
objPlayer.y=258
}
