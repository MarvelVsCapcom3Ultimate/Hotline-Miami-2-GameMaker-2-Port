function scrLoadLevel() {
	var object, myx, myy, angle, sprite, file, index;
	file=file_text_open_read(global.loadfile)
	while !file_text_eof(file) {
	object=real(file_text_read_string(file))
	file_text_readln(file)
	myx=real(file_text_read_string(file))
	file_text_readln(file)
	myy=real(file_text_read_string(file))
	file_text_readln(file)
	sprite=real(file_text_read_string(file))
	file_text_readln(file)
	angle=real(file_text_read_string(file))
	file_text_readln(file)
	index=real(file_text_read_string(file))
	file_text_readln(file)
	my_id=instance_create(myx-global.startx+32,myy-global.starty+32,object)
	my_id.sprite_index=sprite
	my_id.direction=angle
	if object_get_parent(my_id.object_index)=objFurniture my_id.image_angle=angle
	if object_get_parent(my_id.object_index)=objCar my_id.image_angle=angle
	if my_id.object_index=objCopCar objCopCarTrunk.image_angle=angle
	my_id.image_index=index
	}
	file_text_close(file)



}
