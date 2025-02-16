if image_index>=7 and image_index-image_speed<7 {
with objBoxingBag {
image_speed=0.2
image_angle=point_direction(objPlayer.x,objPlayer.y,x,y)
if image_index>2 image_index=2
sound_play(sndBoxingBag)
punch=1
}
}

if image_index>=12 and image_index-image_speed<12 {
with objBoxingBag {
image_speed=0.2
image_angle=point_direction(objPlayer.x,objPlayer.y,x,y)
if image_index>2 image_index=2
sound_play(sndBoxingBag)
punch=1
}
}
