draw_set_color(c_black)
draw_rectangle(x-1,y-1,x+17,y+17,1)
if on=0 {
draw_set_blend_mode(bm_add)
draw_rectangle_color(x,y,x+16,y+16,c_dkgray,c_dkgray,c_black,c_black,0)
} else {
draw_set_blend_mode(bm_subtract)
draw_rectangle_color(x,y,x+16,y+16,c_gray,c_gray,c_black,c_black,0)
}
draw_set_blend_mode(bm_normal)
if on=0 draw_sprite_ext(sprEditorNextButtons,image_index,x,y,1,1,0,merge_color(c_yellow,c_white,0.25+lengthdir_x(0.25,objEditor.dir*3)),1) else draw_sprite_ext(sprEditorNextButtons,image_index,x,y,1,1,0,merge_color(c_yellow,c_gray,0.25+lengthdir_x(0.25,objEditor.dir*3)),1)
