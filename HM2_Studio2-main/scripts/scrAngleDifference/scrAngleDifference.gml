function scrAngleDifference(argument0, argument1) {
	//argument0 = current angle / argument1 = last angle
	var dir;

	dir=argument0-argument1
	if dir>180 dir-=360
	if dir<-180 dir+=360

	return dir



}
