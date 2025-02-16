function scrEditorTilesPushDown() {
	//depth, amount
	i=0
	repeat (ds_list_size(tilelist)) {
	my_tile=ds_list_find_value(tilelist,i)
	if tile_exists(my_tile) {
	if tile_get_depth(my_tile)=1007 {tile_set_depth(my_tile,1009) tile_set_alpha(my_tile,0.1)}
	if tile_get_depth(my_tile)=1006 {tile_set_depth(my_tile,1008) tile_set_alpha(my_tile,0.1)}
	if tile_get_depth(my_tile)=1005 {tile_set_depth(my_tile,1007) tile_set_alpha(my_tile,0.125)}
	if tile_get_depth(my_tile)=1004 {tile_set_depth(my_tile,1006) tile_set_alpha(my_tile,0.125)}
	if tile_get_depth(my_tile)=1003 {tile_set_depth(my_tile,1005) tile_set_alpha(my_tile,0.25)}
	if tile_get_depth(my_tile)=1002 {tile_set_depth(my_tile,1004) tile_set_alpha(my_tile,0.25)}
	if tile_get_depth(my_tile)=1001 {tile_set_depth(my_tile,1003) tile_set_alpha(my_tile,0.5)}
	if tile_get_depth(my_tile)=1000 {tile_set_depth(my_tile,1002) tile_set_alpha(my_tile,0.5)}
	if tile_get_depth(my_tile)=999 {tile_set_depth(my_tile,1001) tile_set_alpha(my_tile,1)}
	if tile_get_depth(my_tile)=998 {tile_set_depth(my_tile,1000) tile_set_alpha(my_tile,1)}
	if tile_get_depth(my_tile)=997 {tile_set_depth(my_tile,999) tile_set_alpha(my_tile,1)}
	if tile_get_depth(my_tile)=996 {tile_set_depth(my_tile,998) tile_set_alpha(my_tile,1)}
	if tile_get_depth(my_tile)=995 {tile_set_depth(my_tile,997) tile_set_alpha(my_tile,1)}
	if tile_get_depth(my_tile)=994 {tile_set_depth(my_tile,996) tile_set_alpha(my_tile,1)}
	if tile_get_depth(my_tile)=993 {tile_set_depth(my_tile,995) tile_set_alpha(my_tile,1)}
	if tile_get_depth(my_tile)=992 {tile_set_depth(my_tile,994) tile_set_alpha(my_tile,1)}
	if tile_get_depth(my_tile)=991 {tile_set_depth(my_tile,993) tile_set_alpha(my_tile,1)}
	if tile_get_depth(my_tile)=990 {tile_set_depth(my_tile,992) tile_set_alpha(my_tile,1)}
	}
	i+=1
	}



}
