angle=lengthdir_x(3,dir*0.5)
addx=lengthdir_x(32,angle)
addy=lengthdir_y(32,angle)
if (!surface_exists(surf))
	surf = surface_create(__view_get( e__VW.WView, 0) / 2, __view_get( e__VW.HView, 0) / 2);
surface_set_target(surf)
texture_set_interpolation(true)
draw_surface_ext(surf,-lengthdir_x(0.2,dir*0.5),-2,1,1+2/surface_get_height(surf),0,merge_color(c_white,c_black,0.05),1)
i=0
repeat (surface_get_width(surf)*1/32)+2 {
draw_sprite_ext(sprWaves,index[i],i*addx,wavey+i*addy,0.5,0.5,angle,c_white,1)
index[i]+=0.125
i+=1
}
i=0
repeat (surface_get_width(surf)*1/32)+2 {
draw_sprite_ext(sprWaves,index[i],i*addx,wavey+surface_get_height(surf)*0.5+32+i*addy,0.5,0.5,angle,c_white,1)
i+=1
}
surface_reset_target()
if wavey<surface_get_height(surf)*0.5+16 wavey+=0.5 else wavey=-16
texture_set_interpolation(false)
