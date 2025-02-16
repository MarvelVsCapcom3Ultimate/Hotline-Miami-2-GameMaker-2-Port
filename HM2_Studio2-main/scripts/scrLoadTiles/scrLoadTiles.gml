function scrLoadTiles(argument0) {
	var bg, left, top, tilex, tiley, tiledepth, my_tile;
	name=string_replace(argument0,".hlm",".tiles")
	file=file_text_open_read(name)
	while !file_text_eof(file) {
	bg=file_text_read_string(file)
	file_text_readln(file)
	left=file_text_read_string(file)
	file_text_readln(file)
	top=file_text_read_string(file)
	file_text_readln(file)
	tilex=file_text_read_string(file)
	file_text_readln(file)
	tiley=file_text_read_string(file)
	file_text_readln(file)
	tiledepth=file_text_read_string(file)
	file_text_readln(file)
	if real(tiledepth)>-99 my_tile=tile_add(real(bg),real(left),real(top),16,16,real(tilex)-global.startx+32,real(tiley)-global.starty+32,real(tiledepth)) else my_tile=tile_add(real(bg),real(left),real(top),8,8,real(tilex)-global.startx+32,real(tiley)-global.starty+32,real(tiledepth))
	}
	file_text_close(file)



}
