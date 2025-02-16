surface_set_target(surf)
//draw_clear_alpha(c_dkgray,0)
texture_set_interpolation(true)
draw_surface_ext(surf,0,0,0.99,1,0,c_white,0.99)
//draw_rectangle(0,0,200,room_height,0)
i=0 
repeat (room_height/4) {
if oceanx>(limit-30) scale=1+((limit-30)-oceanx)*0.02 else scale=1
draw_sprite_ext(sprOceanFoam,oceanindex[i]+index,oceanx+lengthdir_x(oceanlength[i],oceandir[i]),i*4,scale,1,0,merge_color(c_white,c_ltgray,(0.5+lengthdir_x(0.5,oceandir[i]*0.2))*(0.9+random(0.1))),scale)
i+=1
}
texture_set_interpolation(false)
surface_reset_target()
