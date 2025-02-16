function scrCrawlKill() {
	if sprite_index=sprVictim5Crawl {
	if place_meeting(x,y,objPlayer) {
	with objPlayer instance_destroy()
	my_id=instance_create(x,y,objPKillRape)
	my_id.image_angle=image_angle
	instance_destroy()
	}
	}



}
