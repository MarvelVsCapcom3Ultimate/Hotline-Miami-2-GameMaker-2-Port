function scrCameraPan(argument0, argument1) {
	viewspeed=point_distance(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2,argument0,argument1)*0.05
	viewdir=point_direction(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2,argument0,argument1)

	__view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) + (lengthdir_x(viewspeed,viewdir)) )
	__view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) + (lengthdir_y(viewspeed,viewdir)) )

	vdist=point_distance(x,y,room_width/2,room_height/2)
	vdir=point_direction(room_width/2,room_height/2,x,y)
	__view_set( e__VW.Angle, 0, lengthdir_y(vdist*(1/160),vdir*2) )

	scrLimitView()



}
