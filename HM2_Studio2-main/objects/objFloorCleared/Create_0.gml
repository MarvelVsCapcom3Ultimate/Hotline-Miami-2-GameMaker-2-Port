addx=44
i=0
on=1
alarm[0]=100

i=0
repeat (11) {
addy[i]=0
lvisible[i]=1
i+=1
}

current=10

surface=surface_create(__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 ))
surface_set_target(surface)
draw_clear_alpha(c_black,0)
surface_reset_target()

blink=0

sound_play(sndFloorCleared)
