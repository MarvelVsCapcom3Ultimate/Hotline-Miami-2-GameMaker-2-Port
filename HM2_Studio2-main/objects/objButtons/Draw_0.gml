if on=1 {
draw_set_color(c_yellow) 
draw_rectangle(x-2,y-2,x+26,y+26,1)
}
draw_set_color(c_black)
draw_rectangle(x-1,y-1,x+25,y+25,1)
if on=0 {
draw_set_blend_mode(bm_add)
draw_rectangle_color(x,y,x+25,y+25,c_dkgray,c_dkgray,c_black,c_black,0)
} else {
draw_set_blend_mode(bm_subtract)
draw_rectangle_color(x,y,x+25,y+25,c_gray,c_gray,c_black,c_black,0)
}
draw_set_blend_mode(bm_normal)
if on=0 draw_sprite_ext(sprEditorIcons,image_index,x,y,1,1,0,c_white,1) else draw_sprite_ext(sprEditorIcons,image_index,x,y,1,1,0,c_ltgray,1)
