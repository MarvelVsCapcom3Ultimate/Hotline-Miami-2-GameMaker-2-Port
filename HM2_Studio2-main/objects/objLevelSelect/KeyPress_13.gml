if (fade = 1)
	exit;
if (select > 9)
	exit;
if (introquery = 0)
{
	introquery = 1;
	exit;
}
if (!intro) 
{
	switch (select)
	{
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
			global.song = noone;
			break;
		case 5:
			global.level = rmCasinoFloor1;
			global.next = rmScene;
			global.title = "TRIAL & ERROR";
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
			global.title = "GREEN INFERNO";
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
	}
	fade = true;
}
else 
{
	switch (select) 
	{
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
			global.parttitle = "INTRODUCTIONS";
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
			global.parttitle = "BLOOD&SWEAT";
			global.partsubtitle = "Second Act";
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
			global.level = rmFansLevel2Floor1;
			global.next = rmScene;
			global.title = "EXECUTION";
			global.subtitle = "8TH SCENE";
			global.song = Sexualizer;
			break;
		case 9:
			global.next = rmPart;
			global.level = rmJungle1;
			global.nextlevel = rmCamp1;
			global.title = "GREEN INFERNO";
			global.subtitle = "9TH SCENE";
			global.parttitle = "BEGIN&END";
			global.partsubtitle = "Third Act";
			global.song = Rust;
			scrSetDates(01,32,17,3,1985,01,32,17,3,1985,"HONOLULU, HAWAII","HONOLULU, HAWAII");
			break;
		case 10:
			global.level = rmSewersEntrance;
			global.next = rmScene;
			global.title = "INTO THE PIT";
			global.subtitle = "10TH SCENE";
			global.song = voyager;
			break;
	}
	fade = true;
}

