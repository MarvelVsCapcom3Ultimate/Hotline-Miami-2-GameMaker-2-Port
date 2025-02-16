function scrClearBlood() {
	i=0 
	repeat global.floorbloods {
	if sprite_exists(global.floorblood[i]) sprite_delete(global.floorblood[i])
	i+=1
	}
	global.floorbloods=0



}
