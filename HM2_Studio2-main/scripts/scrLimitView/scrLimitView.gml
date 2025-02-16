function scrLimitView() {
	if instance_exists(objJungleBG) {
	if room=rmOceanSide nothing=1 else {
	//if room=rmPowerPlantOutro and objEffector.fade=1 nothing=1 else {
	if __view_get( e__VW.XView, 0 )>room_width-__view_get( e__VW.WView, 0 )-12 __view_set( e__VW.XView, 0, room_width-__view_get( e__VW.WView, 0 )-12 )
	if __view_get( e__VW.YView, 0 )>room_height-__view_get( e__VW.HView, 0 )-12 __view_set( e__VW.YView, 0, room_height-__view_get( e__VW.HView, 0 )-12 )
	if __view_get( e__VW.XView, 0 )<12 __view_set( e__VW.XView, 0, 12 )
	if __view_get( e__VW.YView, 0 )<12 __view_set( e__VW.YView, 0, 12 )
	//}
	}
	}

	if room=rmNightmareFloor6 {
	if __view_get( e__VW.XView, 0 )<0 __view_set( e__VW.XView, 0, 0 )
	if __view_get( e__VW.XView, 0 )>room_width-__view_get( e__VW.WView, 0 ) __view_set( e__VW.XView, 0, room_width-__view_get( e__VW.WView, 0 ) )
	if __view_get( e__VW.YView, 0 )>room_height-__view_get( e__VW.HView, 0 )-4 __view_set( e__VW.YView, 0, room_height-__view_get( e__VW.HView, 0 )-4 ) 
	if __view_get( e__VW.Angle, 0 )>1.25 __view_set( e__VW.Angle, 0, 1.25 )
	if __view_get( e__VW.Angle, 0 )<-1.25 __view_set( e__VW.Angle, 0, -1.25 )
	}

	if room=rmNightmareFloor4 or room=rmNightmareFloor5 {
	if __view_get( e__VW.XView, 0 )<0 __view_set( e__VW.XView, 0, 0 )
	if __view_get( e__VW.YView, 0 )<4 __view_set( e__VW.YView, 0, 4 )
	if __view_get( e__VW.XView, 0 )>room_width-__view_get( e__VW.WView, 0 ) __view_set( e__VW.XView, 0, room_width-__view_get( e__VW.WView, 0 ) )
	if __view_get( e__VW.YView, 0 )>room_height-__view_get( e__VW.HView, 0 )-4 __view_set( e__VW.YView, 0, room_height-__view_get( e__VW.HView, 0 )-4 ) 
	if __view_get( e__VW.Angle, 0 )>1.25 __view_set( e__VW.Angle, 0, 1.25 )
	if __view_get( e__VW.Angle, 0 )<-1.25 __view_set( e__VW.Angle, 0, -1.25 )
	}

	if room=rmNightmarePoliceOffice {
	if __view_get( e__VW.XView, 0 )>room_width-__view_get( e__VW.WView, 0 ) __view_set( e__VW.XView, 0, room_width-__view_get( e__VW.WView, 0 ) )
	if __view_get( e__VW.Angle, 0 )>1.25 __view_set( e__VW.Angle, 0, 1.25 )
	if __view_get( e__VW.Angle, 0 )<-1.25 __view_set( e__VW.Angle, 0, -1.25 )
	}

	if room=rmSonMansionFloor4 {
	if __view_get( e__VW.XView, 0 )<0 __view_set( e__VW.XView, 0, 0 )
	if __view_get( e__VW.XView, 0 )>room_width-__view_get( e__VW.WView, 0 ) __view_set( e__VW.XView, 0, room_width-__view_get( e__VW.WView, 0 ) )
	if __view_get( e__VW.YView, 0 )>room_height-__view_get( e__VW.HView, 0 )-4 __view_set( e__VW.YView, 0, room_height-__view_get( e__VW.HView, 0 )-4 ) 
	if __view_get( e__VW.Angle, 0 )>1.25 __view_set( e__VW.Angle, 0, 1.25 )
	if __view_get( e__VW.Angle, 0 )<-1.25 __view_set( e__VW.Angle, 0, -1.25 )
	}

	if room=rmSonMansionFloor2 or room=rmSonMansionFloor3 {
	if __view_get( e__VW.XView, 0 )<0 __view_set( e__VW.XView, 0, 0 )
	if __view_get( e__VW.YView, 0 )<4 __view_set( e__VW.YView, 0, 4 )
	if __view_get( e__VW.XView, 0 )>room_width-__view_get( e__VW.WView, 0 ) __view_set( e__VW.XView, 0, room_width-__view_get( e__VW.WView, 0 ) )
	if __view_get( e__VW.YView, 0 )>room_height-__view_get( e__VW.HView, 0 )-4 __view_set( e__VW.YView, 0, room_height-__view_get( e__VW.HView, 0 )-4 ) 
	if __view_get( e__VW.Angle, 0 )>1.25 __view_set( e__VW.Angle, 0, 1.25 )
	if __view_get( e__VW.Angle, 0 )<-1.25 __view_set( e__VW.Angle, 0, -1.25 )
	}

	if room=rmSonMansionFloor1 {
	if __view_get( e__VW.XView, 0 )<0 __view_set( e__VW.XView, 0, 0 )
	if __view_get( e__VW.YView, 0 )<4 __view_set( e__VW.YView, 0, 4 )
	if __view_get( e__VW.XView, 0 )>room_width-__view_get( e__VW.WView, 0 ) __view_set( e__VW.XView, 0, room_width-__view_get( e__VW.WView, 0 ) )
	if __view_get( e__VW.Angle, 0 )>1.25 __view_set( e__VW.Angle, 0, 1.25 )
	if __view_get( e__VW.Angle, 0 )<-1.25 __view_set( e__VW.Angle, 0, -1.25 )
	}
	if room=rmLSDGate __view_set( e__VW.Angle, 0, 0 )

	if room=rmLSDIntro {
	if __view_get( e__VW.YView, 0 )<0 __view_set( e__VW.YView, 0, 0 )
	}

	if room=rmLSDRoof or room=rmLSDFloor1 or room=rmLSDFloor3 or room=rmLSDGate or room=rmZebraBossAftermath or room=rmTigersDen or room=rmSwanBoss or room=rmBearBoss or room=rmTigersDen or room=rmLSDFloor4 {
	if __view_get( e__VW.XView, 0 )<0 __view_set( e__VW.XView, 0, 0 )
	if __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )>room_width+25 __view_set( e__VW.XView, 0, room_width-__view_get( e__VW.WView, 0 )+25 )
	if __view_get( e__VW.YView, 0 )<0 __view_set( e__VW.YView, 0, 0 )
	if __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )>room_height+25 __view_set( e__VW.YView, 0, room_height-__view_get( e__VW.HView, 0 )+25 )
	}

	if room=rmBoatBelow1 or room=rmBoatBelow2 or room=rmBoatBelow3 {
	if __view_get( e__VW.XView, 0 )<36 __view_set( e__VW.XView, 0, 36 ) 
	if __view_get( e__VW.XView, 0 )>room_width-30-__view_get( e__VW.WView, 0 ) __view_set( e__VW.XView, 0, room_width-30-__view_get( e__VW.WView, 0 ) )
	if __view_get( e__VW.Angle, 0 )>1.25 __view_set( e__VW.Angle, 0, 1.25 )
	if __view_get( e__VW.Angle, 0 )<-1.25 __view_set( e__VW.Angle, 0, -1.25 )
	}

	if room=rmBoatDeck1 or room=rmBoatDeck2  {
	if __view_get( e__VW.XView, 0 )<8 __view_set( e__VW.XView, 0, 8 )
	if __view_get( e__VW.XView, 0 )>room_width-8-__view_get( e__VW.WView, 0 ) __view_set( e__VW.XView, 0, room_width-8-__view_get( e__VW.WView, 0 ) )
	if __view_get( e__VW.YView, 0 )>room_height-8-__view_get( e__VW.HView, 0 ) __view_set( e__VW.YView, 0, room_height-8-__view_get( e__VW.HView, 0 ) )
	}

	if room=rmBoatDock {
	if __view_get( e__VW.XView, 0 )<8 __view_set( e__VW.XView, 0, 8 )
	if __view_get( e__VW.XView, 0 )>room_width-8-__view_get( e__VW.WView, 0 ) __view_set( e__VW.XView, 0, room_width-8-__view_get( e__VW.WView, 0 ) )
	if __view_get( e__VW.YView, 0 )<5 __view_set( e__VW.YView, 0, 5 )
	if __view_get( e__VW.YView, 0 )>room_height-8-__view_get( e__VW.HView, 0 ) __view_set( e__VW.YView, 0, room_height-8-__view_get( e__VW.HView, 0 ) )
	}

	if room=rmFansLevel5Roof {
	if __view_get( e__VW.XView, 0 )<12 __view_set( e__VW.XView, 0, 12 )
	if __view_get( e__VW.YView, 0 )<12 __view_set( e__VW.YView, 0, 12 )
	}

	if room=rmOceanSide {
	if __view_get( e__VW.YView, 0 )+objEffector.blackx<0 __view_set( e__VW.YView, 0, 0-objEffector.blackx )
	if __view_get( e__VW.YView, 0 )>objEffector.blackx*1.5 __view_set( e__VW.YView, 0, objEffector.blackx*1.5 )
	if __view_get( e__VW.XView, 0 )<0 __view_set( e__VW.XView, 0, 0 )
	if __view_get( e__VW.XView, 0 )>room_width-__view_get( e__VW.WView, 0 ) __view_set( e__VW.XView, 0, room_width-__view_get( e__VW.WView, 0 ) )
	__view_set( e__VW.Angle, 0, 0 )
	}

	if room=rmBankVault {
	if __view_get( e__VW.XView, 0 )<36 __view_set( e__VW.XView, 0, 36 )
	if __view_get( e__VW.Angle, 0 )>1.25 __view_set( e__VW.Angle, 0, 1.25 )
	if __view_get( e__VW.Angle, 0 )<-1.25 __view_set( e__VW.Angle, 0, -1.25 )
	}
	if room=rmBankEntrance {
	if __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )>648 __view_set( e__VW.YView, 0, 648-__view_get( e__VW.HView, 0 ) )
	if __view_get( e__VW.YView, 0 )<32 __view_set( e__VW.YView, 0, 32 )
	if __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )>1192 __view_set( e__VW.XView, 0, 1192-__view_get( e__VW.WView, 0 ) )
	if __view_get( e__VW.Angle, 0 )>1.25 __view_set( e__VW.Angle, 0, 1.25 )
	if __view_get( e__VW.Angle, 0 )<-1.25 __view_set( e__VW.Angle, 0, -1.25 )
	}

	if room=rmBankSideRoom{
	if __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )>648 __view_set( e__VW.YView, 0, 648-__view_get( e__VW.HView, 0 ) )
	if __view_get( e__VW.XView, 0 )<256 __view_set( e__VW.XView, 0, 256 )
	if __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )>1032 __view_set( e__VW.XView, 0, 1032-__view_get( e__VW.WView, 0 ) )
	if __view_get( e__VW.Angle, 0 )>1.25 __view_set( e__VW.Angle, 0, 1.25 )
	if __view_get( e__VW.Angle, 0 )<-1.25 __view_set( e__VW.Angle, 0, -1.25 )
	}

	if room=rmBankBackRoom {
	if __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )>648 __view_set( e__VW.YView, 0, 648-__view_get( e__VW.HView, 0 ) )
	if __view_get( e__VW.YView, 0 )<32 __view_set( e__VW.YView, 0, 32 )
	if __view_get( e__VW.XView, 0 )<32 __view_set( e__VW.XView, 0, 32 )
	if __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )>1096 __view_set( e__VW.XView, 0, 1096-__view_get( e__VW.WView, 0 ) )
	if __view_get( e__VW.Angle, 0 )>1.25 __view_set( e__VW.Angle, 0, 1.25 )
	if __view_get( e__VW.Angle, 0 )<-1.25 __view_set( e__VW.Angle, 0, -1.25 )
	}

	if room=rmStripClubEntrance {
	if __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )>612 __view_set( e__VW.XView, 0, 612-__view_get( e__VW.WView, 0 ) )
	if __view_get( e__VW.YView, 0 )<4 __view_set( e__VW.YView, 0, 4 )
	if __view_get( e__VW.Angle, 0 )>1.25 __view_set( e__VW.Angle, 0, 1.25 )
	if __view_get( e__VW.Angle, 0 )<-1.25 __view_set( e__VW.Angle, 0, -1.25 )
	}

	if room=rmStripClubBackRoom {
	if __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )>612 __view_set( e__VW.YView, 0, 612-__view_get( e__VW.HView, 0 ) )
	if __view_get( e__VW.Angle, 0 )>1.25 __view_set( e__VW.Angle, 0, 1.25 )
	if __view_get( e__VW.Angle, 0 )<-1.25 __view_set( e__VW.Angle, 0, -1.25 )
	}

	if room=rmStripClubChangingRoom {
	if __view_get( e__VW.XView, 0 )<36 __view_set( e__VW.XView, 0, 36 )
	if __view_get( e__VW.Angle, 0 )>1.25 __view_set( e__VW.Angle, 0, 1.25 )
	if __view_get( e__VW.Angle, 0 )<-1.25 __view_set( e__VW.Angle, 0, -1.25 )
	}

	if room=rm50Blessings1 {
	if __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )>994 __view_set( e__VW.XView, 0, 994-__view_get( e__VW.WView, 0 ) )
	}

	if room=rm50Blessings2 {
	if __view_get( e__VW.XView, 0 )<36 __view_set( e__VW.XView, 0, 36 )
	if __view_get( e__VW.YView, 0 )<20 __view_set( e__VW.YView, 0, 20 )
	}

	if room=rm50Blessings3 {
	if __view_get( e__VW.YView, 0 )<68 __view_set( e__VW.YView, 0, 68 )
	if __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )>764 __view_set( e__VW.YView, 0, 764-__view_get( e__VW.HView, 0 ) )
	}

	if room=rm50Blessings4 {
	if __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )>388 __view_set( e__VW.YView, 0, 388-__view_get( e__VW.HView, 0 ) )
	}


	if room=rmSubwayUpstairs2 {
	if __view_get( e__VW.XView, 0 )<136 __view_set( e__VW.XView, 0, 136 )
	if __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )>room_width-2 __view_set( e__VW.XView, 0, room_width-2-__view_get( e__VW.WView, 0 ) )
	if __view_get( e__VW.YView, 0 )<2 __view_set( e__VW.YView, 0, 2 )
	if __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )>room_height-2 __view_set( e__VW.YView, 0, room_height-2-__view_get( e__VW.HView, 0 ) )
	}

	if room=rmSubwayUpstairs1 {
	if __view_get( e__VW.XView, 0 )<288 __view_set( e__VW.XView, 0, 288 )
	if __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )>room_width-2 __view_set( e__VW.XView, 0, room_width-2-__view_get( e__VW.WView, 0 ) )
	if __view_get( e__VW.YView, 0 )<2 __view_set( e__VW.YView, 0, 2 )
	if __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )>room_height-2 __view_set( e__VW.YView, 0, room_height-2-__view_get( e__VW.HView, 0 ) )
	}

	if room=rmSubwayPlatform {
	if __view_get( e__VW.XView, 0 )<2 __view_set( e__VW.XView, 0, 2 )
	if __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )>room_width-2 __view_set( e__VW.XView, 0, room_width-2-__view_get( e__VW.WView, 0 ) )
	if __view_get( e__VW.YView, 0 )<2 __view_set( e__VW.YView, 0, 2 )
	if __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )>room_height-2 __view_set( e__VW.YView, 0, room_height-2-__view_get( e__VW.HView, 0 ) )
	}

	if room=rmPoliceStationFloor2Part1 {
	if __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )>990 __view_set( e__VW.XView, 0, 990-__view_get( e__VW.WView, 0 ) )
	}
	if room=rmPoliceStationFloor2Part2 {
	if __view_get( e__VW.XView, 0 )<34 __view_set( e__VW.XView, 0, 34 )
	}
	if room=rmCourt {
	if __view_get( e__VW.XView, 0 )<2 __view_set( e__VW.XView, 0, 2 )
	if __view_get( e__VW.Angle, 0 )>1.25 __view_set( e__VW.Angle, 0, 1.25 )
	if __view_get( e__VW.Angle, 0 )<-1.25 __view_set( e__VW.Angle, 0, -1.25 )
	}
	if room=rmCourtExit {
	//if view_xview[0]<2 view_xview[0]=2
	if __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )>702 __view_set( e__VW.XView, 0, 702-__view_get( e__VW.WView, 0 ) )
	if __view_get( e__VW.YView, 0 )<16 __view_set( e__VW.YView, 0, 16 )
	}

	if room=rmSubway1 {
	if __view_get( e__VW.XView, 0 )<2 __view_set( e__VW.XView, 0, 2 )
	if __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )>room_width-2 __view_set( e__VW.XView, 0, room_width-__view_get( e__VW.WView, 0 )-2 )
	}

	if room=rmHenchmanLevel1Floor1 {
	if __view_get( e__VW.XView, 0 )<34 __view_set( e__VW.XView, 0, 34 )
	if __view_get( e__VW.XView, 0 )>774-__view_get( e__VW.WView, 0 )  __view_set( e__VW.XView, 0, 774-__view_get( e__VW.WView, 0 ) ) 
	}

	if  room=rmHenchmanLevel1Floor2  {
	if __view_get( e__VW.XView, 0 )>774-__view_get( e__VW.WView, 0 ) __view_set( e__VW.XView, 0, 774-__view_get( e__VW.WView, 0 ) ) 
	}

	if room=rmHenchmanLevel1Floor3 {
	if __view_get( e__VW.XView, 0 )<34 __view_set( e__VW.XView, 0, 34 )
	}

	if room=rmHighwayNight {
	if __view_get( e__VW.XView, 0 )<0 __view_set( e__VW.XView, 0, 0 )
	if __view_get( e__VW.YView, 0 )<0 __view_set( e__VW.YView, 0, 0 )
	if __view_get( e__VW.XView, 0 )>0 __view_set( e__VW.XView, 0, 0 )
	if __view_get( e__VW.YView, 0 )>0 __view_set( e__VW.YView, 0, 0 )
	__view_set( e__VW.Angle, 0, 0 )
	}

	if room=rmSewersFloor1 or room=rmSewersFloor2 {
	if __view_get( e__VW.XView, 0 )<8 __view_set( e__VW.XView, 0, 8 )
	if __view_get( e__VW.YView, 0 )<8 __view_set( e__VW.YView, 0, 8 )
	if __view_get( e__VW.XView, 0 )>792-__view_get( e__VW.WView, 0 ) __view_set( e__VW.XView, 0, 792-__view_get( e__VW.WView, 0 ) )
	if __view_get( e__VW.YView, 0 )>792-__view_get( e__VW.HView, 0 ) __view_set( e__VW.YView, 0, 792-__view_get( e__VW.HView, 0 ) )
	if __view_get( e__VW.Angle, 0 )>1.25 __view_set( e__VW.Angle, 0, 1.25 )
	if __view_get( e__VW.Angle, 0 )<-1.25 __view_set( e__VW.Angle, 0, -1.25 )
	}
	/*
	if room=rmTigersDen {
	if view_xview[0]<8 view_xview[0]=8
	if view_yview[0]<8 view_yview[0]=8
	if view_yview[0]+view_hview[0]>room_height-8 view_yview[0]=room_height-view_hview[0]-8
	}
	*/



}
