sound_play(sndStatic)
scrInitNoise()
noise=45
repeat (45) {
d3d_set_projection_ortho(0,0,480,256,0)
scrDrawNoise()
//screen_refresh()
sleep_hack(1000/60)
}
sound_stop(sndStatic)
image_speed=0
target=0
state=0
message=0
__view_set( e__VW.XView, 0, room_width/2-__view_get( e__VW.WView, 0 )/2 )
__view_set( e__VW.YView, 0, room_height-__view_get( e__VW.HView, 0 )-8 )
wait=1
tile_layer_hide(999)
scrPlaySong(HollywoodHeights)
sound_volume(sndPounding,0)
pvol=0
wait2=200

alarm[0]=1
done=0

