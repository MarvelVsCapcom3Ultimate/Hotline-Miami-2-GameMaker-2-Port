function scrCreateBloodWhirl(argument0, argument1) {
	i=0
	repeat (8) {
	my_id=instance_create(argument0,argument1,objLSDBloodWhirl)
	my_id.image_angle=i*45
	i+=1
	}



}
