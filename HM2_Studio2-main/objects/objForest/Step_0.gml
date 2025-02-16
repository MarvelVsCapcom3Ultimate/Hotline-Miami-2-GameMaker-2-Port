if reload1>0 reload1-=1 else {
my_id=instance_create(room_width+64,room_height-random(32),objNickePalmTree)
my_id.hspeed=-3-random(0.2)
reload1=30+random(50)
my_id.depth=-(abs(my_id.hspeed)-3)*10
if instance_exists(objJungleNightBG) my_id.image_blend=merge_color(c_teal,c_aqua,0.3+(abs(my_id.hspeed)-3)*2)
if instance_exists(objJungleDayBG) my_id.image_blend=merge_color(c_teal,c_aqua,0.3+(abs(my_id.hspeed)-3)*2)//my_id.image_blend=merge_color(c_maroon,c_red,0.5+(abs(my_id.hspeed)-3)*2)
if instance_exists(objJungleEveningBG) my_id.image_blend=merge_color(c_fuchsia,c_red,0.3+(abs(my_id.hspeed)-3)*2)
}

if reload2>0 reload2-=1 else {
my_id=instance_create(room_width+80,room_height-32-random(32),objNickeBigTree)
my_id.hspeed=-1-random(0.3)
reload2=50+random(40)
my_id.depth=-(abs(my_id.hspeed)-1)*10+3
if instance_exists(objJungleNightBG) my_id.image_blend=merge_color(c_navy,c_teal,0.2+(abs(my_id.hspeed)-1)*2)
if instance_exists(objJungleDayBG) my_id.image_blend=merge_color(c_fuchsia,c_orange,0.6+(abs(my_id.hspeed)-1)*2)
if instance_exists(objJungleEveningBG) my_id.image_blend=merge_color(c_fuchsia,c_yellow,0.2+(abs(my_id.hspeed)-1)*2)
}

if reload3>0 reload3-=1 else {
my_id=instance_create(room_width+64,room_height-32-random(16),objNickeGreenery)
my_id.hspeed=-3-random(0.2)
reload3=20+random(30)
my_id.depth=-(abs(my_id.hspeed)-3)*10-2
if instance_exists(objJungleNightBG) my_id.image_blend=merge_color(c_teal,c_aqua,0.3+(abs(my_id.hspeed)-3)*3)
if instance_exists(objJungleDayBG) my_id.image_blend=merge_color(c_maroon,c_red,0.5+(abs(my_id.hspeed)-3)*3)
if instance_exists(objJungleEveningBG) my_id.image_blend=merge_color(c_orange,c_olive,0.3+(abs(my_id.hspeed)-3)*3)
}
