if state=2 {
objPlayer.active=0
objPlayer.aimon=0
if objPlayer.object_index=objPlayerZebra objPlayer.sprite_index=sprZebraClimbUp
if objPlayer.object_index=objPlayerSwanChainsaw objPlayer.sprite_index=sprSwanClimbUp
if objPlayer.object_index=objPlayerBear objPlayer.sprite_index=sprBearClimbUp
if objPlayer.object_index=objPlayerTiger objPlayer.sprite_index=sprTigerClimbUp
objPlayer.x=x+8
objPlayer.y=y
state=3
solid=0
}
