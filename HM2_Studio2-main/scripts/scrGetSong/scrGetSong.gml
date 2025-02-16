function scrGetSong() {
	switch (room)
	{
		// general song only stuff
		case rmFansHeadQuarters:
		case rmFansHeadQuarters3:
			return voyager;
			break;
		case rmFansHeadQuarters2:
			return evil;
			break;
		case rmFansHeadQuarters5:
			return RollerMobster;
			break;
		case rmFansLevel1Floor1:
		case rmFansLevel2Floor1:
		case rmFansLevel3Floor1:
		case rmMallFloor1:
		case rmHenchmanLevel1Floor1:
		case rmNewsPaperFloor1:
		case rmMethLabFloor1:
		case rmCasinoFloor1:
		case rmSewersEntrance:
		case rmBoatDock:
			return Dust;
			break;
		case rmDiner:
			return Technoir;
			break;
		case rmSonHideoutDownstairs1:
			return Remorse;
			break;
		case rmSonHideoutDownstairs2:
			return BurningCoals;
			break;
		case rmSonHideoutDownstairs3:
		case rmFansLevel5Outro2:
			return Interlude
			break;
		case rmCobraApartmentExit1:
			return Divide;
			break;
		case rmCobraApartmentExit2:
			return Frantic;
			break;
		case rm50BlessingsCobra :
			return Quixotic;
			break;
		case rmTalkShow: 
			return WouJuno;
			break;
		case rmCourtExit: 
			return NewWave;
			break;
		case rmTikiBar: 
			return Rust;
			break;
		case rmSwanApartment: 
			return Bloodline;
			break;

		//other WACKY THINGS!
		case rmPizzaPlace:
			objEffector.newsong = false; 
			global.song = Disturbance;
			return noone;
			break;
		case rmTattoo:
			objEffector.stopsong = true;
			objEffector.newsong = false;
			return noone;
			break;
		case rmHighwayNight: 
			objEffector.newsong = false;
			global.song = Hideout;
			return noone; 
			break;
		case rmHipsterBar:
			objEffector.newsong = false; 
			global.song = Blizzard; 
			return noone; 
			break;
		
		//another one
		case rmScore:
			switch (global.level)
			{
				case rmFansLevel2Floor1:
					return Sexualizer;
					break;
				case rmFansHeadQuarters5:
				case rmFansHeadQuarters:
					return HollywoodHeights;
					break;
				case rmCamp1:
				case rmOceanSide:
					return Rust;
					break;
				case rmCamp3Night:
				case rmEndCamp1:
				case rm50BlessingsOffice:
				case rmSwanApartment:
					return Interlude;
					break;
				case rmPizzaPlace:
				case rmTattoo:
				case rmHighwayNight:
				case rmHenchmanHomeFloor1:
				case rmHotelAftermath:
					return SheMeditates;
					break;
				case rmCrimeScene3Floor1:
				case rmFansLevel5Outro:
					return KeepCalm;
					break;
				case rmHipsterBar:
					return Around;
					break;
				case rmNickeStore:
					return Disturbance;
					break;
				case rmCobraApartment2:
					return MiamiJam;
					break;
				case rmPart:
					if (global.parttitle == "EXPOSITION")
						return Blizzard;
					else if (global.parttitle == "RISING")
						return Interlude;
					else if (global.parttitle == "CLIMAX")
						return Java;
					break;
			}
			break;
		case rmVHS:
			if (global.level == rmCobraApartment1)
				return MiamiJam;
			else if (global.level == rmFansHeadQuarters3)
				return Blizzard;
			break;
	}

	if (instance_exists(objLoadLevel))
	{
		objEffector.stopsong = true;
		objEffector.newsong = false; 
		return noone;
	}
}
