dir=image_angle
repeat (4) {
my_id=instance_create(x,y,objSplat)
my_id.direction=dir-45+random(90)
my_id.speed=2+random(2)
}
repeat (9) {
my_id=instance_create(x,y,objSmudge)
my_id.direction=dir-45+random(90)
my_id.speed=3+random(3)
my_id.image_angle=my_id.direction
}
repeat(3) {
my_id=instance_create(x-12+random(24),y-12+random(24),objBigBlood)
}

if sprite_index=sprEMafiaDeadShotgun or sprite_index=sprSoldierDeadShotgun or sprite_index=sprEGangDeadShotgun or sprite_index=sprPoliceDeadShotgun {
if image_index=1 or image_index=5 or image_index=8 {
repeat (5) {
my_id=instance_create(x-3+random(6),y-3+random(6),objIntestine)
my_id.direction=point_direction(x,y,my_id.x,my_id.y)
my_id.speed=1.5+random(1.5)
}
}
}

if sprite_index=sprEGangDeadShotgun or sprite_index=sprEMafiaDeadShotgun or sprite_index=sprPoliceDeadShotgun {
if image_index=4 {
i=0
repeat (7) {
my_id=instance_create(x+lengthdir_x(20,image_angle),y+lengthdir_y(20,image_angle),objBrains)
my_id.direction=point_direction(x,y,my_id.x,my_id.y)-20+random(40)
my_id.speed=2+random(2)
}
repeat (3) {
my_id=instance_create(x+lengthdir_x(20,image_angle),y+lengthdir_y(20,image_angle),objHeadPiece)
my_id.direction=point_direction(x,y,my_id.x,my_id.y)-10+random(20)
my_id.speed=1.5+random(1.5)
my_id.image_index=i
i+=1
}
}
}
