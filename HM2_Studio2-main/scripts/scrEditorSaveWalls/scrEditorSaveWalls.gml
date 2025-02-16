function scrEditorSaveWalls(argument0) {
	name=argument0+".wll"
	global.file=file_text_open_write(name)
	with objWall {
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
	}
	with objGlassPanel {
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
	}
	with objEditorDoorV {
	file_text_write_string(global.file,string(object_index))
	file_text_writeln(global.file)
	if object_index=objEditorDoorV file_text_write_string(global.file,string(x-4)) else file_text_write_string(global.file,string(x))
	file_text_writeln(global.file)
	if object_index=objEditorDoorV file_text_write_string(global.file,string(y)) else file_text_write_string(global.file,string(y-4))
	file_text_writeln(global.file)
	file_text_write_string(global.file,string(sprite_index))
	file_text_writeln(global.file)
	file_text_write_string(global.file,string(image_angle))
	file_text_writeln(global.file)
	}
	file_text_close(global.file)



}
