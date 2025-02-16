d3d_set_projection_ortho(0,0,__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 ),0)
texture_set_interpolation(true)
draw_surface_ext(surf,0,0,2,2,0,merge_color(c_aqua,c_fuchsia,0.5+lengthdir_x(0.5,dir)),1)
texture_set_interpolation(false)
i=0
repeat (surface_get_width(surf)*1/32)+2 {
draw_sprite_ext(sprWaves,index[i],i*addx*2,wavey*2+i*addy*2,1,1,angle,c_white,1)
i+=1
}
i=0
repeat (surface_get_width(surf)*1/32)+2 {
draw_sprite_ext(sprWaves,index[i],i*addx*2,wavey*2+surface_get_height(surf)+64+i*addy*2,1,1,angle,c_white,1)
i+=1
}
dir+=2
d3d_set_projection_ortho(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 ),__view_get( e__VW.Angle, 0 ))
