function scrPlayerMoveKeyboard() {
	if instance_exists(objConversation) {myxspeed=0 myyspeed=0} else {
	global.test=0
	//with objElevator if touch=1 global.test=1 
	if persistent=1 and global.test=1 nothing=1 else {
	myspeed=3
	if objPlayer.sprite_index=sprNickeWalkJacket myspeed=1.5
	if objPlayer.sprite_index=sprHenchmanWalkBag myspeed=2.25
	if objPlayer.object_index=objSonLSD myspeed=2.5+lengthdir_x(0.5,objPlayer.walkdir)
	factor=1
	if keyboard_check_direct(ord(global.leftkey)) {
	if myxspeed>-(myspeed) myxspeed-=0.5 else myxspeed=-(myspeed)
	}

	if keyboard_check_direct(ord(global.rightkey)) {
	if myxspeed<(myspeed) myxspeed+=0.5 else myxspeed=(myspeed)
	}

	if keyboard_check_direct(ord(global.upkey)) {
	if myyspeed>-(myspeed) myyspeed-=0.5 else myyspeed=-(myspeed)
	}

	if keyboard_check_direct(ord(global.downkey)) {
	if myyspeed<(myspeed) myyspeed+=0.5 else myyspeed=(myspeed)
	}

	if (!keyboard_check_direct(ord(global.rightkey)) and !keyboard_check_direct(ord(global.leftkey))) {
	if myxspeed>0 myxspeed-=0.5 else {if myxspeed<-0.5 myxspeed+=0.5 else myxspeed=0}
	}

	if (!keyboard_check_direct(ord(global.upkey)) and !keyboard_check_direct(ord(global.downkey))) {
	if myyspeed>0 myyspeed-=0.5 else {if myyspeed<-0.5 myyspeed+=0.5 else myyspeed=0}
	}



	scrMoveSolidOn()
	while (abs(myxspeed)+abs(myyspeed))>myspeed+2 {
	myxspeed*=0.98
	myyspeed*=0.98
	}
	if abs(myxspeed)=0 and abs(myyspeed)=0 legindex=0 else {
	legindex+=(abs(myxspeed)+abs(myyspeed))*0.1*factor
	if legindex>15 legindex-=15
	if scrIsWalking(sprite_index) image_index+=(abs(myxspeed)+abs(myyspeed))*0.05
	}
	legdir=point_direction(0,0,myxspeed,myyspeed)
	if abs(myxspeed)>0 {
	if place_free(x+myxspeed,y) x+=myxspeed else {
	if myyspeed=0 {
	if place_free(x+myxspeed,y-8) y-=myspeed else {
	if place_free(x+myxspeed,y+8) y+=myspeed else {
	move_contact_solid(90-sign(myxspeed)*90,abs(myxspeed)) 
	myxspeed=0
	}
	}
	}
	}
	}
	if abs(myyspeed)>0 {
	if place_free(x,y+myyspeed) y+=myyspeed else {
	if myxspeed=0 {
	if place_free(x-8,y+myyspeed) x-=myspeed else {
	if place_free(x+8,y+myyspeed) x+=myspeed else {
	move_contact_solid(-sign(myyspeed)*90,abs(myyspeed)) 
	myyspeed=0
	}
	}
	}
	}
	}
	if x<-64 x=-64
	if x>room_width+64 x=room_width+64
	if y<-64 y=-64
	if y>room_height+64 y=room_height+64
	scrMoveSolidOff()
	}

	}



}
