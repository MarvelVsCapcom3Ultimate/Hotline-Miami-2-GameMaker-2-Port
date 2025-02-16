if instance_exists(objBullet) or instance_exists(objEBullet) {
sprite_index=sprPerturbatorDodge
if image_index<2 image_index+=0.25
image_speed=0
wait=100
} else {
if sprite_index=sprPerturbatorDodge {
if wait>0 wait-=1 else {
if image_index<4 image_index+=0.25 else {sprite_index=sprPerturbatorDance1 image_speed=0.125}
}
}
}
