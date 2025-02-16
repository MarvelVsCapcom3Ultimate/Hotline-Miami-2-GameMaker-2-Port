function scrEditorSaveObjects(argument0) {
	name=argument0+".obj"
	global.file=file_text_open_write(name)
	with objEditorEnemy {
	file_text_write_string(global.file,string(object_index))
	file_text_writeln(global.file)
	file_text_write_string(global.file,string(x))
	file_text_writeln(global.file)
	file_text_write_string(global.file,string(y))
	file_text_writeln(global.file)
	file_text_write_string(global.file,string(sprite_index))
	file_text_writeln(global.file)
	file_text_write_string(global.file,string(image_angle))
	file_text_writeln(global.file)
	file_text_write_string(global.file,string(object))
	file_text_writeln(global.file)
	file_text_write_string(global.file,string(image_index))
	file_text_writeln(global.file)
	}
	with objEditorObjects {
	file_text_write_string(global.file,string(object_index))
	file_text_writeln(global.file)
	file_text_write_string(global.file,string(x))
	file_text_writeln(global.file)
	file_text_write_string(global.file,string(y))
	file_text_writeln(global.file)
	file_text_write_string(global.file,string(sprite_index))
	file_text_writeln(global.file)
	file_text_write_string(global.file,string(image_angle))
	file_text_writeln(global.file)
	file_text_write_string(global.file,string(object))
	file_text_writeln(global.file)
	file_text_write_string(global.file,string(image_index))
	file_text_writeln(global.file)
	}
	file_text_close(global.file)



}
