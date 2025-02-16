draw_surface_ext(surf2,0,0,1,1,0,make_color_hsv(random(255),random(10),255-random(10)),1)
//draw_surface_ext(surf1,0,0,1,1,0,c_white,0.5)

draw_set_blend_mode(bm_subtract)
draw_sprite_ext(sprVCRSymbol2,symbol,34,24,1.5,0.75,0,make_color_hsv(random(255),random(20),155-random(5)),random(0.5))
draw_set_blend_mode(bm_normal)
draw_sprite_ext(sprVCRSymbol,symbol,34,24,1.5,0.75,0,make_color_hsv(random(255),random(20),255),1)
if alpha>0 {
draw_set_blend_mode(bm_add)
draw_set_color(merge_color(c_black,c_white,alpha))
draw_rectangle(0,0,room_width,room_height,0)
draw_set_blend_mode(bm_normal)
if alpha>0 alpha-=0.1
}
