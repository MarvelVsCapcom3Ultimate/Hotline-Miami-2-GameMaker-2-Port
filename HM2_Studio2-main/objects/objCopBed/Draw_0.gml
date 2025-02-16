if image_index=1 draw_sprite_ext(sprCopBedSheets,0,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
draw_sprite_ext(sprite_index,image_index,x+1,y+1,image_xscale,image_yscale,image_angle,c_black,0.5)
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)


if room=rmCopApartment3Floor2 {
draw_sprite(sprArrow,2,x+32+lengthdir_x(2,dir),y+12)
dir+=4
}
