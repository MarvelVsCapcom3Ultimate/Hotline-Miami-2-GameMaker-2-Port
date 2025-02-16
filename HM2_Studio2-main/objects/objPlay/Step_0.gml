surface_copy(surf1,0,0,surf2)
surface_set_target(surf2)
if state=0 scrDrawStop()
if state=1 scrDrawREW()
if state=2 scrDrawFFW()
if state=3 scrDrawPlay()
if state=4 scrDrawTransition() //change room
surface_reset_target()
if state=0 {
if wait>0 {
wait-=1
if wait=40 {sound_play(sndPressRewind) symbol=1-rewind symboltimer=59}
} else {
wait=240
sound_play(sndRewind)
if rewind=1 state=1 else state=2
}
}

if state=1 {
if wait>0 {wait-=1 if wait=60 {sound_stop(sndRewind) sound_play(sndPressPlay) sound_play(sndPressRewind) symbol=3 symboltimer=59}} else {state=3 wait=90 sound_play(sndVHSStatic)}
if wait>220 {if rewline<60 rewline+=4}
if wait<40 {if rewline>0 rewline-=4}
}

if state=2 {
if wait>0 {wait-=1 if wait=60 {sound_stop(sndRewind) sound_play(sndPressPlay) sound_play(sndPressRewind) symbol=3 symboltimer=59}} else {state=3 wait=90 sound_play(sndVHSStatic)}
if wait>220 {if rewline<60 rewline+=4}
if wait<40 {if rewline>0 rewline-=4}
}

if state=3 {
if wait>0 wait-=1 else {state=4}
}

