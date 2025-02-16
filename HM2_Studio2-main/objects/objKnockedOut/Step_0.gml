if (sprite_index == sprEGangGetUpLean || sprite_index == sprEMafiaGetUpLean || sprite_index == sprPoliceGetUpLean || sprite_index == sprGuardGetUpLean || sprite_index == sprColombianGetUpLean) 
{
	if (scrIsAttacking(objPlayer.sprite_index)) 
	{
		if (objPlayer.sprite_index == sprZebraAttackPunch || 
			objPlayer.sprite_index == sprHenchmanAttackPunch || 
			objPlayer.sprite_index == sprSonAttackSword || 
			objPlayer.sprite_index == sprRatAttackPunch || 
			objPlayer.sprite_index == sprCopAttackMachette || 
			objPlayer.sprite_index == sprSonAttackMachette || 
			objPlayer.sprite_index == sprPigAttackPunch || 
			objPlayer.sprite_index == sprWriter2AttackPunch || 
			objPlayer.sprite_index == sprWriterAttackPunch || 
			objPlayer.sprite_index == sprBearAttackPunch || 
			objPlayer.sprite_index == sprSonAttackPunch || 
			objPlayer.sprite_index == sprCopAttackPunch || 
			objPlayer.sprite_index == sprCobraAttackPunch || 
			objPlayer.sprite_index == sprSwanAttackChainsaw) 
		{
			if (objPlayer.sprite_index == sprSwanAttackChainsaw || objPlayer.sprite_index == sprSonAttackSword || objPlayer.sprite_index == sprSonAttackMachette || objPlayer.sprite_index == sprCopAttackMachette) 
			{
				if place_meeting(x,y,objPlayer) 
				{
					my_id = instance_create(x, y, objDeadBody);
					if sprite_index == sprEGangGetUpLean 
						my_id.sprite_index = sprEGangDeadLeanShotgun;
					if sprite_index == sprEMafiaGetUpLean 
						my_id.sprite_index = sprEMafiaDeadLeanShotgun;
					if sprite_index == sprColombianGetUpLean 
						my_id.sprite_index = sprColombianDeadLeanShotgun;
					if sprite_index == sprGuardGetUpLean 
						my_id.sprite_index = sprGuardDeadLeanShotgun;
					my_id.image_angle = image_angle;
					my_id.image_index = 1;
					my_id = instance_create(x, y, objSeveredHead);
					my_id.direction = random(360);
					my_id.speed = 2;
					scrMeleeBlood(x, y);
					sound_play(sndPunch);
					sound_play(sndHit);
					objEffector.roomkills++;
					instance_destroy();
				}
			}
		} 
		else 
		{
			if place_meeting(x,y,objPlayer) 
			{
				my_id = instance_create(x, y, objDeadBody)
				if sprite_index == sprColombianGetUpLean 
					my_id.sprite_index = sprColombianDeadLeanMelee;
				if sprite_index == sprEGangGetUpLean 
					my_id.sprite_index = sprEGangDeadLeanMelee;
				if sprite_index == sprEMafiaGetUpLean 
					my_id.sprite_index = sprEMafiaDeadLeanMelee;
				if sprite_index == sprPoliceGetUpLean 
					my_id.sprite_index = sprPoliceDeadLeanMelee;
				if sprite_index == sprGuardGetUpLean 
					my_id.sprite_index = sprGuardDeadLeanMelee;
				my_id.image_angle = image_angle;
				scrMeleeBlood(x, y);
				sound_play(sndPunch);
				sound_play(sndHit);
				objEffector.roomkills++;
				instance_destroy();
			}
		}
	}
}

if (image_speed > 0) 
	exit;
scrMoveSolidOn();
if (!place_free(x, y)) 
{
	if (speed > 0) 
		move_outside_solid(direction - 180, 8);
	else 
	{
		if (place_free(x + lengthdir_x(7, direction - 180), y + lengthdir_y(7, direction - 180)))
		{
			dir = direction
			if sprite_index == sprColombianGetUp 
				sprite_index = sprColombianGetUpLean;
			if sprite_index == sprEGangGetUp 
				sprite_index = sprEGangGetUpLean;
			if sprite_index == sprEMafiaGetUp 
				sprite_index = sprEMafiaGetUpLean;
			if sprite_index == sprPoliceGetUp 
				sprite_index = sprPoliceGetUpLean;
			if sprite_index == sprGuardGetUp 
				sprite_index = sprGuardGetUpLean;
			if sprite_index == sprEMafiaGetUpLSD 
				sprite_index = sprEMafiaGetUpLeanLSD;
				
			direction = round(direction * (1 / 90)) * 90;
			image_angle = direction - 180;
			if (place_free(x + lengthdir_x(5, direction), y + lengthdir_y(5, direction))) 
			{
				direction = dir 
				if sprite_index=sprColombianGetUpLean 
					sprite_index=sprColombianGetUp 
				if sprite_index=sprEGangGetUpLean 
					sprite_index=sprEGangGetUp 
				if sprite_index=sprEMafiaGetUpLean 
					sprite_index=sprEMafiaGetUp 
				if sprite_index=sprPoliceGetUpLean 
					sprite_index=sprPoliceGetUp
				if sprite_index=sprGuardGetUpLean 
					sprite_index=sprGuardGetUp
				if sprite_index=sprEMafiaGetUpLeanLSD 
					sprite_index=sprEMafiaGetUpLSD
			}
		}
	}
	speed=0
} else {
if !place_free(x+lengthdir_x(5,direction),y+lengthdir_y(5,direction)) {
move_contact_solid(direction,8) 
dir=direction
if sprite_index=sprColombianGetUp sprite_index=sprColombianGetUpLean 
if sprite_index=sprEGangGetUp sprite_index=sprEGangGetUpLean 
if sprite_index=sprEMafiaGetUp sprite_index=sprEMafiaGetUpLean 
if sprite_index=sprPoliceGetUp sprite_index=sprPoliceGetUpLean
if sprite_index=sprGuardGetUp sprite_index=sprGuardGetUpLean
if sprite_index=sprEMafiaGetUpLSD sprite_index=sprEMafiaGetUpLeanLSD
direction=round(direction*(1/90))*90 
image_angle=direction-180
if place_free(x+lengthdir_x(5,direction),y+lengthdir_y(5,direction)) {
direction=dir
if sprite_index=sprColombianGetUpLean sprite_index=sprColombianGetUp
if sprite_index=sprEGangGetUpLean sprite_index=sprEGangGetUp 
if sprite_index=sprEMafiaGetUpLean sprite_index=sprEMafiaGetUp 
if sprite_index=sprPoliceGetUpLean sprite_index=sprPoliceGetUp
if sprite_index=sprGuardGetUpLean sprite_index=sprGuardGetUp
if sprite_index=sprEMafiaGetUpLeanLSD sprite_index=sprEMafiaGetUpLSD
}
} 
}
scrMoveSolidOff()
