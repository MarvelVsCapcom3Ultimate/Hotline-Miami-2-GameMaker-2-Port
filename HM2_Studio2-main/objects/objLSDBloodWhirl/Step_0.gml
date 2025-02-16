if image_index<4 image_index+=0.5 
//image_angle=random(360)
image_xscale*=1.06
image_yscale=image_xscale
if image_xscale>10 and round(random(20))=2 instance_destroy()
//image_angle+=4
image_blend=merge_color(c_red,c_maroon,random(0.2))
