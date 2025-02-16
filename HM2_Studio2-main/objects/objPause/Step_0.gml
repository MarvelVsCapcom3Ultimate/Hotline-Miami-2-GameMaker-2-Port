surface_copy(surf1,0,0,surf2)
surface_set_target(surf2)
scrDrawPause()
surface_reset_target()

if on=1 {
if factor<1 factor+=0.1
}
if on=0 {
if factor>0 factor-=0.1 else {
if sprite_exists(global.sprite) sprite_delete(global.sprite)
sound_stop(sndUnPause)
sound_stop(sndStaticVHS)
sound_play(sndPlay)
bgm_Unpause(global.currentsong)
room_goto(global.lastroom)
}
}
