if room=rmCobraApartment1 {
with objPlayer {
if sprite_index=sprCobraShave {
if image_index<30 {
image_index+=0.15
if image_index>26.85 and !instance_exists(objShaver) instance_create(objDirtySink.x,objDirtySink.y,objShaver)
} else {
sprite_index=sprCobraWalkUnarmed
active=1
}
}
}
}
