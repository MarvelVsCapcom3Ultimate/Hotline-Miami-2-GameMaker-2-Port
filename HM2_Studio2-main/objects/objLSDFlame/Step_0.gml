image_blend=merge_color(merge_color(c_gray,c_black,random(1)),make_color_hsv(random(255),random(255),255),amount)
if image_index<8 image_index+=0.25+random(0.25) else {
instance_destroy()
my_id=instance_create(x,y,objLSDPop)
my_id.speed=speed
my_id.direction=direction-10+random(20)
my_id.friction=0.1
my_id.amount=amount
}
if round(random(12))=2 {
my_id=instance_create(x,y,objLSDPop)
my_id.speed=speed
my_id.direction=direction-10+random(20)
my_id.friction=0.1
my_id.amount=amount
//my_id.friction=0.2
}
