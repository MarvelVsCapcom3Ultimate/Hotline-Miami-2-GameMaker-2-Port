function scrSaveBlood() {
	if instance_exists(objGore) {
	my_id=instance_create(0,0,objFloorBlood)
	sprite=sprite_create_from_surface(objGore.surf,0,0,surface_get_width(objGore.surf),surface_get_height(objGore.surf),0,1,0,1)
	my_id.sprite_index=sprite
	global.floorblood[global.floorbloods]=sprite
	global.floorbloods+=1
	//sprite_save(my_id.sprite_index,0,"BLOOD.bmp")
	surface_free(objGore.surf)
	}



}
