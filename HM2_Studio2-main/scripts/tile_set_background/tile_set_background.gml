/// @description Sets the background for a tile to be drawn from.
/// @param index The index of the tile.
/// @param background The index of the background to take the tile from.
/// @returns 
function tile_set_background(argument0, argument1) {

	var __index = argument0;
	var __background = argument1;

	return layer_tile_change(__index, __background);


}
