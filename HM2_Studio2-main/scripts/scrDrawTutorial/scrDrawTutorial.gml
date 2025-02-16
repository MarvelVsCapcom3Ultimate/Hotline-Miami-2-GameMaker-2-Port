function scrDrawTutorial() {
	tutorialtext=""
	if tutorialtime>0 tutorialtime-=1 else tutorialtime=240
	if room=rmTutorialFloor1 {
	if instance_exists(objVictim3) {if point_distance(objPlayer.x,objPlayer.y,objVictim3.x,objVictim3.y)>72 tutorialtext="WALK WITH [WASD]" else tutorialtext="USE THE DOOR TO KNOCK HIM OUT"}
	if instance_exists(objVictim3KnockedOut) or instance_exists(objPigKillStomp) or instance_exists(objPigKillBlunt) {tutorialtext="PRESS [SPACE] TO EXECUTE KNOCKED OUT ENEMIES"}
	if instance_number(objVictim3)+instance_number(objVictim3KnockedOut)=0 and instance_exists(objPigButcher) {tutorialtext="HOLD [SHIFT] TO LOOK AROUND" if instance_exists(objHammer) {if point_distance(objPlayer.x,objPlayer.y,objHammer.x,objHammer.y)<48 tutorialtext="USE [RMB] TO PICK UP HAMMER"} tutorialtime=240}
	if !instance_exists(objHammer) {if tutorialtime>120 tutorialtext="SWING WEAPON WITH [LMB]" else tutorialtext="THROW WEAPON WITH [RMB]"}
	if instance_number(objDeadBody)>1 {tutorialtext="KILL EVERYONE AND PROCEED TO THE NEXT FLOOR"}
	if instance_number(objEnemy)+instance_number(objKnockedOut)=0 tutorialtext="PROCEED TO THE NEXT FLOOR"
	}
	if room=rmTutorialFloor2 {
	if instance_exists(objShotgunWall) {tutorialtext="PICK UP THE SHOTGUN" tutorialtime=240}
	if instance_exists(objPigButcher) {if objPigButcher.sprite_index=sprPigWalkDoubleBarrel or sprite_index=sprPigAttackDoubleBarrel1 or sprite_index=sprPigAttackDoubleBarrel2 {if (!instance_exists(global.enemy)) and (instance_exists(objVictim6)) {if tutorialtime>120 tutorialtext="HOLD MOUSE OVER ENEMY" else tutorialtext="PRESS [SCROLL WHEEL] TO LOCK ON"} else tutorialtext="PRESS [LMB] TO SHOOT"}}
	if instance_number(objEnemy)=0 and instance_exists(objEnemyCrawl) tutorialtext="FINISH HER"
	if instance_exists(objPKillRape) tutorialtext=""
	}
	if instance_exists(objPlayerZebra) {
	tutorialtext="HOLD [SPACE] TO ROLL"
	}
	if instance_exists(objPlayerBear) {
	if objPlayerBear.sprite_index=sprBearWalkSpecial {
	tutorialtime+=0.5
	if tutorialtime>120 tutorialtext="HOLD [RMB] TO AIM LEFT AND RIGHT"
	if tutorialtime<=120 tutorialtext="HOLD [RMB]+[SHIFT] TO AIM FORWARD AND BACK"
	}
	}
	if instance_exists(objPlayerSwanChainsaw) {
	tutorialtime+=0.5
	if tutorialtime>160 tutorialtext="PRESS [RMB] TO SHOOT GUN"
	if tutorialtime>=80 and tutorialtime<=160 tutorialtext="PRESS [LMB] TO SWING CHAINSAW"
	if tutorialtime<80 tutorialtext="2ND SWAN PICKS UP GUNS WHEN OUT OF AMMO"
	}
	if string_length(tutorialtext)>0 {
	if blink>0 blink-=0.05
	draw_set_font(fntEditor)
	draw_set_color(merge_color(c_black,c_red,blink))
	draw_set_halign(fa_center)
	draw_set_valign(fa_top)
	draw_rectangle(__view_get( e__VW.WView, 0 )/2-string_width(string_hash_to_newline(tutorialtext))*0.5-6,__view_get( e__VW.HView, 0 )*0.9+2,__view_get( e__VW.WView, 0 )/2+string_width(string_hash_to_newline(tutorialtext))*0.5+6,__view_get( e__VW.HView, 0 )*0.9+16,0)
	draw_set_color(merge_color(c_dkgray,c_teal,0.5+lengthdir_x(0.5,global.dir)))
	draw_text_transformed(__view_get( e__VW.WView, 0 )/2+1,__view_get( e__VW.HView, 0 )*0.9+1,string_hash_to_newline(tutorialtext),1+blink*0.1,1+blink*0.1,0)
	draw_set_color(merge_color(c_white,c_fuchsia,0.25+lengthdir_x(0.25,global.dir)))
	draw_text_transformed(__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.HView, 0 )*0.9,string_hash_to_newline(tutorialtext),1+blink*0.1,1+blink*0.1,0)
	}
	if tutorialtext=lasttutorial nothing=1 else blink=1
	lasttutorial=tutorialtext



}
