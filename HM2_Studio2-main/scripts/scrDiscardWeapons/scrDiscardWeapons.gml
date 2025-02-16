function scrDiscardWeapons() {
	if sprite_index=sprWriterDisarmM16 {
	if image_index>=6 and image_index-image_speed<6 {
	my_id=instance_create(x+lengthdir_x(8,dir+90*left)+lengthdir_x(5,dir),y+lengthdir_y(8,dir+90*left)+lengthdir_y(5,dir),objGunClip)
	my_id.image_index=2
	my_id.speed=3.5
	my_id.direction=dir+90*left-20+random(40)
	}
	if image_index>=6 and image_index-image_speed<6 {
	my_id=instance_create(x+lengthdir_x(8,dir-90*left)+lengthdir_x(5,dir),y+lengthdir_y(8,dir-90*left)+lengthdir_y(5,dir),objDiscardedGun)
	my_id.image_index=2
	my_id.speed=3.5
	my_id.direction=dir-90*left-20+random(40)
	sound_play(sndReloadClip)
	}
	}

	if sprite_index=sprWriterDisarmSilencer {
	if image_index>=6 and image_index-image_speed<6 {
	my_id=instance_create(x+lengthdir_x(8,dir+90*left)+lengthdir_x(5,dir),y+lengthdir_y(8,dir+90*left)+lengthdir_y(5,dir),objGunClip)
	my_id.image_index=3
	my_id.speed=3.5
	my_id.direction=dir+90*left-20+random(40)
	}
	if image_index>=6 and image_index-image_speed<6 {
	my_id=instance_create(x+lengthdir_x(8,dir-90*left)+lengthdir_x(5,dir),y+lengthdir_y(8,dir-90*left)+lengthdir_y(5,dir),objDiscardedGun)
	my_id.image_index=3
	my_id.speed=3.5
	my_id.direction=dir-90*left-20+random(40)
	sound_play(sndReloadClip)
	}
	}

	if sprite_index=sprWriterDisarm9mm {
	if image_index>=6 and image_index-image_speed<6 {
	my_id=instance_create(x+lengthdir_x(8,dir+90*left)+lengthdir_x(5,dir),y+lengthdir_y(8,dir+90*left)+lengthdir_y(5,dir),objGunClip)
	my_id.image_index=3
	my_id.speed=3.5
	my_id.direction=dir+90*left-20+random(40)
	}
	if image_index>=6 and image_index-image_speed<6 {
	my_id=instance_create(x+lengthdir_x(8,dir-90*left)+lengthdir_x(5,dir),y+lengthdir_y(8,dir-90*left)+lengthdir_y(5,dir),objDiscardedGun)
	my_id.image_index=6
	my_id.speed=3.5
	my_id.direction=dir-90*left-20+random(40)
	sound_play(sndReloadClip)
	}
	}

	if sprite_index=sprWriterDisarmShotgun {
	if image_index>=6 and image_index-image_speed<6 {
	if ammo>0 {
	ammo-=1
	image_index=0
	my_id=instance_create(x+lengthdir_x(5,dir-5*image_yscale),y+lengthdir_y(5,dir-5*image_yscale),objShell)
	my_id.sprite_index=sprShotgunShell
	my_id.image_angle=dir
	my_id.direction=dir-90*image_yscale-20+random(30)
	my_id.speed=1+random(3)
	sound_play(sndInsertShell)
	} else {
	my_id=instance_create(x+lengthdir_x(8,dir-90*left)+lengthdir_x(5,dir),y+lengthdir_y(8,dir-90*left)+lengthdir_y(5,dir),objDiscardedGun)
	my_id.image_index=4
	my_id.speed=1
	my_id.direction=random(360)
	}
	}
	}

	if sprite_index=sprWriterDisarmUzi {
	if image_index>=6 and image_index-image_speed<6 {
	my_id=instance_create(x+lengthdir_x(8,dir+90*left)+lengthdir_x(5,dir),y+lengthdir_y(8,dir+90*left)+lengthdir_y(5,dir),objGunClip)
	my_id.image_index=1
	my_id.speed=3.5
	my_id.direction=dir+90*left-20+random(40)
	}
	if image_index>=6 and image_index-image_speed<6 {
	my_id=instance_create(x+lengthdir_x(8,dir-90*left)+lengthdir_x(5,dir),y+lengthdir_y(8,dir-90*left)+lengthdir_y(5,dir),objDiscardedGun)
	my_id.image_index=1
	my_id.speed=3.5
	my_id.direction=dir-90*left-20+random(40)
	}
	}

	if sprite_index=sprWriterDisarmDoubleBarrel {
	if image_index>=2 and image_index-image_speed<2 {
	repeat (2) {
	my_id=instance_create(x+lengthdir_x(5,dir),y+lengthdir_y(5,dir),objShell)
	my_id.sprite_index=sprShotgunShell
	my_id.image_angle=random(360)
	my_id.direction=my_id.image_angle
	my_id.speed=1+random(3)
	}
	sound_play(sndReloadClip)
	}
	if image_index>=6 and image_index-image_speed<6 {
	my_id=instance_create(x+lengthdir_x(8,dir-90*left)+lengthdir_x(5,dir),y+lengthdir_y(8,dir-90*left)+lengthdir_y(5,dir),objDiscardedGun)
	my_id.image_index=5
	my_id.speed=3.5
	my_id.direction=dir-90*left-20+random(40)
	}
	}

	if sprite_index=sprWriterDisarmKalashnikov {
	if image_index>=6 and image_index-image_speed<6 {
	my_id=instance_create(x+lengthdir_x(8,dir+90*left)+lengthdir_x(5,dir),y+lengthdir_y(8,dir+90*left)+lengthdir_y(5,dir),objGunClip)
	my_id.image_index=0
	my_id.speed=3.5
	my_id.direction=dir+90*left-20+random(40)
	}
	if image_index>=6 and image_index-image_speed<6 {
	my_id=instance_create(x+lengthdir_x(8,dir-90*left)+lengthdir_x(5,dir),y+lengthdir_y(8,dir-90*left)+lengthdir_y(5,dir),objDiscardedGun)
	my_id.image_index=0
	my_id.speed=3.5
	my_id.direction=dir-90*left-20+random(40)
	sound_play(sndReloadClip)
	}
	}



}
