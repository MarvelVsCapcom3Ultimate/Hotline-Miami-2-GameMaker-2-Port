function scrPosDirY(argument0, argument1, argument2 = 0) {
	return lengthdir_y(point_distance(0, 0, argument0, argument1), point_direction(0, 0, argument0, argument1) + argument2);
}
