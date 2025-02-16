i=0
repeat (sprite_get_number(sprite_index)) {
draw_sprite_ext(sprite_index,i,x,y,image_xscale,image_yscale,image_angle,image_blend,0.5+lengthdir_x(0.5,dir+(i*(360/sprite_get_number(sprite_index)))))
i+=1
}
dir+=2
