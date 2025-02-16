global.test=0
with myfloor {
if place_meeting(x,y,objPlayer) {scrCenterOn(objPlayer.x,objPlayer.y) global.test=1} else global.test=0
}
wait=global.test
