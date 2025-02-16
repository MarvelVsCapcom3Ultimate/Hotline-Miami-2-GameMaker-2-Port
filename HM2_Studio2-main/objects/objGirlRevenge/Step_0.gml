if state=0 {
if instance_number(objEnemy)+instance_number(objKnockedOut)+instance_number(objKeys)=0
with objEditorDoorH {
if solid=1 and x=640 {
if place_meeting(x,y+4,objPigButcher) {
if objPlayer.x>x+15 and objPlayer.x<x+19 {
objPigButcher.active=0
objPigButcher.x=x+16
objPigButcher.y=y+11
objPigButcher.image_index=0
objPigButcher.aimon=0
objPigButcher.left=1
with objPlayer scrDropWeapon()
objPigButcher.sprite_index=sprPigUnlock
objPigButcher.dir=90
objGirlRevenge.state=1
objPigButcher.legindex=0
mp_grid_clear_all(global.grid)
mp_grid_add_instances(global.grid,objPoliceInterrogationTable,1)
mp_grid_add_instances(global.grid,objWall,1)
}
}
}
}
}

if state=1 {
if objPigButcher.image_index<10 objPigButcher.image_index+=0.2 else {with objEditorDoorH {if solid=1 and x=640 solid=0} objGirlRevenge.state=2 objPigButcher.sprite_index=sprPigWalkUnarmed}
}

if state>1 and instance_exists(objPlayerDead) {
if objPlayerDead.sprite_index=sprPigDeadShot {
objPlayerDead.speed=2.5
objPlayerDead.sprite_index=sprPigDeadGirl
objPlayerDead.image_yscale=1
}
}

if state>1 and state<10 {
scrCameraPan((objGirlRevenge.x+objPlayer.x)/2,(objGirlRevenge.y+objPlayer.y)/2)
}

if state=2 {
if image_index<8 image_index+=0.2
if image_index>3 {if objPoliceChairWeigh.sprite_index=sprPoliceChairWeigh {sound_play(sndPickUpWeapon) objPoliceChairWeigh.sprite_index=sprPoliceFallChair objPoliceChairWeigh.image_index=0}}
if image_index>5 {with objChairWood {if place_meeting(x,y,objGirlRevenge) {solid=0 vspeed=-2 friction=0.25}} if objFatPoliceInterrogate.image_index<4 objFatPoliceInterrogate.image_index+=0.2 image_angle=scrRotate(image_angle,point_direction(x,y,objPlayer.x,objPlayer.y),10)}
if objPigButcher.y>304 {objPigButcher.y-=1 objPigButcher.image_index+=0.15 objPigButcher.legindex+=0.2 objPigButcher.legdir=90 with objPigButcher dir=scrRotate(dir,point_direction(x,y,objGirlRevenge.x,objGirlRevenge.y),10)} else state=3
}

if state=3 {
if image_index<10 image_index+=0.2 else {image_index=0 sprite_index=sprVictim5WalkGun state=4}
if image_index>=9 and shot=0{
bgm_Stop(global.currentsong) 
objPlayer.energie=0
sound_play(snd9mm)
shot=1
my_id=instance_create(x+lengthdir_x(16,image_angle),y+lengthdir_y(16,image_angle),objEBullet)
my_id.direction=image_angle
my_id.speed=12
my_id.image_angle=image_angle
}
}

if state=4 {
//if !place_free(x,y) show_message("Kollision")
scrGoTo(path,objPlayer.x+lengthdir_x(12,objPlayer.image_angle-180),objPlayer.y+lengthdir_y(12,objPlayer.image_angle-180))
state=5
}

if state=5 {
if path_position=1 {
path_end()
sprite_index=sprVictim5AttackGun
image_index=0
state=6
} else {
image_angle=scrRotate(image_angle,direction,10)
image_index+=0.15
}
}

if state=6 {
scrGetMessage(0)
state=7
}

