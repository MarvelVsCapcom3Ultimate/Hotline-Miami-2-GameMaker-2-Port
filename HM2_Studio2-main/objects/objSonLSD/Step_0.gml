previousx=x
previousy=y
//if global.xbox=1 scrXboxPlayerMouseHouse()
walkdir+=2
global.test=0

scrAim()

xview=__view_get( e__VW.XView, 0 )
yview=__view_get( e__VW.YView, 0 )
if persistent=1 and objEffector.fade=1 {
if place_free(x+addx,y) x+=addx
if place_free(x,y+addy) y+=addy
if image_speed=0 and (abs(addx)>0 or abs(addy)>0) {
image_index+=0.15
legindex+=0.4
}
exit 
}

if active=1 scrPlayerMoveKeyboard()

if scrIsAttacking(sprite_index) {
global.spacex=lengthdir_x(12,dir)
global.spacey=lengthdir_y(12,dir)
with objEnemy {
if place_meeting(x,y,objPlayer) or place_meeting(x-global.spacex,y-global.spacey,objPlayer) {
scrEnemyDieMelee(object_index)
}
}
}

if room=rmLSDFloor3 {
if instance_number(objEnemy)+instance_number(objBoss)=0 {
if sprite_index=sprSonWalkUnarmedLSD nothing=1 else {
sprite_index=sprSonWalkUnarmedLSD 
objEffector.whitealpha=1
image_speed=0
}
}
}
