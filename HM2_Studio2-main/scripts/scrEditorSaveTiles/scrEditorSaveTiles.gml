function scrEditorSaveTiles(argument0) {
	name=argument0+".tls"
	file=file_text_open_write(name)
	i=0
	repeat (ds_list_size(tilelist)) {
	tile=ds_list_find_value(tilelist,i)
	if tile_exists(tile) {
	file_text_write_string(file,string(tile_get_background(tile)))
	file_text_writeln(file)
	file_text_write_string(file,string(tile_get_left(tile)))
	file_text_writeln(file)
	file_text_write_string(file,string(tile_get_top(tile)))
	file_text_writeln(file)
	file_text_write_string(file,string(tile_get_x(tile)))
	file_text_writeln(file)
	file_text_write_string(file,string(tile_get_y(tile)))
	file_text_writeln(file)
	file_text_write_string(file,string(tile_get_depth(tile)))
	file_text_writeln(file)
	}
	i+=1
	}

	file_text_close(file)



}
