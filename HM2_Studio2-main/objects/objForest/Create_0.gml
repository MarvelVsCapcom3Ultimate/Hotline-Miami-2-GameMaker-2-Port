reload1=0
reload2=0
reload3=0
myx1=0
myx2=0

repeat (3) {
my_id=instance_create(random(room_width),room_height-random(32),objNickePalmTree)
my_id.hspeed=-3-random(0.2)
my_id.depth=-(abs(my_id.hspeed)-3)*10
if instance_exists(objJungleNightBG) my_id.image_blend=merge_color(c_teal,c_aqua,0.3+(abs(my_id.hspeed)-3)*2)
if instance_exists(objJungleDayBG) my_id.image_blend=merge_color(c_teal,c_aqua,0.3+(abs(my_id.hspeed)-3)*2)
if instance_exists(objJungleEveningBG) my_id.image_blend=merge_color(c_fuchsia,c_red,0.3+(abs(my_id.hspeed)-3)*2) 
}

repeat (8) {
my_id=instance_create(random(room_width),room_height-32-random(32),objNickeBigTree)
my_id.hspeed=-1-random(0.3)
my_id.depth=-(abs(my_id.hspeed)-1)*10+3
if instance_exists(objJungleNightBG) my_id.image_blend=merge_color(c_navy,c_teal,0.2+(abs(my_id.hspeed)-1)*2)
if instance_exists(objJungleDayBG) my_id.image_blend=merge_color(c_fuchsia,c_orange,0.6+(abs(my_id.hspeed)-1)*2)
if instance_exists(objJungleEveningBG) my_id.image_blend=merge_color(c_fuchsia,c_yellow,0.2+(abs(my_id.hspeed)-1)*2)
}

repeat (6) {
my_id=instance_create(random(room_width),room_height-32-random(16),objNickeGreenery)
my_id.hspeed=-3-random(0.2)
my_id.depth=-(abs(my_id.hspeed)-3)*10-2
if instance_exists(objJungleNightBG) my_id.image_blend=merge_color(c_teal,c_aqua,0.3+(abs(my_id.hspeed)-3)*3)
if instance_exists(objJungleDayBG) my_id.image_blend=merge_color(c_maroon,c_red,0.5+(abs(my_id.hspeed)-3)*3)
if instance_exists(objJungleEveningBG) my_id.image_blend=merge_color(c_orange,c_olive,0.3+(abs(my_id.hspeed)-3)*3)
}
