function scrWriterDropJacket() {
	if kills>=2 {
	if sprite_index=sprWriterWalkBat or sprite_index=sprWriterWalkPipe or sprite_index=sprWriterWalkChain or sprite_index=sprWriterWalkClub scrDropWeapon()
	if sprite_index=sprWriterWalkUnarmed {
	image_index=1
	sprite_index=sprWriterDropJacket
	image_speed=0.2
	}
	}

	if sprite_index=sprWriterDropJacket {
	if image_index>=7 and image_index-image_speed<7 {
	my_id=instance_create(x+lengthdir_x(23,dir-90*left),y+lengthdir_y(23,dir-90*left),objWriterJacket)
	my_id.direction=dir-90*left
	my_id.speed=1.5
	my_id.image_angle=dir
	}
	}



}
