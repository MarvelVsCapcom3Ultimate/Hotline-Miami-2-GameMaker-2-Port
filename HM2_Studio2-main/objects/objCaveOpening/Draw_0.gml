draw_set_blend_mode(bm_add)
draw_ellipse_color(x-50,y-72,x+58,y+72,merge_color(merge_color(c_yellow,c_orange,0.5+lengthdir_x(0.5,dir)),merge_color(c_white,c_black,0.75),0.75),c_black,0)
draw_rectangle_color(x-24,y,x+30,y+96+random(10),c_dkgray,c_dkgray,c_black,c_black,0)
draw_set_blend_mode(bm_normal)
dir+=1
