if state=0 {
scrCameraPan(x,y)
if x>room_width/2 friction=0.15
if speed=0 {
state=1
with objPlayerDead instance_destroy()
instance_create(x,y,objCop)
objCop.active=0
objCop.dir=270
objCop.aimon=0
}
}

if state=1 {
mask=mask_index
mask_index=sprite_index
scrCameraPan(objPlayer.x,objPlayer.y)
if place_meeting(x,y+3,objCop) {
objCop.y+=1
objCop.image_index+=0.1
objCop.legindex+=0.15
} else {
objCop.active=1
objCop.aimon=1
state=2
}
mask_index=mask
}

if state=2 {
mask=mask_index
mask_index=sprite_index
if place_meeting(x,y,objPlayer) mask_index=mask
}
