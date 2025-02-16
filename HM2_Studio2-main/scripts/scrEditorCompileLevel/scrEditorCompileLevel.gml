function scrEditorCompileLevel(argument0) {
	global.file=file_text_open_write(argument0+".play")
	global.loadfile=argument0+".play"
	scrEditorCompileTiles(argument0)
	global.tiles=argument0+".tiles"
	with objEditorPlayer {
	file_text_write_string(global.file,string(object))
	file_text_writeln(global.file)
	file_text_write_string(global.file,string(x))
	file_text_writeln(global.file)
	file_text_write_string(global.file,string(y))
	file_text_writeln(global.file)
	file_text_write_string(global.file,string(sprite_index))
	file_text_writeln(global.file)
	file_text_write_string(global.file,string(image_angle))
	file_text_writeln(global.file)
	file_text_write_string(global.file,string(image_index))
	file_text_writeln(global.file)
	}
	with objEditorCar {
	file_text_write_string(global.file,string(object))
	file_text_writeln(global.file)
	file_text_write_string(global.file,string(x))
	file_text_writeln(global.file)
	file_text_write_string(global.file,string(y))
	file_text_writeln(global.file)
	file_text_write_string(global.file,string(sprite_index))
	file_text_writeln(global.file)
	file_text_write_string(global.file,string(image_angle))
	file_text_writeln(global.file)
	file_text_write_string(global.file,string(image_index))
	file_text_writeln(global.file)
	}
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
	file_text_write_string(global.file,string(image_index))
	file_text_writeln(global.file)
	}
	with objEditorDoorV {
	if object_index=objEditorDoorV {
	file_text_write_string(global.file,string(object_index))
	file_text_writeln(global.file)
	file_text_write_string(global.file,string(x-4))
	file_text_writeln(global.file)
	file_text_write_string(global.file,string(y))
	file_text_writeln(global.file)
	file_text_write_string(global.file,string(sprite_index))
	file_text_writeln(global.file)
	file_text_write_string(global.file,string(image_angle))
	file_text_writeln(global.file)
	file_text_write_string(global.file,string(image_index))
	file_text_writeln(global.file)
	}
	if object_index=objEditorDoorH {
	file_text_write_string(global.file,string(object_index))
	file_text_writeln(global.file)
	file_text_write_string(global.file,string(x))
	file_text_writeln(global.file)
	file_text_write_string(global.file,string(y-4))
	file_text_writeln(global.file)
	file_text_write_string(global.file,string(sprite_index))
	file_text_writeln(global.file)
	file_text_write_string(global.file,string(image_angle))
	file_text_writeln(global.file)
	file_text_write_string(global.file,string(image_index))
	file_text_writeln(global.file)
	}
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
	file_text_write_string(global.file,string(image_index))
	file_text_writeln(global.file)
	}
	with objEditorObjects {
	file_text_write_string(global.file,string(object))
	file_text_writeln(global.file)
	file_text_write_string(global.file,string(x))
	file_text_writeln(global.file)
	file_text_write_string(global.file,string(y))
	file_text_writeln(global.file)
	file_text_write_string(global.file,string(sprite_index))
	file_text_writeln(global.file)
	file_text_write_string(global.file,string(image_angle))
	file_text_writeln(global.file)
	file_text_write_string(global.file,string(image_index))
	file_text_writeln(global.file)
	}
	with objEditorEnemy {
	file_text_write_string(global.file,string(object))
	file_text_writeln(global.file)
	file_text_write_string(global.file,string(x))
	file_text_writeln(global.file)
	file_text_write_string(global.file,string(y))
	file_text_writeln(global.file)
	file_text_write_string(global.file,string(sprite_index))
	file_text_writeln(global.file)
	file_text_write_string(global.file,string(image_angle))
	file_text_writeln(global.file)
	file_text_write_string(global.file,string(image_index))
	file_text_writeln(global.file)
	}
	file_text_close(global.file)



}
