global.done=0
scrInitScore()
global.maskindex=0
global.maskon=1
with objBrokenTable {
image_yscale=-1+round(random(1))*2
image_angle=-10+random(20)
}
with objBrokenDiningTable {
image_yscale=-1+round(random(1))*2
image_angle=-4+random(8)
}
with objShell instance_destroy()