if state=7 {
image_angle=scrRotate(image_angle,point_direction(x,y,objPlayer.x,objPlayer.y),10)
if !instance_exists(objConversation) state=8
}

if state=8 {
image_angle=scrRotate(image_angle,point_direction(x,y,objPlayer.x,objPlayer.y),10)
if image_index>5 and shot=1 {
sound_play(snd9mm) shot+=1
with objPlayerDead scrBloodShotSmoke(x+scrPosDirX(6,0,image_angle),y+scrPosDirY(6,0,image_angle),1,image_angle)
}
if image_index>8 and shot=2 {
sound_play(snd9mm) shot+=1
with objPlayerDead scrBloodShotSmoke(x+scrPosDirX(3,6,image_angle),y+scrPosDirY(3,6,image_angle),1,image_angle)
}
if image_index>10 and shot=3 {
sound_play(snd9mm) shot+=1
with objPlayerDead scrBloodShotSmoke(x+scrPosDirX(-4,0,image_angle),y+scrPosDirY(-4,0,image_angle),1,image_angle)
}
if image_index>13 and shot=4 {
sound_play(snd9mm) shot+=1
with objPlayerDead scrBloodShotSmoke(x+scrPosDirX(5,-7,image_angle),y+scrPosDirY(5,-7,image_angle),1,image_angle)
}
if image_index>15 and shot=5 {
sound_play(snd9mm) shot+=1
with objPlayerDead scrBloodShotSmoke(x+scrPosDirX(0,0,image_angle),y+scrPosDirY(0,0,image_angle),1,image_angle)
}
if image_index>33 and shot=6 {
sound_play(snd9mm) shot+=1
with objPlayerDead scrBloodShotSmoke(x+scrPosDirX(17,2,image_angle),y+scrPosDirY(17,2,image_angle),1,image_angle)
}
if image_index<36 image_index+=0.2 else {state=9 wait=60}
objPlayer.image_index=image_index
}

if state=9 {
if room=rmPoliceStationFloor2MovieSet state=10
}

if state=10 {
if wait>0 wait-=1 else {
sound_play(sndDirector)
scrPlaySong(Videodrome); 
scrSongVolume(1)
scrGetMessage(0)
state=11
wait=30
}
}

if state=11 {
if instance_exists(objConversation) scrCameraPan(objDirector.x,objDirector.y)
if !instance_exists(objConversation) {
scrCameraPan(objPlayer.x+48,objPlayer.y)
if wait>0 wait-=1 else {state=12 instance_create(264,200,objDirectorWalk)}
}
}

if state=12 {
scrCameraPan(objPlayer.x+48,objPlayer.y) 
if objDirectorWalk.y<330 {
objDirectorWalk.y+=1
objDirectorWalk.image_index+=0.15
} else {
state=13
scrGetMessage(1)
}
}

if state=13 {
with objDirectorWalk {
image_angle=scrRotate(image_angle,point_direction(x,y,objPlayer.x,objPlayer.y),10)
}
if !instance_exists(objConversation) state=14
}

if state=14 {
scrGetMessage(2)
state=15
}

if state=15 {
if instance_exists(objConversation) {
if vol>0 vol-=0.01
scrSongVolume(vol)
}
if !instance_exists(objConversation) {
if done=0 {
done=1
objEffector.fade=1
objEffector.next=1
objEffector.nextroom=rmScore
global.level=rmPart
global.parttitle="RISING"
global.partsubtitle="Second Act"
with all persistent=0
with objDirector instance_destroy()
viewy=__view_get( e__VW.YView, 0 )
} 
objEffector.amount+=14.5
__view_set( e__VW.YView, 0, viewy-campos )
if camspeed<2 camspeed+=0.01
campos+=camspeed
vol=1-objEffector.amount*(1/180)
if vol>1 vol=1
if vol<0 vol=0
scrSongVolume(vol)
}
}

if state=16 {

}
