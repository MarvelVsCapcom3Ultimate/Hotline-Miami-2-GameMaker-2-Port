if sprite_index=sprCobraDieChair {
if image_index<15 image_index+=0.15
}

if sprite_index=sprCobraFloppy {
if image_index>6 {
with objFloppy {
sound_play(sndPickUpWeapon)
instance_destroy()
}
}
}
