if on=0 exit
if place_meeting(x,y,objPlayer) and speed=0{
if objPlayer.active=1 {
hspeed=-2
alarm[0]=10
objPlayer.active=0
objPlayer.aimon=0
objPlayer.dir=270
objPlayer.left=1
objPlayer.sprite_index=sprSwan1HideClothes
objPlayer.legindex=0
}
}
