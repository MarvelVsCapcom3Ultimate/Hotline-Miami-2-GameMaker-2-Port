function scrEditorLoadObjects(argument0) {
	var object, sprite, angle, enemyx, enemyy, myobject,index;
	name=string_replace(argument0,".hlm",".obj")
	file=file_text_open_read(name)
	while !file_text_eof(file) {
	object=file_text_read_string(file)
	file_text_readln(file)
	enemyx=file_text_read_string(file)
	file_text_readln(file)
	enemyy=file_text_read_string(file)
	file_text_readln(file)
	sprite=file_text_read_string(file)
	file_text_readln(file)
	angle=file_text_read_string(file)
	file_text_readln(file)
	myobject=file_text_read_string(file)
	file_text_readln(file)
	index=file_text_read_string(file)
	file_text_readln(file)
	my_id=instance_create(real(enemyx),real(enemyy),real(object))
	my_id.sprite_index=real(sprite)
	my_id.image_angle=real(angle)
	my_id.object=real(myobject)
	my_id.image_index=real(index)
	}
	file_text_close(file)



}
