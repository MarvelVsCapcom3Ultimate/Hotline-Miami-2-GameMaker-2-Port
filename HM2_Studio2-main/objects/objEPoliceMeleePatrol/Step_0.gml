if x<0 hspeed=abs(hspeed)
if x>room_width hspeed=-abs(hspeed)
if y<0 vspeed=abs(vspeed)
if y>room_height vspeed=-abs(vspeed)
if sprite_index=sprEMafiaWalkUnarmed nothing=0 else global.factor+=sign(alert)
scrMoveSolidOn()
//if sprite_index=sprEGangWalkUnarmed scrGoGetWeapon()
if !place_free(x+hspeed*3,y+vspeed*3) {
if !place_free(x+hspeed*3,y) hspeed=-hspeed
if !place_free(x,y+vspeed*3) vspeed=-vspeed
}
if path_index>0 {
image_speed=0.2
if path_position=1 path_end()
} else {if killed=0 image_speed=speed*0.1 path_speed=0}
scrMoveSolidOff()
if !instance_exists(objPlayer) {alert=0 speed=0 exit}

scrEGangPatrolMeleeStep()

if scrIsAttacking(sprite_index) image_speed=0.5 else image_speed=(speed+path_speed)*0.1
