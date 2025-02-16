image_index+=path_speed*0.1
legindex+=path_speed*0.15

if path_position=1 {
path_end()
image_index=0
legindex=0
image_angle=targetangle
} else {
image_angle=direction
}

if !path_exists(path_index) and on=0 {
scrRotate(image_angle,targetangle,5)
}

if on=1 and (instance_number(objColombianBoss)+instance_number(objColombianNPC)+instance_number(objColombianHenchman))>0 {
if ammo>0 {
direction=targetangle+lengthdir_x(diramount,dir)
dir+=diradd
angle=direction
scrNPCShoot(objBullet)
}
}
