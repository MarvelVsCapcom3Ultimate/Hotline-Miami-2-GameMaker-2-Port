function scrEditorLoadData(argument0) {
	var name,object,file,sprite,myx,myy,angle,myobject;
	name=string_replace(argument0,".hlm","")
	file=file_text_open_read(name+".hlm")
	global.levelname=file_text_read_string(file)
	file_text_readln(file)
	global.player=real(file_text_read_string(file))
	file_text_readln(file)
	global.mysong=real(file_text_read_string(file))
	file_text_readln(file)
	if !file_text_eof(file) {
	object=file_text_read_string(file)
	file_text_readln(file)
	myx=file_text_read_string(file)
	file_text_readln(file)
	myy=file_text_read_string(file)
	file_text_readln(file)
	sprite=file_text_read_string(file)
	file_text_readln(file)
	angle=file_text_read_string(file)
	file_text_readln(file)
	myobject=file_text_read_string(file)
	file_text_readln(file)
	my_id=instance_create(real(myx),real(myy),real(object))
	my_id.sprite_index=real(sprite)
	my_id.image_angle=real(angle)
	my_id.object=real(myobject)
	}
	if !file_text_eof(file) {
	object=file_text_read_string(file)
	file_text_readln(file)
	myx=file_text_read_string(file)
	file_text_readln(file)
	myy=file_text_read_string(file)
	file_text_readln(file)
	sprite=file_text_read_string(file)
	file_text_readln(file)
	angle=file_text_read_string(file)
	file_text_readln(file)
	myobject=file_text_read_string(file)
	file_text_readln(file)
	my_id=instance_create(real(myx),real(myy),real(object))
	my_id.sprite_index=real(sprite)
	my_id.image_angle=real(angle)
	my_id.object=real(myobject)
	}
	file_text_close(file)



}
