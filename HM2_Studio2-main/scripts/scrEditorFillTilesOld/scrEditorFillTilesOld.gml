function scrEditorFillTilesOld(argument0, argument1, argument2, argument3, argument4) {
	//argument0=click x argument1=click y argument2=New tile left argument3=New tile top

	old=tile_layer_find(argument4,argument0,argument1)
	if tile_exists(old) {
	left=tile_get_left(old)
	top=tile_get_top(old)
	tile_set_region(old,argument2,argument3,16,16)
	test=0
	checkx=argument0-16
	checky=argument1
	while test < 4 
	{
		New = 0;
		mytile=tile_layer_find(argument4,checkx,checky)
		if tile_exists(mytile) 
		{
			if tile_get_left(mytile)=left and tile_get_top(mytile)=top 
			{
				tile_set_region(mytile,argument2,argument3,16,16)
				//screen_redraw()
				sleep_hack(10)
				mytile=tile_layer_find(argument4,checkx-16,checky)
				if tile_exists(mytile) {if tile_get_left(mytile)=left and tile_get_top(mytile)=top {New=1 checkx-=16}}
				mytile=tile_layer_find(argument4,checkx,checky-16)
				if tile_exists(mytile) and New=0 {if tile_get_left(mytile)=left and tile_get_top(mytile)=top {New=1 checky-=16}}
				mytile=tile_layer_find(argument4,checkx+16,checky)
				if tile_exists(mytile) and New=0 {if tile_get_left(mytile)=left and tile_get_top(mytile)=top {New=1 checkx+=16}}
				mytile=tile_layer_find(argument4,checkx,checky+16)
				if tile_exists(mytile) and New=0 {if tile_get_left(mytile)=left and tile_get_top(mytile)=top {New=1 checky+=16}}
				if New=0 
				{
					test+=1
				if test=1 {checkx=argument0 checky=argument1-16}
				if test=2 {checkx=argument0+16 checky=argument1}
				if test=3 {checkx=argument0 checky=argument1+16}
				}
	//show_message(string(checkx)+","+string(checky)+","+string(test))
			} 
			else 
			{
				test+=1
				if test=1 {checkx=argument0 checky=argument1-16}
				if test=2 {checkx=argument0+16 checky=argument1}
				if test=3 {checkx=argument0 checky=argument1+16}
			}
	} 
	else 
	{
		test += 1;
		if test = 1 
		{
			checkx=argument0;
			checky=argument1 - 16;
		}
		if test = 2 
		{
			checkx = argument0 + 16 ;
			checky = argument1;
		}
		if test = 3 
		{
			checkx = argument0; 
			checky = argument1 + 16;
		}
	}
	}
	}



}
