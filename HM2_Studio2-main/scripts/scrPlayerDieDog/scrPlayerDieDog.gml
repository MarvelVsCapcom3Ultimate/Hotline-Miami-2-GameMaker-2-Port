function scrPlayerDieDog() {
	my_id=instance_create(objPlayer.x,objPlayer.y,objPlayerDieDog)
	my_id.direction=direction
	my_id.image_angle=direction
	my_id.speed=3
	my_id.sprite_index=sprPlayerDeadDog
	my_id.alarm[0]=10
	sound_play(sndDogRip)
	with objPlayer {if object_index=objPlayerDieDog nothing=1 else instance_destroy()}



}
