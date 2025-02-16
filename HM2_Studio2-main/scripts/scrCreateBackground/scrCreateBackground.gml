function scrCreateBackground() {
	if instance_exists(objNicke) return 0
	if room=rmSubway1 or room=rmSubwayPlatform or room=rmSubwayUpstairs1 or room=rmSubwayUpstairs2 {instance_create(0,0,objSewerBackground) return 0}
	if room=rmSewersFloor1 or room=rmSewersFloor2 {instance_create(0,0,objSewerBackground) return 0}
	if room=rm50Blessings1 or room=rm50Blessings2 or room=rm50Blessings3 or room=rm50Blessings4 {instance_create(0,0,objNewBGPig) return 0}
	if room=rmLSDIntro or room=rmLSDFloor1 {instance_create(0,0,objNewBGNormal) return 0}
	if room=rmBearBoss or instance_exists(objLSDBlend) {instance_create(0,0,objNewBGTiger) return 0}
	if room=rmCopApartment3Floor2Part2 or room=rmCopApartment3Floor1Part2 or room=rmNightmareFloor1 or room=rmNightmareFloor2 {instance_create(0,0,objNewBGPig) return 0}
	if room=rmBankVault {instance_create(0,0,objSewerBackground) return 0}
	if instance_exists(objSon) {instance_create(0,0,objNewBGSon) return 0}
	if instance_exists(objPigButcher) {instance_create(0,0,objNewBGPig) return 0}
	instance_create(0,0,objNewBGNormal)



}
