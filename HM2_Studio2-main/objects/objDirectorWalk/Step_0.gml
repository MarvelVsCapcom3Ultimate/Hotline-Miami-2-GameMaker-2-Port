if (room == rmTutorialFloor2MovieSet) {
	if y<96 
	{
		y+=1 
		image_index+=0.15
	} 
	else 
	{
		if (talked == false)
		{
			talked = true; 
			scrGetMessage(1);
		} 
		else 
		{
			if (!instance_exists(objConversation))
			{
				objPKillRape.persistent = 0;
				objEffector.fade = 1; 
				objEffector.next = 1; 
				objEffector.nextroom = rmPart;
				objEffector.newsong = 1; 
				global.nextlevel = rmFansHeadQuarters; 
				global.title = "DOWN UNDER";
				global.subtitle = "1ST SCENE";
				global.parttitle = "EXPOSITION";
				global.partsubtitle = "First Act";
				objEffector.song = Blizzard;
			}
		}
	}
}