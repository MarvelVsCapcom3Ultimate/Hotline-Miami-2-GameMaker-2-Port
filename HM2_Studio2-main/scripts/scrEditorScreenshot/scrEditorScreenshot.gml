function scrEditorScreenshot() {
	//set_automatic_draw(false)
	draw_clear_alpha(make_color_hsv(0,0,2),0)
	__background_set_showcolour( 0 )
	i=1010
	repeat (5) {
	tile_layer_hide(i)
	tile_layer_hide(i+1)
	i+=2
	}
	surf=surface_create(room_width,room_height)
	instance_deactivate_all(true)
	instance_activate_object(objEditorObjects)
	//screen_refresh()
	surface_set_target(surf)
	draw_clear_alpha(make_color_hsv(0,0,2),1)
	//screen_redraw()
	surface_reset_target()
	instance_activate_all()
	__background_set_showcolour( 1 )
	i=1010
	repeat (5) {
	tile_layer_show(i)
	tile_layer_show(i+1)
	i+=2
	}
	reen= sprite_create_from_surface(surf,0,0,surface_get_width(surf),surface_get_height(surf),1,1,0,1);
	//surface_free(surf)
	//set_automatic_draw(true)
	return screen



}
