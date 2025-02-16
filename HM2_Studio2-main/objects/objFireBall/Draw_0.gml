if image_index>2 draw_sprite_ext(sprite_index,image_index-2,x,y,image_xscale,image_yscale,image_angle,merge_color(c_orange,c_red,random(0.5)),1)
if image_index>1 draw_sprite_ext(sprite_index,image_index-1,x,y,image_xscale,image_yscale,image_angle,merge_color(c_yellow,c_orange,random(1)),1)
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,merge_color(merge_color(c_white,c_yellow,random(1)),c_orange,random(1)),1)

