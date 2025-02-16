function scrEnemyGetKnockedOut(argument0, argument1) {
	global.shake=2
	my_id=instance_create(x,y,objKnockedOut)
	if argument0=objVictim1 my_id.sprite_index=sprVictim1GetUp
	if argument0=objVictim2 my_id.sprite_index=sprVictim2GetUp
	if argument0=objVictim4 my_id.sprite_index=sprVictim4GetUp
	if object_get_parent(argument0)=objEGang my_id.sprite_index=sprEGangGetUp
	if argument0=objEGangFat my_id.sprite_index=sprEGangFatGetUp
	if object_get_parent(argument0)=objEMafia {if instance_exists(objLSD) my_id.sprite_index=sprEMafiaGetUpLSD else my_id.sprite_index=sprEMafiaGetUp}
	if argument0=objEMafiaFat my_id.sprite_index=sprEMafiaFatGetUp
	if object_get_parent(argument0)=objColombian my_id.sprite_index=sprColombianGetUp
	if object_get_parent(argument0)=objSoldier my_id.sprite_index=sprSoldierGetUp
	if object_get_parent(argument0)=objPolice my_id.sprite_index=sprPoliceGetUp
	if object_get_parent(argument0)=objGuard my_id.sprite_index=sprGuardGetUp
	my_id.direction=argument1//
	my_id.speed=2+random(2)
	my_id.friction=0.15
	my_id.image_angle=my_id.direction-180
	my_id.enemyx=my_id.x
	my_id.enemyy=my_id.y
	if instance_exists(objLSD) {
	flame=instance_create(x,y,objMafiaFlameOut)
	flame.direction=my_id.direction
	flame.image_angle=my_id.image_angle
	flame.speed=my_id.speed*0.5
	flame.friction=0.15
	}
	scrEnemyDropWeapon()
	instance_destroy()



}
