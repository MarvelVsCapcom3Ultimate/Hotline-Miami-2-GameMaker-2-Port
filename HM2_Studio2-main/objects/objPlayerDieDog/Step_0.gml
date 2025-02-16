if speed=0 {
if bled=0 {bled=1 instance_create(x+lengthdir_x(12,image_angle),y+lengthdir_x(12,image_angle),objBloodPool)}
}
if !place_free(x,y) speed=0

index+=0.15
if sprite=sprDogEat {
if index>=11 and dog=1 {
dog=0
my_id=instance_create(x,y,objDog) 
my_id.findwall=1
my_id.direction=round(image_angle*0.1)*10
}
}
