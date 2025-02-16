function scrEditorLoadWalls(argument0) {
	var object, sprite, angle, enemyx, enemyy;
	name=string_replace(argument0,".hlm",".wll")
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
	my_id=instance_create(real(enemyx),real(enemyy),real(object))
	my_id.sprite_index=real(sprite)
	my_id.image_angle=real(angle)
	}
	file_text_close(file)



}
