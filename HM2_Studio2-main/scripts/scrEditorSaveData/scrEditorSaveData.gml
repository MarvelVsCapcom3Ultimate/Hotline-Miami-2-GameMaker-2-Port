function scrEditorSaveData(argument0) {
	file=file_text_open_write(argument0+".hlm")
	file_text_write_string(file,global.levelname)
	file_text_writeln(file)
	file_text_write_string(file,string(global.player))
	file_text_writeln(file)
	file_text_write_string(file,string(global.mysong))
	file_text_writeln(file)
	global.file=file
	with objEditorPlayer {
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
	}
	with objEditorCar {
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
	}
	file_text_close(file)



}
