draw_sprite_ext(sprite_index,image_index,x+1,y+1,image_xscale,image_yscale,image_angle,c_black,0.5)
draw_sprite_ext(sprite_index,image_index,x,y-abs(lengthdir_x(speed*2,dir)),image_xscale,image_yscale,image_angle,image_blend,image_alpha)
prevdir=dir
dir+=20-speed*5
if dir>360 dir-=360
