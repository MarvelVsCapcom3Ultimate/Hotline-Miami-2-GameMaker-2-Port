function scrGoToExact(argument0, argument1, argument2) {
	var myx,myy,test;
	//scrGoTo(path_index,goalx,goaly)
	if path_index>=0 path_end()
	myx=argument1
	myy=argument2
	//while !place_free(myx,myy) {myx+=-2+random(4) myy+=-2+random(4)} 
	if !mp_grid_path(global.grid,argument0,x,y,argument1,argument2,1) alert=0 else {
	path_start(argument0,1.5,0,1)
	}



}
