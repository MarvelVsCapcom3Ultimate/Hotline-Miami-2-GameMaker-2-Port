function scrSurfaceTiles() {
	//set_automatic_draw(false)
	tile_layer_show(1000)
	tile_layer_hide(1002)
	tile_layer_hide(3)
	tile_layer_show(1000000)
	draw_clear_alpha(make_color_hsv(0,0,2),0)
	__background_set_showcolour( 0 )
	view_enabled=0
	__view_set( e__VW.Visible, 0, 0 )
	//screen_refresh()
	instance_deactivate_all(true)
	tilesurf=surface_create(room_width,room_height)
	surface_set_target(tilesurf)
	draw_clear_alpha(make_color_hsv(0,0,2),0)
	surface_reset_target()
	surface_set_target(tilesurf)
	draw_clear_alpha(make_color_hsv(0,0,2),0)
	//screen_redraw()
	surface_reset_target()
	//if surface_exists(global.surf3) surface_free(global.surf3)
	//global.surf3=surface_create(room_width*3,room_height*3)
	//if !instance_exists(objLSD) set_automatic_draw(true)
	tile_layer_hide(1000)
	tile_layer_show(1002)
	tile_layer_hide(1000000)
	instance_activate_all()
	surface_set_target(tilesurf) 
	d3d_set_projection_ortho(0,0,room_width,room_height,0)
	with objContainerFloor {
	draw_sprite(sprite_index,image_index,x,y)
	visible=0
	}
	surface_reset_target()
	__background_set_showcolour( 1 )
	view_enabled=1
	__view_set( e__VW.Visible, 0, 1 )
	/*
	surface_set_target(argument0)
	draw_clear_alpha(make_color_hsv(0,0,2),0)
	surface_reset_target()
	surface_set_target(surf1)
	draw_clear_alpha(make_color_hsv(0,0,2),0)
	screen_redraw()
	surface_reset_target()
	tile_layer_hide(1000)
	tile_layer_show(1002)
	tile_layer_hide(1000000)
	surface_set_target(argument0)
	draw_clear_alpha(make_color_hsv(0,0,2),0)
	draw_set_color(make_color_hsv(0,0,2))
	draw_set_alpha(0)
	draw_rectangle(0,0,room_width*2,room_height*2,0)
	draw_set_alpha(1)
	draw_surface_ext(surf1,0,0,2,2,0,c_white,1)
	surface_reset_target()
	instance_activate_all()
	background_showcolor=1
	view_enabled=1
	view_visible[0]=1
	surface_free(surf1)



/* end scrSurfaceTiles */
}
