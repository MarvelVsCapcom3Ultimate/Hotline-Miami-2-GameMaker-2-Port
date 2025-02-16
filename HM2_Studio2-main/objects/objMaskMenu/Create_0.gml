masks = [true, true, true, true];
//if room=rmFansLevel2Floor1 {masks[2]=0 masks[3]=1}
current=0
dir=0
addx=-700
alpha=0
scale=1
name = ["COREY", "TONY", "ALEX & ASH", "MARK"];
features = ["ROLL UNDER BULLETS", "KILLING PUNCHES, NO WEAPONS", "CHAINSAW AND GUNS", "TWO MACHINE GUNS"];
i=0
repeat (8) {
line[i]=0
i+=1
}
on = true;
surf = surface_create(__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 ))
surface_set_target(surf)
draw_clear_alpha(c_black,0)
surface_reset_target()
if room=rmFansLevel2Floor1 nothing=1 else {
__view_set( e__VW.XView, 0, objFansVan.x-__view_get( e__VW.WView, 0 )/2 )
if objFansVan.image_angle=180 __view_set( e__VW.HView, 0, objFansVan.y+__view_get( e__VW.HView, 0 )*0.8 ) else __view_set( e__VW.YView, 0, objFansVan.y-__view_get( e__VW.HView, 0 )*0.8 )
}

global.bloodsurfaces=0
