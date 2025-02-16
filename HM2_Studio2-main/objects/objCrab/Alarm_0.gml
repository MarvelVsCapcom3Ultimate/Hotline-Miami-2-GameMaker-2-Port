if speed<1 {
if round(random(1))=0 {
image_speed=0.1
sprite_index=sprCrabIdle
image_index=0
speed=0
alarm[0]=100+random(200)
} else {
direction=floor(random(4))*90
speed=0.5
sprite_index=sprCrabWalk
image_speed=0.15
alarm[0]=30+random(60)
}
}

