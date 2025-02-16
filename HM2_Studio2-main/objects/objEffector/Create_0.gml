scrAddCollisionCorners()
scrWallReplace()
alpha=1
coldir=0
amount=0
fade=0
my_y=0
global.dir=0
restart=0
update=0
dir=0
ammoy=-32
next=0
showfinished=0
image_speed=0.4
action=0
wait=0
phonex=0
global.loaded=0
global.paused=0
nextroom=room_next(room)
newsong=0
stopsong=0
song=-1
blackx=0
bamount=0
width=display_get_width()
height=display_get_height()
global.mousex=(display_mouse_get_x()-width*0.5)*(__view_get( e__VW.WView, 0 )/width)
global.mousey=(display_mouse_get_y()-height*0.5)*(__view_get( e__VW.HView, 0 )/height)
vlastx=__view_get( e__VW.XView, 0 )
vlasty=__view_get( e__VW.YView, 0 )
global.enemy=-1234
leveltitle=""
levelshow=240
gridon=0
uzisnd=0
next=0
text_y=0
tutorialtime=240
blink=0
lasttutorial=""
clear=0
global.shake=0
global.factor=0
if instance_exists(objEnemy) scrInitPathFinding()
if (instance_exists(objEnemy))
	clear = false;
sprite=sprMaskTiger
scorex=160
ammox=-160
combox=-160
sprite=-1234
scrInitNoise()
talked=0
whitealpha=0
if room=rmPoliceStationFloor2MovieSet whitealpha=1
scrGetFadeWait()
scratch=0
lastsprite=-1234
drawrestart=0
kills = 0;
killamount = 0;
roomkills = 0;
global.killamount = 99;
scrCreateOceanWaves()
if room=rmNightmareFloor2MovieSet whitealpha=1
