draw_set_color(c_white)
//draw_surface_ext(surf,0.5,0.5,0.5,0.5,0,merge_color(c_maroon,c_fuchsia,0.5+lengthdir_x(0.5,coldir)),1)
if surface_exists(tilesurf) draw_surface_ext(tilesurf,0,0,1,1,0,c_white,1)
if surface_exists(surf) draw_surface_ext(surf,0,0,0.5,0.5,0,c_white,1)
coldir+=4
with objBlood draw_sprite_ext(scrRed(sprite_index),image_index,x,y,image_xscale,image_yscale,image_angle,c_fuchsia,image_alpha)
with objBloodPool draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_fuchsia,image_alpha)

