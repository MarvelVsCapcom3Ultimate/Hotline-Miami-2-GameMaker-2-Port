text="LEVEL CLEAR"
dir=0
surf=surface_create(__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 ))
surface_set_target(surf) 
draw_clear_alpha(c_black,0)
surface_reset_target()
amount=1
i=0
repeat (string_length(text)) {
on[i]=0
i+=1
}
dir=120
global.done=1
sound_play(sndFloorCleared)
scrPlaySong(Videodrome)


