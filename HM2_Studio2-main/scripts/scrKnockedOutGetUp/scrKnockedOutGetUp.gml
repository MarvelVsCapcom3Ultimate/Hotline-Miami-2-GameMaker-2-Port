function scrKnockedOutGetUp() {
	var dir;
	if sprite_index=sprVictim1GetUp {my_id=instance_create(x,y,objVictim1) my_id.sprite_index=sprVictim1Walk}
	if sprite_index=sprVictim2GetUp {my_id=instance_create(x,y,objVictim2) my_id.sprite_index=sprVictim2Walk}
	if sprite_index=sprVictim4GetUp {my_id=instance_create(x,y,objVictim4) my_id.sprite_index=sprVictim4Walk}
	if sprite_index=sprEGangGetUp or sprite_index=sprEGangGetUpLean {my_id=instance_create(x,y,objEGangRandom) my_id.sprite_index=sprEGangWalkUnarmed}
	if sprite_index=sprEGangFatGetUp {my_id=instance_create(x,y,objEGangFat) my_id.sprite_index=sprEGangFatWalk}
	if sprite_index=sprEMafiaFatGetUp {my_id=instance_create(x,y,objEMafiaFat) my_id.sprite_index=sprEMafiaFatWalk}
	if sprite_index=sprEMafiaGetUp or sprite_index=sprEMafiaGetUpLean {my_id=instance_create(x,y,objEMafiaRandom) if instance_exists(objLSD) my_id.sprite_index=sprEMafiaWalkUnarmedLSD else my_id.sprite_index=sprEMafiaWalkUnarmed}
	if sprite_index=sprEMafiaGetUpLSD or sprite_index=sprEMafiaGetUpLeanLSD {my_id=instance_create(x,y,objEMafiaRandom) my_id.sprite_index=sprEMafiaWalkUnarmedLSD}
	if sprite_index=sprColombianGetUp or sprite_index=sprColombianGetUpLean {my_id=instance_create(x,y,objColombianRandom) my_id.sprite_index=sprColombianWalkUnarmed}
	if sprite_index=sprSoldierGetUp {my_id=instance_create(x,y,objSoldierRandom) my_id.sprite_index=sprSoldierWalkUnarmed}
	if sprite_index=sprPoliceGetUp or sprite_index=sprPoliceGetUpLean {my_id=instance_create(x,y,objEPoliceRandom) my_id.sprite_index=sprPoliceWalkUnarmed}
	if sprite_index=sprGuardGetUp or sprite_index=sprGuardGetUpLean {my_id=instance_create(x,y,objGuardRandom) my_id.sprite_index=sprGuardWalkUnarmed}
	if sprite_index=sprGangLeaderGetUp {dir=objPlayer.dir my_id=instance_create(x,y,objGangLeader) my_id.sprite_index=sprGangLeaderWalk objPlayer.active=1 objPlayer.aimon=1 objPlayer.dir=dir}
	my_id.direction=image_angle
	my_id.risen=1
	my_id.enemyx=enemyx
	my_id.enemyy=enemyy
	with my_id {
	scrMoveSolidOn()
	if !place_free(x,y) {
	x=enemyx
	y=enemyy
	}
	scrMoveSolidOff()
	}
	instance_destroy()



}
