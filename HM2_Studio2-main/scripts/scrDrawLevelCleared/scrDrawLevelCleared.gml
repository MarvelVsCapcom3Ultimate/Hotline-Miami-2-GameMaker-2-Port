function scrDrawLevelCleared() {
	with objLevelCleared {
	draw_surface_ext(surf,1,0,1,1,0,c_black,1)
	draw_surface_ext(surf,-1,0,1,1,0,c_black,1)
	draw_surface_ext(surf,0,1,1,1,0,c_black,1)
	draw_surface_ext(surf,0,-1,1,1,0,c_black,1)
	draw_surface_ext(surf,0,0,1,1,0,c_white,1)
	}



}
