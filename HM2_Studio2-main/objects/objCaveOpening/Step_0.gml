if (objPlayer.y < 0) 
{
	objPlayer.active = false;
	objPlayer.dir = 90;
	objPlayer.aimon = false;
	objPlayer.y -= 1.5;
	objPlayer.image_index += 0.075;
	objPlayer.legindex += 0.125;

	if (objEffector.fade == 0) 
	{
		objEffector.fade = 1;
		objEffector.next = 1;
		objEffector.nextroom = rmPowerPlantOutro;
		objEffector.newsong = true;
		objEffector.song = Around;
	} 
	else
		objEffector.amount += 13.5;
}
