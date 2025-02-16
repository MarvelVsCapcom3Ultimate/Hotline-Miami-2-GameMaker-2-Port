surf1=surface_create(room_width,room_height) 
surf2=surface_create(room_width,room_height) 
dir=0
bgcolor=__background_get_colour( )
alt[0]="NEW GAME"
alt[1]="CONTINUE"
alt[2]="EDITOR"
alt[3]="QUIT GAME"
altrepeat[0]=3
altrepeat[1]=3
altrepeat[2]=3
altrepeat[3]=3
select=0
reload=0
reload2=0

bgx1=0
bgx2=0

alpha1=1
alpha2=1

repeat (7) instance_create(random(room_width)+32,276-random(20),objPalmTree)
repeat (5) instance_create(random(room_width),0,objHouses)
fade=0
scrInitMusic()
scrPlaySong(beams);
global.hud=1
global.floorbloods=0

scrReplaceSounds()

