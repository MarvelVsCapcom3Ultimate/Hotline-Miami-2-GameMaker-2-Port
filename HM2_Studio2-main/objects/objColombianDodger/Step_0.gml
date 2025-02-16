if scrIsDodging(sprite_index) {
if !place_meeting(x,y,objBullet) {
if image_index<15 image_index+=0.25 else {
if object_index=objColombianDodger sprite_index=sprColombianDodgerWalk
legindex=0
} 
} else {
if image_index<3 image_index+=0.5
}
exit
} 

if sprite_index=sprColombianDodgerStunned {
legindex=0
if image_index<5 image_index+=0.25 else {
sprite_index=sprColombianDodgerWalk
image_index=0
}
exit
}

if x<0 hspeed=abs(hspeed)
if x>room_width hspeed=-abs(hspeed)
if y<0 vspeed=abs(vspeed)
if y>room_height vspeed=-abs(vspeed)
if sprite_index=sprColombianWalkUnarmed nothing=0 else global.factor+=sign(alert)
scrMoveSolidOn()
//if sprite_index=sprEGangWalkUnarmed scrGoGetWeapon()
if !place_free(x+hspeed*3,y+vspeed*3) {
if !place_free(x+hspeed*3,y) hspeed=-hspeed
if !place_free(x,y+vspeed*3) vspeed=-vspeed
}
if path_index>0 {
if path_position=1 path_end()
} else {if killed=0 image_speed=speed*0.1}
scrMoveSolidOff()
if !instance_exists(objPlayer) {alert=0 speed=0 exit}

scrDodgerStep()
if scrIsAttacking(sprite_index) image_speed=0.5 else {if path_index>=0 image_speed=path_speed*0.1 else image_speed=speed*0.1}

//if scrIsShooting(sprite_index) image_speed=0.25 else image_speed=speed*0.2
