function scrSwanLockOn() {
	enemy=instance_nearest(global.mousex,global.mousey,objEnemy) //instance_nearest(global.mousex,global.mousey,objEnemy)
	if instance_exists(enemy) {if point_distance(global.mousex,global.mousey,enemy.x,enemy.y)>64 enemy=-1234}
	if !instance_exists(enemy) enemy=-1234



}
