function scrDrawArrows() {
	if room=rmTutorialFloor1 {
	if instance_exists(objVictim3) draw_sprite(sprArrow,3,objVictim3.x,objVictim3.y-24+lengthdir_x(1,global.dir*8))
	if instance_exists(objVictim3KnockedOut) draw_sprite(sprArrow,2,objVictim3KnockedOut.x+24+lengthdir_x(1,global.dir*8),objVictim3KnockedOut.y)
	if instance_number(objVictim3)+instance_number(objVictim3KnockedOut)=0 and instance_exists(objPigButcher) and instance_exists(objHammer) {draw_sprite(sprArrow,1,objHammer.x,objHammer.y+16+lengthdir_x(1,global.dir*8))}
	//if !instance_exists(objHammer) {if tutorialtime>0 tutorialtime-=1 else tutorialtime=240 if tutorialtime>120 tutorialtext="SWING WEAPON WITH [LMB}" else tutorialtext="THROW WEAPON WITH [RMB]"}
	if instance_number(objDeadBody)>1 {with objEnemy draw_sprite(sprArrow,3,x,y-24+lengthdir_x(1,global.dir*8)) with objKnockedOut draw_sprite(sprArrow,1,x,y-24+lengthdir_x(1,global.dir*8))}
	}
	if room=rmTutorialFloor2 {
	if instance_exists(objShotgunWall) {if !instance_exists(objPKillRape) draw_sprite(sprArrow,3,objShotgunWall.x,objShotgunWall.y-24+lengthdir_x(1,global.dir*8))}
	if !instance_exists(objShotgunWall) {if instance_exists(objVictim6) draw_sprite(sprArrow,1,objVictim6.x,objVictim6.y+24+lengthdir_x(1,global.dir*8))}
	if instance_number(objEnemy)=0 and instance_exists(objEnemyCrawl) draw_sprite(sprArrow,3,objEnemyCrawl.x,objEnemyCrawl.y-24+lengthdir_x(1,global.dir*8))
	}
	if room=rmFansLevel2Floor1 {
	if instance_exists(objHenchmanDie) {
	if objHenchmanDie.on=0 draw_sprite(sprArrow,2,objHenchmanDie.x+24+lengthdir_x(1,global.dir*8),objHenchmanDie.y)
	}
	}
	if room=rmFansHeadQuarters {
	if !instance_exists(objConversation) {
	draw_sprite(sprArrow,2,objFansVan.x+35+lengthdir_x(1,global.dir*8),objFansVan.y)
	}
	}



}
