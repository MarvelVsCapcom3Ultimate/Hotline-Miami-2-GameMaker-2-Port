if sprite_index=sprPoliceSlide {
if instance_exists(objPigKillNeck) {
if objPigKillNeck.image_index>3 {
sprite_index=sprPoliceUnlock
image_index=0
}
}
}

if sprite_index=sprPoliceUnlock {
if image_index<11 image_index+=0.15 else {
with objCellDoor solid=0
my_id=instance_create(x,y,objEPoliceMeleePatrol)
my_id.direction=270
my_id.speed=2
instance_destroy()
}
}
