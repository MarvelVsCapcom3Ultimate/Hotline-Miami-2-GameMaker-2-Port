if sprite_index=sprColombianWalkUnarmed nothing=0 else global.factor+=sign(alert)
if path_index>0 {
image_speed=0.2
if path_position=1 path_end()
} else {if killed=0 image_speed=speed*0.1}
if !instance_exists(objPlayer) {alert=0 speed=0 exit}
if instance_exists(objSon) {if objPlayer.style=4 {scrPatrol() exit}}
scrSoldierPatrolStep()
