if image_angle=0 {
i=0
repeat (14) {
instance_create(x+i*4,y+4,objPlasticDrape)
i+=1
}
}
if image_angle=270 {
i=0
repeat (14) {
my_id=instance_create(x+4,y+i*4,objPlasticDrape)
my_id.image_angle=90
i+=1
}
}
