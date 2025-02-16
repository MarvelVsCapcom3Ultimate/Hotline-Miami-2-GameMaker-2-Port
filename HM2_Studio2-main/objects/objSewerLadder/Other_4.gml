if place_meeting(x,y,objPlayer) {
objPlayer.x=x-16
objPlayer.active=1
objPlayer.aimon=1
if objPlayer.object_index=objPlayerZebra objPlayer.sprite_index=sprZebraWalkUnarmed
if objPlayer.object_index=objPlayerSwanChainsaw objPlayer.sprite_index=sprSwanWalkChainsaw
if objPlayer.object_index=objPlayerBear {if objPlayer.special=0 objPlayer.sprite_index=sprBearWalkUnarmed else objPlayer.sprite_index=sprBearWalkSpecial}
if objPlayer.object_index=objPlayerTiger objPlayer.sprite_index=sprTigerWalkUnarmed
}
