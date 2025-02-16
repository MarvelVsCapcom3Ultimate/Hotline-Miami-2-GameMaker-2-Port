surf=surface_create(__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 ))
surface_set_target(surf)
draw_clear_alpha(c_black,0)
surface_reset_target()

i=0
repeat (100) {
size[i]=1+random(2)
myx[i]=random(room_width)
myy[i]=random(room_height)
mydir[i]=random(360)
myspeed[i]=1+random(2)
diradd[i]=-4+random(8)
i+=1
}

flash=1
