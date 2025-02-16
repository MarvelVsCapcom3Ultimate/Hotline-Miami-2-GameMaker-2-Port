function scrEditorFillTiles(argument0, argument1, argument2, argument3, argument4, argument5) {
	//argument0=click x argument1=click y argument2=new tile left argument3=new tile top argument4=newbackground argument4=depth
	var fill_list, old, left, top, newtile, mytilex, mytiley, background;
	fill_list=ds_list_create()
	old=tile_layer_find(argument5,argument0,argument1)
	if tile_exists(old) {
	background=tile_get_background(old)
	left=tile_get_left(old)
	top=tile_get_top(old)
	} else exit
	if argument4=background and left=argument2 and top=argument3 exit
	ds_list_add(fill_list,old)

	while (ds_list_size(fill_list)>0) {
	tile_set_region(ds_list_find_value(fill_list,0),argument2,argument3,16,16)
	tile_set_background(ds_list_find_value(fill_list,0),argument4)
	mytilex=tile_get_x(ds_list_find_value(fill_list,0))
	mytiley=tile_get_y(ds_list_find_value(fill_list,0))
	newtile=tile_layer_find(argument5,mytilex-16,mytiley)
	if tile_exists(newtile) {
	if tile_get_left(newtile)=left and tile_get_top(newtile)=top and tile_get_background(newtile)=background {ds_list_add(fill_list,newtile) tile_set_background(newtile,argument4) tile_set_region(newtile,argument2,argument3,16,16)}
	}
	newtile=tile_layer_find(argument5,mytilex,mytiley-16)
	if tile_exists(newtile) {
	if tile_get_left(newtile)=left and tile_get_top(newtile)=top and tile_get_background(newtile)=background {ds_list_add(fill_list,newtile) tile_set_background(newtile,argument4) tile_set_region(newtile,argument2,argument3,16,16)}
	}
	newtile=tile_layer_find(argument5,mytilex+16,mytiley)
	if tile_exists(newtile) {
	if tile_get_left(newtile)=left and tile_get_top(newtile)=top and tile_get_background(newtile)=background {ds_list_add(fill_list,newtile) tile_set_background(newtile,argument4) tile_set_region(newtile,argument2,argument3,16,16)}
	}
	newtile=tile_layer_find(argument5,mytilex,mytiley+16)
	if tile_exists(newtile) {
	if tile_get_left(newtile)=left and tile_get_top(newtile)=top and tile_get_background(newtile)=background {ds_list_add(fill_list,newtile) tile_set_background(newtile,argument4) tile_set_region(newtile,argument2,argument3,16,16)}
	}
	ds_list_delete(fill_list,0)
	//if round(random(20))=2 screen_redraw()
	}



}
