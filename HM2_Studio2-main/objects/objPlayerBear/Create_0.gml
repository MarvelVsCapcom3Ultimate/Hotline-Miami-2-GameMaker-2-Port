//if global.xbox=1 scrInitXboxButtons()
image_speed=0
currentweapon=0
dir=0
aimon=1
viewspeed=0
reload=0
light=0
legdir=0
legindex=0
left=1
ammo=0
energie=1
throwreload=0
//if global.controller=1 {instance_create(x,y,objPlayerController) instance_destroy()}
//scrInitThrowPos()
//scrInitMaskPos()
throwindex=0
//alarm[0]=18
last_sprite=sprite_index
maskon=0
maskindex=0
previousx=x
previousy=y
active=1
myxspeed=0
myyspeed=0
myspeed=0
scrInitKeyboard()
reload=0
wait=0
movex=0
movey=0
armangle=0
index=0
addangle=0
mags=0
ammo=0
if instance_exists(objEnemy) or instance_exists(objNextroom) or instance_exists(objElevator) {
sprite_index=sprBearWalkSpecial
ammo=64
mags=1
} else global.magammo=0
