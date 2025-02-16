masks[1]=1
masks[0]=1
masks[2]=1
current=0
dir=0
addx=-700
alpha=1
scale=1
name[0]="JAKE"
name[1]="IRVIN"
name[2]="DALLAS"
//name[2]="???"
//name[3]="???"
features[0]="LETHAL THROWS"
features[1]="INVINCIBLE"
features[2]="RANDOM PERK"
//features[2]="???"
//features[3]="???"
i=0
repeat (8) {
line[i]=0
i+=1
}
on=1
surf=surface_create(__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 ))
__view_set( e__VW.XView, 0, objCobraCar.x-__view_get( e__VW.WView, 0 )/2 )
if objCobraCar.image_angle=180 __view_set( e__VW.HView, 0, objCobraCar.y+__view_get( e__VW.HView, 0 )*0.8 ) else __view_set( e__VW.YView, 0, objCobraCar.y-__view_get( e__VW.HView, 0 )*0.8 )
objPlayerCobra.active=0
global.bloodsurfaces=0
global.maskindex=0
global.maskon=1
