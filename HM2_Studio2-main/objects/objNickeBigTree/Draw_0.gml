if instance_exists(objJungleDayBG) color2=merge_color(c_orange,c_olive,0.5)
if instance_exists(objJungleNightBG) color2=c_black
if instance_exists(objJungleEveningBG) color2=__background_get_colour( )
draw_sprite_general(sprite_index,image_index,0,0,160,165,x-80*image_xscale,y-165,image_xscale,1,0,image_blend,image_blend,color2,color2,1)
