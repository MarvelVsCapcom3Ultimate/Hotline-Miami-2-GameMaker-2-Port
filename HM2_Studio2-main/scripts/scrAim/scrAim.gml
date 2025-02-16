function scrAim() {
	var addx,addy;
	if object_index=objNicke {
	if active=1 {
	if keyboard_check(vk_shift) {if sprite_index=sprNickeWalkSniper or sprite_index=sprNickeAttackSniper {xfactor=15 yfactor=9} else {xfactor=10 yfactor=6}} else {xfactor=1 yfactor=1}
	viewspeed=point_distance(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2,x+lengthdir_x(24*xfactor,dir),y+lengthdir_y(24*yfactor,dir))*0.1
	viewdir=point_direction(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2,x+lengthdir_x(24*xfactor,dir),y+lengthdir_y(24*yfactor,dir))

	__view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) + (lengthdir_x(viewspeed,viewdir)) )
	__view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) + (lengthdir_y(viewspeed,viewdir)) )

	vdist=point_distance(x,y,room_width/2,room_height/2)
	vdir=point_direction(room_width/2,room_height/2,x,y)
	__view_set( e__VW.Angle, 0, lengthdir_y(vdist*(1/160),vdir*2) )

	if __view_get( e__VW.XView, 0 )>room_width-__view_get( e__VW.WView, 0 )-12 __view_set( e__VW.XView, 0, room_width-__view_get( e__VW.WView, 0 )-12 )
	if __view_get( e__VW.YView, 0 )>room_height-__view_get( e__VW.HView, 0 )-12 __view_set( e__VW.YView, 0, room_height-__view_get( e__VW.HView, 0 )-12 )
	if __view_get( e__VW.XView, 0 )<12 __view_set( e__VW.XView, 0, 12 )
	if __view_get( e__VW.YView, 0 )<12 __view_set( e__VW.YView, 0, 12 )
	}
	} else {
	if active=1 {
	if keyboard_check(vk_shift) {xfactor=10 yfactor=6} else {xfactor=1 yfactor=1}
	if sprite_index=sprBearTurnSpecial {xfactor=3 yfactor=2}
	if instance_exists(objWaves) {
	addy=lengthdir_x(16,objWaves.dir*0.5)
	addx=0
	} else {
	addx=0
	addy=0
	}
	if sprite_index=sprBearTurnSpecial {
	viewspeed=point_distance(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2,x+lengthdir_x(24*xfactor,dir-addangle),y+lengthdir_y(24*yfactor,dir-addangle))*0.1
	viewdir=point_direction(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2,x+lengthdir_x(24*xfactor,dir-addangle),y+lengthdir_y(24*yfactor,dir-addangle))
	} else {
	viewspeed=point_distance(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2,x+lengthdir_x(24*xfactor,dir)+addx,y+lengthdir_y(24*yfactor,dir)+addy)*0.1
	viewdir=point_direction(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2,x+lengthdir_x(24*xfactor,dir)+addx,y+lengthdir_y(24*yfactor,dir)+addy)
	}
	__view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) + (lengthdir_x(viewspeed,viewdir)) )
	__view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) + (lengthdir_y(viewspeed,viewdir)) )

	vdist=point_distance(x,y,room_width/2,room_height/2)
	vdir=point_direction(room_width/2,room_height/2,x,y)
	__view_set( e__VW.Angle, 0, lengthdir_y(vdist*(1/160),vdir*2) )
	}
	}
	scrLimitView()
	/*if view_wview[0]+viewspeed*20>view_wview[0] {
	view_wview[0]=455+viewspeed*20
	view_hview[0]=227+viewspeed*10
	} else {
	if view_wview[0]>455 view_wview[0]-=2
	if view_wview[0]>227 view_hview[0]-=1
	}


/* end scrAim */
}
