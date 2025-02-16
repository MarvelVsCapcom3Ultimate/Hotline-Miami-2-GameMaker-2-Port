function scrHearPlayer() {
	global.distlist=ds_list_create()
	with objEnemy {
	if object_index=objColombianIdlePipe or object_index=objEGangStatic or object_index=objGuardStatic or object_index=objColombianStatic or object_index=objEGangIdleMoney or object_index=objEGangIdlePipe or object_index=objEGangIdleKnife or object_index=objEGangIdleSmoke or sprite_index=sprEGangWalkUnarmed or object_index=objSoldierStatic or object_index=objSoldierIdlePonchoSmoke or object_index=objSoldierIdleRain or object_index=objSoldierHiding or object_index=objColombianHiding or object_index=objEMafiaStatic or object_index=objEMafiaIdlePhoneSilencer nothing=1 else {
	dist=point_distance(x,y,objPlayer.x,objPlayer.y)
	ds_list_add(global.distlist,dist)
	}
	}

	ds_list_sort(global.distlist,1)
	with objEnemy {
	if object_index=objColombianIdlePipe or object_index=objEGangStatic or object_index=objGuardStatic or object_index=objColombianStatic or object_index=objEGangIdleMoney or object_index=objEGangIdlePipe or object_index=objEGangIdleKnife or object_index=objEGangIdleSmoke or sprite_index=sprEGangWalkUnarmed or object_index=objSoldierStatic or object_index=objSoldierIdlePonchoSmoke or object_index=objSoldierIdleRain or object_index=objSoldierHiding or object_index=objColombianHiding or object_index=objEMafiaStatic or object_index=objEMafiaIdlePhoneSilencer nothing=1 else {
	with objPlayer {
	pathx=x
	pathy=y
	if !place_free(x+9,y) x-=9
	if !place_free(x-9,y) x+=9
	if !place_free(x,y+9) y-=9
	if !place_free(x,y-9) y+=9
	}

	if ds_list_find_value(global.distlist,0)=dist and dist<210 {if alert=0 scrChase(path,objPlayer.x,objPlayer.y)}
	if ds_list_find_value(global.distlist,1)=dist and dist<210 {if alert=0 scrChase(path,objPlayer.x,objPlayer.y)}
	if ds_list_find_value(global.distlist,2)=dist and dist<210 {if alert=0 scrChase(path,objPlayer.x,objPlayer.y)}

	with objPlayer {
	x=pathx
	y=pathy
	}
	}
	}

	ds_list_destroy(global.distlist)



}
