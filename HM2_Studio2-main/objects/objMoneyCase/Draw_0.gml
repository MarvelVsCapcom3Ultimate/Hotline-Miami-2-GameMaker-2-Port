if image_index>=6 {
dir+=4
draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_black,0.5)
draw_sprite_ext(sprite_index,image_index,x,y-abs(lengthdir_x(2,dir)),1,1,0,c_white,1)
} else {
draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_black,0.5)
draw_sprite_ext(sprite_index,image_index,x-1,y-1,1,1,0,c_white,1)
}
