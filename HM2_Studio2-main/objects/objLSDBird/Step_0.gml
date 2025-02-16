direction+=-2+random(4)
image_angle=direction
speed*=1.04
image_xscale*=1.06
image_yscale=image_xscale
if wait>0 wait-=1 else {
if wait>-100 wait-=1 else instance_destroy()
if round(random(60))=2 instance_destroy()
}
