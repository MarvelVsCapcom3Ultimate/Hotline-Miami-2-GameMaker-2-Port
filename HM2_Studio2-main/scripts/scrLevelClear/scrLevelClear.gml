function scrLevelClear() {
	if clear=0 {
	if instance_exists(objLoadLevel) {
	if instance_number(objEnemy)+instance_number(objKnockedOut)+instance_number(objEBullet)+instance_number(objPlayerDead)=0 and clear=0 {clear=1 instance_create(0,0,objLevelCleared)}
	}

	if room=rmPowerPlant1 or room=rmPowerPlant2 or room=rmPowerPlantBuilding1 {
	if instance_number(objEnemy)+instance_number(objKnockedOut)+instance_number(objEBullet)+instance_number(objPlayerDead)=0 and clear=0 {clear=1 instance_create(0,0,objFloorCleared)}
	}

	if room=rmPowerPlantBuilding2 {
	if instance_number(objEnemy)+instance_number(objKnockedOut)+instance_number(objEBullet)+instance_number(objPlayerDead)=0 and clear=0 {clear=1 instance_create(0,0,objLevelCleared)}
	}

	if room=rmBoatDeck1 or room=rmBoatDeck2 or room=rmBoatBelow1 or room=rmBoatBelow2 {
	if instance_number(objEnemy)+instance_number(objKnockedOut)+instance_number(objEBullet)+instance_number(objPlayerDead)=0 and clear=0 {clear=1 instance_create(0,0,objFloorCleared)}
	}
	if room=rmBoatBelow3 {
	if instance_number(objEnemy)+instance_number(objKnockedOut)+instance_number(objEBullet)+instance_number(objPlayerDead)=0 and clear=0 {clear=1 instance_create(0,0,objLevelCleared)}
	}

	if room=rmFansLevel5Floor2 {
	if instance_number(objEnemy)+instance_number(objKnockedOut)+instance_number(objEBullet)+instance_number(objPlayerDead)=0 and clear=0 {clear=1 instance_create(0,0,objFloorCleared) instance_create(x,y,objWalkieTalkie)}
	}
	if room=rmFansLevel5Floor3 {
	if instance_number(objEnemy)+instance_number(objKnockedOut)+instance_number(objEBullet)+instance_number(objPlayerDead)=0 and clear=0 {clear=1 instance_create(0,0,objFloorCleared) instance_create(x,y,objWalkieTalkie)}
	}
	if room=rmFansLevel5Floor4 {
	if instance_number(objEnemy)+instance_number(objKnockedOut)+instance_number(objEBullet)+instance_number(objPlayerDead)=0 and clear=0 {clear=1 instance_create(0,0,objFloorCleared) instance_create(x,y,objWalkieTalkie)}
	}
	if room=rmFansLevel5Floor5 {
	if instance_number(objEnemy)+instance_number(objKnockedOut)+instance_number(objEBullet)+instance_number(objPlayerDead)=0 and clear=0 {clear=1 instance_create(0,0,objLevelCleared)}
	}

	if room=rmFansLevel1Floor1 {
	if instance_number(objEnemy)+instance_number(objKnockedOut)+instance_number(objEBullet)+instance_number(objPlayerDead)=0 and clear=0 {clear=1 instance_create(0,0,objFloorCleared)}
	}
	if room=rmFansLevel1Floor2 {
	if instance_number(objEnemy)+instance_number(objKnockedOut)+instance_number(objEBullet)+instance_number(objPlayerDead)=0 and clear=0 {clear=1 instance_create(0,0,objLevelCleared)}
	}

	if room=rmHotelPool {
	if instance_number(objEnemy)+instance_number(objKnockedOut)+instance_number(objEBullet)+instance_number(objPlayerDead)=0 and clear=0 {clear=1 instance_create(0,0,objFloorCleared)}
	}
	if room=rmHotelLobby {
	if instance_number(objEnemy)+instance_number(objKnockedOut)+instance_number(objEBullet)+instance_number(objPlayerDead)=0 and clear=0 {clear=1 instance_create(0,0,objFloorCleared)}
	}
	if room=rmHotelUpstairs {
	if instance_number(objEnemy)+instance_number(objKnockedOut)+instance_number(objEBullet)+instance_number(objPlayerDead)=0 and clear=0 {clear=1 instance_create(0,0,objLevelCleared) instance_create(x,y,objWalkieTalkie)}
	}

	if room=rmBankEntrance {
	if instance_number(objEnemy)+instance_number(objKnockedOut)+instance_number(objEBullet)+instance_number(objPlayerDead)=0 and clear=0 {clear=1 instance_create(0,0,objFloorCleared)}
	}
	if room=rmBankSideRoom {
	if instance_number(objEnemy)+instance_number(objKnockedOut)+instance_number(objEBullet)+instance_number(objPlayerDead)=0 and clear=0 {clear=1 instance_create(0,0,objFloorCleared)}
	}
	if room=rmBankBackRoom {
	if instance_number(objEnemy)+instance_number(objKnockedOut)+instance_number(objEBullet)+instance_number(objPlayerDead)=0 and clear=0 {clear=1 instance_create(0,0,objLevelCleared)}
	}

	if room=rmMethLabFloor1 {
	if instance_number(objEnemy)+instance_number(objKnockedOut)+instance_number(objEBullet)+instance_number(objPlayerDead)=0 and clear=0 {clear=1 instance_create(0,0,objFloorCleared)}
	}
	if room=rmMethLabFloor2 {
	if instance_number(objEnemy)+instance_number(objKnockedOut)+instance_number(objEBullet)+instance_number(objPlayerDead)=0 and clear=0 {clear=1 instance_create(0,0,objFloorCleared)}
	}
	if room=rmMethLabFloor3 {
	if instance_number(objEnemy)+instance_number(objKnockedOut)+instance_number(objEBullet)+instance_number(objPlayerDead)=0 and clear=0 {clear=1 instance_create(0,0,objLevelCleared)}
	}

	if room=rmFansLevel3Floor1 {
	if instance_number(objEnemy)+instance_number(objKnockedOut)+instance_number(objEBullet)+instance_number(objPlayerDead)=0 and clear=0 {clear=1 instance_create(0,0,objFloorCleared)}
	}
	if room=rmFansLevel3Floor2 {
	if instance_number(objEnemy)+instance_number(objKnockedOut)+instance_number(objEBullet)+instance_number(objPlayerDead)=0 and clear=0 {clear=1 instance_create(0,0,objFloorCleared)}
	}
	if room=rmFansLevel3Floor3 {
	if instance_number(objEnemy)+instance_number(objKnockedOut)+instance_number(objEBullet)+instance_number(objPlayerDead)=0 and clear=0 {clear=1 instance_create(0,0,objLevelCleared)}
	}

	if room=rmFansLevel2Floor1 {
	if instance_number(objEnemy)+instance_number(objKnockedOut)+instance_number(objEBullet)+instance_number(objPlayerDead)=0 and clear=0 {clear=1 instance_create(0,0,objFloorCleared)}
	}
	if room=rmFansLevel2Floor2 {
	if instance_number(objEnemy)+instance_number(objKnockedOut)+instance_number(objEBullet)+instance_number(objPlayerDead)=0 and clear=0 {clear=1 instance_create(0,0,objLevelCleared)}
	}

	if room=rmSewersEntrance {
	if instance_number(objEnemy)+instance_number(objKnockedOut)+instance_number(objEBullet)+instance_number(objPlayerDead)=0 and clear=0 {clear=1 instance_create(0,0,objLevelCleared)}
	}
	if room=rmSewersFloor1 {
	if instance_number(objEnemy)+instance_number(objKnockedOut)+instance_number(objEBullet)+instance_number(objPlayerDead)=0 and clear=0 {clear=1 instance_create(0,0,objFloorCleared)}
	}
	if room=rmSewersFloor2 {
	if instance_number(objEnemy)+instance_number(objKnockedOut)+instance_number(objEBullet)+instance_number(objPlayerDead)=0 and clear=0 {clear=1 instance_create(0,0,objLevelCleared)}
	}

	if room=rmJunglePlace1 {
	if instance_number(objEnemy)+instance_number(objKnockedOut)+instance_number(objEBullet)+instance_number(objPlayerDead)=0 and clear=0 {clear=1 instance_create(0,0,objFloorCleared)}
	}
	if room=rmJunglePlace2 {
	if instance_number(objEnemy)+instance_number(objKnockedOut)+instance_number(objEBullet)+instance_number(objPlayerDead)=0 and clear=0 {clear=1 instance_create(0,0,objFloorCleared)}
	}
	if room=rmJunglePlace3 {
	if instance_number(objEnemy)+instance_number(objKnockedOut)+instance_number(objEBullet)+instance_number(objPlayerDead)=0 and clear=0 {clear=1 instance_create(0,0,objLevelCleared) instance_create(x,y,objWalkieTalkie)}
	}

	if room=rmSubwayPlatform {
	if instance_number(objEnemy)+instance_number(objKnockedOut)+instance_number(objEBullet)+instance_number(objPlayerDead)=0 and clear=0 {clear=1 instance_create(0,0,objFloorCleared)}
	}
	if room=rmSubwayUpstairs1 {
	if instance_number(objEnemy)+instance_number(objKnockedOut)+instance_number(objEBullet)+instance_number(objPlayerDead)=0 and clear=0 {clear=1 instance_create(0,0,objFloorCleared)}
	}
	if room=rmSubwayUpstairs2 {
	if instance_number(objEnemy)+instance_number(objKnockedOut)+instance_number(objEBullet)+instance_number(objPlayerDead)=0 and clear=0 {clear=1 instance_create(0,0,objLevelCleared)}
	}

	if room=rmMallFloor1 {
	if instance_number(objEnemy)+instance_number(objKnockedOut)+instance_number(objEBullet)+instance_number(objPlayerDead)=0 and clear=0 {clear=1 instance_create(0,0,objFloorCleared)}
	}
	if room=rmMallFloor2 {
	if instance_number(objEnemy)+instance_number(objKnockedOut)+instance_number(objEBullet)+instance_number(objPlayerDead)=0 and clear=0 {clear=1 instance_create(0,0,objLevelCleared)}
	}
	}

	if room=rmNewsPaperFloor2 {
	if instance_number(objEnemy)+instance_number(objKnockedOut)+instance_number(objEBullet)+instance_number(objPlayerDead)=0 and clear=0 {clear=1 instance_create(0,0,objFloorCleared)}
	}
	if room=rmNewsPaperFloor3 {
	if instance_number(objEnemy)+instance_number(objKnockedOut)+instance_number(objEBullet)+instance_number(objPlayerDead)=0 and clear=0 {clear=1 instance_create(0,0,objLevelCleared)}
	}

	if room=rmCasinoFloor1 {
	if instance_number(objEnemy)+instance_number(objKnockedOut)+instance_number(objEBullet)+instance_number(objPlayerDead)+instance_number(objWriterKillPunch)=0 and clear=0 {clear=1 instance_create(0,0,objFloorCleared)}
	}



}
