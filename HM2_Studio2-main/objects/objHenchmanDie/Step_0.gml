if sweep=1 {
with objPlayer {active=0 if x>248 {x-=3 dir=180 image_index+=0.15 legindex+=0.25}} 
dist=point_distance(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),x-__view_get( e__VW.WView, 0 )/2+64,y-__view_get( e__VW.HView, 0 )/2)
dir=point_direction(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),x-__view_get( e__VW.WView, 0 )/2+64,y-__view_get( e__VW.HView, 0 )/2)
__view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) + (lengthdir_x(dist*0.05,dir)) )
__view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) + (lengthdir_y(dist*0.05,dir)) )
if sweepwait>0 sweepwait-=1 else {objPlayer.active=1 sweep=0}
}
if done=1 {done=2 //with objPlayer visible=1 //{with objPlayer active=1} 
objEffector.fade=1 objEffector.next=1 objEffector.nextroom=rmScore global.level=rmPart global.parttitle="CLIMAX" global.partsubtitle="Third Act" global.done=1 exit}
if done=2 exit
if objPlayer.x>400 and objPlayer.x<540 and objPlayer.y>220 and objPlayer.y<288 {
dist=point_distance(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),x-__view_get( e__VW.WView, 0 )/2+64,y-__view_get( e__VW.HView, 0 )/2)
dir=point_direction(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),x-__view_get( e__VW.WView, 0 )/2+64,y-__view_get( e__VW.HView, 0 )/2)
__view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) + (lengthdir_x(dist*0.05,dir)) )
__view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) + (lengthdir_y(dist*0.05,dir)) )
with objPlayer active=0

if objPlayer.object_index=objPlayerZebra {
if objPlayer.x>x+16 {
objPlayer.x-=2 
objPlayer.legindex+=0.25
objPlayer.image_index+=0.15
objPlayer.dir=90
objPlayer.active=0
} else {objPlayer.visible=0 on=1 zebravisible=1}
if objPlayer.y>y+30 and objPlayer.x<516 {objPlayer.y-=1 objPlayer.dir=135}
if objPlayer.y<y+30 and objPlayer.x<516 {objPlayer.y+=1 objPlayer.dir=225}
with objPlayerZebra {
image_xscale=4
image_yscale=4
if place_meeting(x,y,objPipe) {
if !objPlayer.sprite_index=sprZebraWalkPipe scrPickupWeapon()
}
image_xscale=1
image_yscale=1
}
}

if objPlayer.object_index=objPlayerBear {
if objPlayer.x>x-24 {
objPlayer.x-=2 
objPlayer.legindex+=0.25
objPlayer.image_index+=0.15
objPlayer.dir=90
objPlayer.active=0
} else {objPlayer.visible=0 on=1 bearvisible=1}
if objPlayer.y>y+40 and objPlayer.x<516 {objPlayer.y-=1 objPlayer.dir=135}
if objPlayer.y<y+36 and objPlayer.x<516 {objPlayer.y+=1 objPlayer.dir=225}
}

if objPlayer.object_index=objPlayerSwanChainsaw {
if objPlayerSwanGun.active=1 {
with objPlayerSwanGun {path_end() speed=0 image_speed=0 scrDropWeapon()}
}
objPlayerSwanGun.active=0 
objPlayer.active=0
if swanpos=0 {
if objPlayerSwanGun.y<objPlayerSwanChainsaw.y-2 {
objPlayerSwanGun.y+=3 
objPlayerSwanGun.legindex+=0.25
objPlayerSwanGun.image_index+=0.15
objPlayerSwanGun.dir=270
}
if objPlayerSwanGun.y>objPlayerSwanChainsaw.y+2 {
objPlayerSwanGun.y-=3 
objPlayerSwanGun.legindex+=0.25
objPlayerSwanGun.image_index+=0.15
objPlayerSwanGun.dir=90
}
if objPlayerSwanGun.y<objPlayerSwanChainsaw.y-2 or objPlayerSwanGun.y>objPlayerSwanChainsaw.y+2 swanpos=0 else swanpos=1 
} else {
swanpos=1
if objPlayerSwanGun.x>x-2 or objPlayer.x>x+16 {
if objPlayer.x>x+16 {
objPlayer.x-=2 
objPlayer.legindex+=0.25
objPlayer.image_index+=0.15
objPlayer.dir=180
objPlayer.active=0
if objPlayer.y>y+49 and objPlayer.x<516 {objPlayer.y-=1 objPlayer.dir=135}
if objPlayer.y<y+47 and objPlayer.x<516 {objPlayer.y+=1 objPlayer.dir=225}
}

if objPlayerSwanGun.x>x-2 {
objPlayerSwanGun.x-=2 
objPlayerSwanGun.legindex+=0.25
objPlayerSwanGun.image_index+=0.15
objPlayerSwanGun.dir=180
objPlayerSwanGun.active=0
if objPlayerSwanGun.y>y+33 and objPlayerSwanGun.x<516 {objPlayerSwanGun.y-=1 objPlayerSwanGun.dir=135}
if objPlayerSwanGun.y<y+31 and objPlayerSwanGun.x<516 {objPlayerSwanGun.y+=1 objPlayerSwanGun.dir=225}
}
} else {objPlayer.visible=0 objPlayerSwanGun.visible=0 on=1 swanvisible=1}
}
}


if objPlayer.object_index=objPlayerTiger {
if objPlayer.x>500 {
objPlayer.active=0
objPlayer.x-=2
objPlayer.legindex+=0.25
objPlayer.image_index+=0.15} else on=1
}
}



if sprite_index=sprHenchmanBash1 {
if image_index>5 and bled=0 {
sound_play(sndHit)
sound_play(sndPunch)
repeat (2+random(3)) {
my_id=instance_create(x-2,y+20,objBloodSquirt)
my_id.image_angle=image_angle-120+random(240)
}
instance_create(x-2,y+20,objBigBlood)
bled=1
}
}

if sprite_index=sprHenchmanBash2 {
if image_index>1 and bled=1 {
sound_play(sndHit)
sound_play(sndPunch)
repeat (2+random(3)) {
my_id=instance_create(x-11,y+40,objBloodSquirt)
my_id.image_angle=image_angle-120+random(240)
}
bled=2
}
if image_index>5 and bled=2 {
sound_play(sndHit)
sound_play(sndPunch)
repeat (2+random(3)) {
my_id=instance_create(x-2,y+44,objBloodSquirt)
my_id.image_angle=image_angle-120+random(240)
}
instance_create(x-2,y+44,objBigBlood)
bled=3
}
}

if sprite_index=sprHenchmanBash3 {
if image_index>1 and bled=3 {
sound_play(sndHit)
sound_play(sndPunch)
repeat (2+random(3)) {
my_id=instance_create(x-2,y+20,objBloodSquirt)
my_id.image_angle=image_angle-120+random(240)
}
instance_create(x-2,y+20,objBigBlood)
bled=4
}
if image_index>14 and bled=4 {
sound_play(sndHit)
sound_play(sndPunch)
repeat (2+random(3)) {
my_id=instance_create(x-2,y+20,objBloodSquirt)
my_id.image_angle=image_angle-120+random(240)
}
instance_create(x-2,y+20,objBigBlood)
bled=5
}
if image_index>36 and bled=5 {
sound_play(sndHit)
sound_play(sndPunch)
repeat (2+random(3)) {
my_id=instance_create(x-2,y+20,objBloodSquirt)
my_id.image_angle=image_angle-120+random(240)
}
instance_create(x-2,y+20,objBigBlood)
bled=6
}
}
