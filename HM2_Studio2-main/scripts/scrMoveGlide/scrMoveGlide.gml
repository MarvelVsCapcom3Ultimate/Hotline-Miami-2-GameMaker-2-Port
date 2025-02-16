function scrMoveGlide(argument0, argument1) {
	if place_free(x+argument0,y) x+=argument0 else {
	if argument1=0 {
	if place_free(x+argument0,y-8) y-=myspeed else {
	if place_free(x+argument0,y+8) y+=myspeed else {
	move_contact_solid(90-sign(argument0)*90,abs(argument0)) 
	}
	}
	}
	}

	if place_free(x,y+argument1) y+=argument1 else {
	if argument0=0 {
	if place_free(x-8,y+argument1) x-=myspeed else {
	if place_free(x+8,y+argument1) x+=myspeed else {
	move_contact_solid(-sign(argument1)*90,abs(argument1)) 
	}
	}
	}
	}



}
