if image_index<=5 draw_sprite_ext(sprite,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
if cobra {
dir=image_angle
scrInitMaskPos()
scrUpdateMaskPos()
scrDrawMask()
}
