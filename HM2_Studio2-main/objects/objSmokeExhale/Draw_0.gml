if image_index>2 draw_sprite_ext(sprite_index,image_index-2,x-hspeed*2,y,image_xscale,image_yscale,image_angle,merge_color(c_gray,c_dkgray,random(0.5)),0.25)
if image_index>1 draw_sprite_ext(sprite_index,image_index-1,x-hspeed,y,image_xscale,image_yscale,image_angle,merge_color(c_ltgray,c_gray,random(1)),0.5)
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,merge_color(c_white,c_ltgray,random(1)),0.5)

