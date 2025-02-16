if round(random(80))=2 targetdir=choose(random(360),point_direction(x,y,room_width/2,room_height/2),point_direction(x,y,room_width/2,room_height/2))

if image_angle<targetdir-10 image_angle+=10
if image_angle>targetdir+10 image_angle-=10

direction=image_angle
