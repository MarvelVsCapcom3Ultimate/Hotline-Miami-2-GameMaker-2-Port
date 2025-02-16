if left=0 {
draw_set_color(c_black)
draw_rectangle(-10,-10,x-16,room_height,0)
draw_set_blend_mode(bm_subtract)
draw_rectangle_color(x-16,-10,x,room_height,c_white,c_black,c_black,c_white,0)
draw_set_blend_mode(bm_normal)
}
if left=1 {
draw_set_color(c_black)
draw_rectangle(x+16,-10,room_width,room_height,0)
draw_set_blend_mode(bm_subtract)
draw_rectangle_color(x,-10,x+16,room_height,c_black,c_white,c_white,c_black,0)
draw_set_blend_mode(bm_normal)
}
