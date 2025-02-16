if round(random(100))=2 instance_destroy()
if life>0 life-=1 else instance_destroy()
image_blend=merge_color(merge_color(merge_color(c_red,c_yellow,random(1)),c_black,random(1)),make_color_hsv(h,random(255),255),amount)
if h<250 h+=5 else h=0
image_angle=angle+dir
image_xscale+=0.05
image_yscale+=0.05

