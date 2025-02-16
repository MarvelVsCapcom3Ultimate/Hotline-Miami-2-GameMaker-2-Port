function scrGetNextRoom() {
	if room=rmTalkShow {global.level=rmPoliceStationFloor1 return rmPoliceStationFloor1}
	if room=rmFansLevel1Floor1 {global.level=rmPizzaPlace return rmScore}
	if room=rmFansLevel2Floor1 {global.title="GREEN INFERNO" global.subtitle="9TH SCENE" global.level=rmPart global.nextlevel=rmTikiBar global.parttilte="CLIMAX" global.partsubtitle="Third Act" return rmScore}
	if room=rmFansLevel3Floor1 {global.level=rmHighwayNight return rmScore}
	if room=rmFansHeadQuarters {global.title="DOWN UNDER" global.subtitle="1ST SCENE" global.level=rmFansLevel1Floor1 return rmScene }
	if room=rmFansHeadQuarters2 {global.title="MOVING UP" global.subtitle="6TH SCENE" global.level=rmFansLevel3Floor1 return rmScene }
	if room=rmFansHeadQuarters3 {global.title="INTO THE PIT" global.subtitle="10TH SCENE" global.level=rmSewersEntrance return rmScene}
	if room=rmFansHeadQuarters5 {global.title="DEATH WISH" global.subtitle="12TH SCENE" global.level=rmFansLevel5Floor1 return rmScene}
	if room=rmPizzaPlace {global.level=rmDiner return rmReturn}
	if room=rmHighwayNight {global.level=rmSonHideout1 return rmReturn}
	if room=rmDiner {global.title="HOMICIDE" global.subtitle="2ND SCENE" global.level=rmMallFloor1 return rmScene}
	if room=rmMallFloor1 {global.rewind=1 global.level=rmVHS return rmScore}
	if room=rmCobraApartmentExit1 {global.title="HARD NEWS" global.subtitle="3RD SCENE" global.level=rmNewsPaperFloor1 return rmScene }
	if room=rmCobraApartmentExit2 return rm50BlessingsCobra
	if room=rm50BlessingsCobra {global.title="WITHDRAWAL" global.subtitle="15TH SCENE" global.level=rmMethLabFloor1 return rmScene }
	if room=rmNewsPaperFloor1 {global.level=rmTattoo return rmScore}
	if room=rmTattoo {global.level=rmPoliceStationFloor1 return rmTalkShow}
	if room=rmHenchmanLevel1Floor1 {global.level=rmHenchmanHomeFloor1 return rmScore}
	if room=rmSonHideoutDownstairs1 {global.title="NO MERCY" global.subtitle="7TH SCENE" global.level=rmHenchmanLevel1Floor1 return rmScene }
	if room=rmSonHideoutDownstairs2 {global.title="SEIZURE" global.subtitle="21ST SCENE" global.level=rmStripClubEntrance return rmScene }
	if room=rmSonHideoutDownstairs3 {global.title="BLOODMONEY" global.subtitle="22ND SCENE" global.level=rmBankEntrance return rmScene }
	if room=rmCourtExit {global.title="FIRST TRIAL" global.subtitle="5TH SCENE" global.level=rmCasinoFloor1 return rmScene}
	if room=rmCasinoFloor1 {global.title="MOVING UP" global.subtitle="6TH SCENE" global.level=rmHipsterBar return rmScore}
	if room=rmHipsterBar {global.level=rmFansHeadQuarters2 return rmReturn}
	if room=rmTikiBar {global.title="GREEN INFERNO" global.subtitle="9TH SCENE" global.level=rmJungle1 return rmCamp1 }
	if room=rmSewersEntrance {global.level=rmSwanApartment return rmScore}
	if room=rmSwanApartment {global.level=rmBoatDock global.title="DEAD AHEAD" global.subtitle="11TH SCENE" return rmScene}
	if room=rmBoatDock {global.level=rmFansHeadQuarters5 return rmScore}
	if room=rmSubwayUpstairs2 {global.level=rmBikerBar return rmScore}
	if room=rmMethLabFloor1 {global.level=rm50BlessingsOffice return rmScore}
	if room=rmCrimeScene3Floor1 {global.level=rmCopApartment3Floor1 return rmReturn}
	if room=rmCopApartment3Floor1Part2 {global.title="CAUGHT" global.subtitle="23RD SCENE" global.level=rmNightmareFloor1 return rmScene}
	if room=rmFansLevel5Outro2 {global.parttitle="FALLING" global.partsubtitle="Fourth Act" global.title="SUBWAY" global.parttitle="13TH SCENE" global.nextlevel=rmSubway1 return rmPart}
	if instance_exists(objLoadLevel) return rmEditor



}
