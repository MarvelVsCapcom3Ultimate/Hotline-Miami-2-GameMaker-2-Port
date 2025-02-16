function scrStartLevel(_levelindex, _intro) {
	global.done = false;
	scrInitScore()
	if (!_intro) 
	{
		switch (_levelindex)
		{
			default:
			case 0:
				global.level = rmTutorialFloor1;
				global.next = rmIntro;
				global.song = Detection;
				break;
			case 1:
				global.level = rmFansLevel1Floor1;
				global.next = rmScene;
				global.title = "DOWN UNDER";
				global.subtitle = "1ST SCENE";
				global.song = voyager;
				break;
			case 2:
				global.level = rmMallFloor1;
				global.next = rmScene;
				global.title = "HOMICIDE";
				global.subtitle = "2ND SCENE";
				global.song = Technoir;
				break;
			case 3:
				global.level = rmNewsPaperFloor1;
				global.next = rmScene;
				global.title = "HARD NEWS";
				global.subtitle = "3RD SCENE";
				global.song = Divide;
				break;
			case 4:
				global.level = rmPoliceStationFloor1;
				global.next = rmScene;
				global.title = "FINAL CUT";
				global.subtitle = "4TH SCENE";
				global.song = Videodrome;
				break;
			case 5:
				global.level = rmCasinoFloor1;
				global.next = rmScene;
				global.title = "FIRST TRIAL";
				global.subtitle = "5TH SCENE";
				global.song = NewWave;
				break;
			case 6:
				global.level = rmFansLevel3Floor1;
				global.next = rmScene;
				global.title = "MOVING UP";
				global.subtitle = "6TH SCENE";
				global.song = evil;
				break;
			case 7:
				global.level = rmHenchmanLevel1Floor1;
				global.next = rmScene;
				global.title = "NO MERCY";
				global.subtitle = "7TH SCENE";
				global.song = Remorse;
				break;
			case 8:
				global.level = rmFansLevel2Floor1;
				global.next = rmScene;
				global.title = "EXECUTION";
				global.subtitle = "8TH SCENE";
				global.song = Sexualizer;
				break;
			case 9:
				global.level = rmJungle1;
				global.next = rmCamp1;
				global.title = "AMBUSH";
				global.subtitle = "9TH SCENE";
				global.song = Rust;
				scrSetDates(01, 32, 17, 3, 1985, 01, 32, 17, 3, 1985, "HONOLULU, HAWAII", "HONOLULU, HAWAII");
				break;
			case 10:
				global.level = rmSewersEntrance;
				global.next = rmScene;
				global.title = "INTO THE PIT";
				global.subtitle = "10TH SCENE";
				global.song = voyager;
				break;
			case 11:
				global.level = rmBoatDock;
				global.next = rmScene;
				global.title = "DEAD AHEAD";
				global.subtitle = "11TH SCENE";
				global.song = Bloodline;
				break;
			case 12:
				global.level = rmFansLevel5Floor1;
				global.next = rmScene;
				global.title = "DEATH WISH";
				global.subtitle = "12TH SCENE";
				global.song = RollerMobster;
				break;
			case 13:
				global.level = rmSubwayPlatform;
				global.next = rmScene;
				global.title = "SUBWAY";
				global.subtitle = "13TH SCENE";
				global.song = Run;
				break;
			case 14:
				global.level = rmDayJungle1;
				global.next = rmOceanSide;
				global.title = "STRONGHOLD";
				global.subtitle = "14TH SCENE";
				global.song = Rust;
				break;
			case 15:
				global.level = rmMethLabFloor1;
				global.next = rmScene;
				global.title = "WITHDRAWAL";
				global.subtitle = "15TH SCENE";
				global.song = Quixotic
				break;
			case 16:
				global.level = rmPowerPlant2;
				global.next = rmCamp3Day;
				global.title = "CASUALTIES";
				global.subtitle = "16TH SCENE";
				global.song = WayHome;
				break;
			case 17:
				global.level = rmRatLevel1Floor1;
				global.next = rmScene;
				global.title = "FIRST BLOOD";
				global.subtitle = "17TH SCENE";
				global.song = voyager;
				break;
			case 18:
				global.level = rmRatLevel2Floor1;
				global.next = rmScene;
				global.title = "STAY DOWN";
				global.subtitle = "18TH SCENE";
				global.song = NARC;
				break;
			case 19:
				global.level = rmRatLevel3Floor1;
				global.next = rmScene;
				global.title = "HOUSE CALL";
				global.subtitle = "19TH SCENE";
				global.song = NARC;
				break;
			case 21:
				global.level = rmStripClubEntrance;
				global.next = rmScene;
				global.title = "SEIZURE";
				global.subtitle = "21ST SCENE";
				global.song = BurningCoals;
				break;
			case 22:
				global.level = rmBankEntrance;
				global.next = rmScene;
				global.title = "BLOOD MONEY";
				global.subtitle = "22ND SCENE";
				global.song = Interlude;
				break;
			case 23:
				global.level = rmNightmarePoliceOffice;
				global.next = rmScene;
				global.title = "CAUGHT";
				global.subtitle = "23RD SCENE";
				global.song = SlumLord;
				break;
			case 24:
				global.level = rmSonMansionFloor1;
				global.next = rmScene;
				global.title = "TAKE OVER";
				global.subtitle = "24TH SCENE";
				global.song = FutureClub;
				break;
			case 25:
				global.level = rmLSDIntro;
				global.next = rmScene;
				global.title = "APOCALYPSE";
				global.subtitle = "26th SCENE";
				global.song = Interlude;
				break;
			case 26:
				global.level = rm50Blessings1;
				global.next = rmScene;
				global.title = "THE ABYSS";
				global.subtitle = "BONUS SCENE";
				global.song = BlackTar;
				break;
		}
	} 
	else 
	{
		switch (_levelindex)
		{
			default:
			case 0:
				global.level = rmTutorialFloor1;
				global.next = rmIntro;
				global.song = Detection;
				break;
			case 1:
				global.level = rmFansLevel1Floor1;
				global.next = rmPart;
				global.nextlevel = rmFansHeadQuarters;
				global.title = "DOWN UNDER";
				global.subtitle = "1ST SCENE";
				global.parttitle = "EXPOSITION";
				global.partsubtitle = "First Act";
				global.song = Blizzard;
				scrSetDates(23,47,31,9,1991,23,47,31,9,1991,"MIAMI, FLORIDA","MIAMI, FLORIDA");
				break;
			case 2:
				global.level = rmMallFloor1;
				global.next = rmDiner;
				global.title = "HOMICIDE";
				global.subtitle = "4TH SCENE";
				global.song = Disturbance;
				scrSetDates(21,13,3,10,1991,21,13,3,10,1991,"MIAMI, FLORIDA","MIAMI, FLORIDA");
				break;
			case 3:
				global.level = rmNewsPaperFloor1;
				global.next = rmCobraApartment1;
				global.title = "HARD NEWS";
				global.subtitle = "4TH SCENE";
				global.song = MiamiJam;
				scrSetDates(21,13,3,10,1991,21,13,3,10,1991,"MIAMI, FLORIDA","MIAMI, FLORIDA");
				break;
			case 4:
				global.level = rmPoliceStationFloor1;
				global.next = rmTalkShow;
				global.title = "FINAL CUT";
				global.subtitle = "4TH SCENE";
				global.song = noone;
				break;
			case 5:
				global.level = rmCourt;
				global.next = rmPart;
				global.nextlevel = rmCourt;
				global.parttitle = "RISING";
				global.partsubtitle = "Second Act";
				global.title = "FIRST TRIAL";
				global.subtitle = "5TH SCENE";
				global.song = Interlude;
				break;
			case 6:
				global.level = rmFansLevel3Floor1;
				global.next = rmFansHeadQuarters2;
				global.title = "MOVING UP";
				global.subtitle = "6TH SCENE";
				global.song = Blizzard;
				scrSetDates(21,13,3,10,1991,21,13,3,10,1991,"MIAMI, FLORIDA","MIAMI, FLORIDA");
				break;
			case 7:
				global.level = rmHenchmanLevel1Floor1;
				global.next = rmSonHideout1;
				global.title = "NO MERCY";
				global.subtitle = "7TH SCENE";
				global.song = Hideout;
				break;
			case 8:
				global.level = rmFansLevel2Floor1
				global.next = rmScene
				global.title = "EXECUTION"
				global.subtitle = "8TH SCENE"
				global.song = Sexualizer;
				break;
			case 9:
				global.next = rmPart;
				global.level = rmJungle1;
				global.nextlevel = rmTikiBar;
				global.title = "AMBUSH";
				global.subtitle = "9TH SCENE";
				global.parttitle = "CLIMAX";
				global.partsubtitle = "Third Act";
				global.song = Java;
				scrSetDates(01,32,17,3,1985,01,32,17,3,1985,"HONOLULU, HAWAII","HONOLULU, HAWAII");
				break;
			case 10:
				global.level = rmSewersEntrance;
				global.next = rmFansHeadQuarters3;
				global.title = "INTO THE PIT";
				global.subtitle = "10TH SCENE";
				global.song = Blizzard;
				break;
			case 11:
				global.level = rmBoatDock;
				global.next = rmScene;
				global.title = "DEAD AHEAD";
				global.subtitle = "11TH SCENE";
				global.song = Bloodline;
				break;
			case 12:
				global.level = rmFansLevel5Floor1;
				global.next = rmFansHeadQuarters5;
				global.title = "DEATH WISH";
				global.subtitle = "12TH SCENE";
				global.song = HollywoodHeights;
				scrSetDates(23,47,31,9,1991,23,47,31,9,1991,"MIAMI, FLORIDA","MIAMI, FLORIDA");
				break;
			case 13:
				global.nextlevel = rmSubway1;
				global.level = rmSubwayPlatform;
				global.next = rmPart;
				global.parttitle = "FALLING";
				global.partsubtitle = "Fourth Act";
				global.title = "SUBWAY";
				global.subtitle = "13TH SCENE";
				global.song = Interlude;
				break;
			case 14:
				global.level = rmOceanSide;
				global.next = rmOceanSide;
				global.title = "STRONGHOLD";
				global.subtitle = "14TH SCENE";
				global.song = Rust;
				break;
			case 15:
				global.level = rmMethLabFloor1;
				global.next = rmCobraApartment2;
				global.title = "WITHDRAWAL";
				global.subtitle = "15TH SCENE";
				global.song = MiamiJam;
				break;
			case 16:
				global.level = rmCamp3Day;
				global.next = rmCamp3Night;
				global.title = "CASUALTIES";
				global.subtitle = "16TH SCENE";
				global.song = Interlude;
				break;
			case 17:
				global.level = rmRatLevel1Floor1;
				global.next = rmBikerBar;
				global.title = "FIRST BLOOD";
				global.subtitle = "17TH SCENE";
				global.song = Tempel;
				break;
			case 18:
				global.level = rmRatLevel2Floor1;
				global.next = rmScene;
				global.title = "STAY DOWN";
				global.subtitle = "18TH SCENE";
				global.song = NARC;
				break;
			case 19:
				global.level = rmRatLevel3Floor1;
				global.next = rmScene;
				global.title = "HOUSE CALL";
				global.subtitle = "19TH SCENE";
				global.song = NARC;
				break;
			case 21:
				global.level = rmStripClubEntrance;
				global.next = rmSonHideout2;
				global.title = "SEIZURE";
				global.subtitle = "21ST SCENE";
				global.song = MsMinnie;
				break;
			case 22:
				global.level = rmBankEntrance;
				global.next = rmSonHideout3;
				global.title = "BLOODMONEY";
				global.subtitle = "22ND SCENE";
				global.song = Hideout;
				break;
			case 23:
				global.level = rmNightmareFloor1;
				global.next = rmCopApartment3Floor2Part2;
				global.title = "CAUGHT";
				global.subtitle = "23RD SCENE";
				global.song = Interlude;
				break;
			case 24:
				global.level = rmSonMansionFloor1;
				global.next = rmScene;
				global.title = "TAKE OVER";
				global.subtitle = "24TH SCENE";
				global.song = FutureClub;
				break;
			case 25:
				global.level = rmLSDIntro;
				global.next = rmLSDIntro;
				global.title = "APOCALYPSE";
				global.subtitle = "26th SCENE";
				global.song = Interlude;
				break;
			case 26:
				global.level = rm50Blessings1;
				global.next = rmScene;
				global.title = "THE ABYSS";
				global.subtitle = "BONUS SCENE";
				global.song = Run;
				break;
		}
	}
}
