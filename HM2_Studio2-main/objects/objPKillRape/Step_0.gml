if image_index<13 image_index+=0.125 else {
if wait>0 wait-=1 else {if on=1 {on=0 viewx=__view_get( e__VW.XView, 0 ) viewy=__view_get( e__VW.YView, 0 ) room_goto_next()}}
}
if stage=2 {
instance_create(472,__view_get( e__VW.YView, 0 )-24,objDirectorWalk)
stage=3
}
