if __view_get( e__VW.YView, 0 )<y {
if image_angle=0 hspeed=2 else hspeed=-2
objPlayer.active=0
objPlayer.aimon=0
objPlayer.dir=90
if image_angle=0 scrCameraPan(room_width/2,y+64)
}
if image_angle=0 {
if image_index>=4 and image_index-image_speed<4 and speed>0 sound_play(sndSwanFlap)
}
