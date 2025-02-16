if round(random(4))=2 {
my_id=instance_create(__view_get( e__VW.XView, 0 )-30+random(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )+60),__view_get( e__VW.YView, 0 )-30+random(__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )+60),objRainDrop)
my_id.height=10
my_id.image_blend=merge_color(c_lime,c_green,0.5)
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
if height>0 height-=2 else {
my_id=instance_create(x,y,objRainHit)
my_id.image_blend=merge_color(c_green,c_green,0.5)
instance_destroy()
}
}
