dir=0
mycolor=choose(c_teal)
surf=surface_create(x2-x1,y2-y1)
draw_set_color(c_white)
surface_set_target(surf) 
draw_rectangle(0,0,x2-x1,y2-y1,0)
surface_reset_target()
