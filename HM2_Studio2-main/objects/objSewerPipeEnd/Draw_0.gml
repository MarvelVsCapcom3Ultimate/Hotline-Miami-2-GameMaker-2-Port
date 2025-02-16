draw_sprite_ext(sprite_index,image_index,x+1,y+1,image_xscale,image_yscale,image_angle,c_black,0.5)
draw_sprite_ext(sprSewerPipeEnd,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
draw_sprite_ext(sprSewerPipeRings,ringindex,x,y,image_xscale,image_yscale,image_angle,merge_color(c_lime,c_green,0.5),1-ringindex*0.2)
if ringindex<3.25 ringindex+=0.15 else ringindex=0
