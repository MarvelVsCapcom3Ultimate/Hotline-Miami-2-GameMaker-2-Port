draw_sprite_ext(sprite_index,image_index,x+1,y+1,image_xscale,image_yscale,image_angle,c_black,0.5)
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)


draw_set_blend_mode(bm_subtract)
myy=__view_get( e__VW.YView, 0 )*0.1
while myy>31 myy-=31
scrDrawTexture(sprGlassSurface,x-7,y-20,14,40,0,myy,c_white)
draw_set_blend_mode(bm_normal)
