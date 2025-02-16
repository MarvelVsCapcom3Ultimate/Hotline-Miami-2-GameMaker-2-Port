masks[1]=1
masks[0]=1
masks[2]=1
current=0
dir=0
addx=-700
alpha=1
scale=1
name[0]="BODYGUARD"
name[1]="DIRTY HANDS"
name[2]="BLOODLINE"
//name[2]="???"
//name[3]="???"
features[0]="CAREFULLY TRAINED"
features[1]="KILLING PUNCHES"
features[2]="FIRE POWER"
//features[2]="???"
//features[3]="???"
i=0
repeat (8) {
line[i]=0
i+=1
}
on=1
surf=surface_create(__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 ))
__view_set( e__VW.XView, 0, objSonCar.x-__view_get( e__VW.WView, 0 )/2 )
if objSonCar.image_angle=180 __view_set( e__VW.HView, 0, objSonCar.y+__view_get( e__VW.HView, 0 )*0.8 ) else __view_set( e__VW.YView, 0, objSonCar.y-__view_get( e__VW.HView, 0 )*0.8 )
global.bloodsurfaces=0
