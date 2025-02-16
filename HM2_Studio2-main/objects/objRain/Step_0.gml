if room=rmCamp3Night number=20 else number=6
repeat (number) {
my_id=instance_create(__view_get( e__VW.XView, 0 )-30+random(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )+60),__view_get( e__VW.YView, 0 )-30+random(__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )+60),objRainDrop)
i=0
repeat areas {
if instance_exists(my_id) {
if my_id.x>areax1[i] and my_id.x<areax2[i] and my_id.y>areay1[i] and my_id.y<areay2[i] {
with my_id instance_destroy()
}
}
i+=1
}
}

with objRainDrop {
if height>0 height-=10 else {
instance_create(x,y,objRainHit)
instance_destroy()
}
}
