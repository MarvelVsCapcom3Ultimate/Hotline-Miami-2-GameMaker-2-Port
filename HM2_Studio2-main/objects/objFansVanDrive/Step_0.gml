if room=rmFansLevel2Floor1 {
scrCameraPan(x,y+__view_get( e__VW.HView, 0 )*0.3)
scrCameraPan(x,y+__view_get( e__VW.HView, 0 )*0.3)
scrCameraPan(x,y+__view_get( e__VW.HView, 0 )*0.3)
if x<650 {
friction=0.25
image_angle+=speed*0.025
}
if speed=0 {
if wait>0 wait-=1 else {
with objHenchmanCouch {
sprite_index=sprHenchmanCouch
image_speed=0.15
wait=30
}
instance_destroy()
my_id=instance_create(x,y,objFansVan)
my_id.bottom.image_angle=image_angle
my_id.image_angle=image_angle
instance_create(x,y,objMaskMenu)
}
}
}
