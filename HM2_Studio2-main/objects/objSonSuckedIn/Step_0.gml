if sprite_index=sprSonDragged1 {
if image_index<5 image_index+=0.5 else {sprite_index=sprSonDragged2 image_speed=0.2 wait=80}
}

if sprite_index=sprSonDragged2 {
hspeed=1
motion_add(point_direction(x,y,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-104,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )*0.65),0.1)
if speed>0.5 speed=0.5
image_angle=direction-180
if wait>0 wait-=1 else {sprite_index=sprSonDragged3 image_index=0 image_speed=0}
}

if sprite_index=sprSonDragged3 {
motion_add(point_direction(x,y,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-104,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )*0.65),0.2)
if speed>4 speed=4
if x>__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-76 instance_destroy()
if image_index<5 image_index+=0.15 else image_index=3
}
