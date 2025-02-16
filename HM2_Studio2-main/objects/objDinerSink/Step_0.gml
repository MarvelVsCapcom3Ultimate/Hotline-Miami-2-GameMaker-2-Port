if objEffector.amount<180 {
if image_index<3.4 image_index+=0.2
objCop.image_index=image_index
} else {
if objCop.sprite_index=sprCopWashHands {
objCop.sprite_index=sprCopDryHands
objCop.image_index=0
}
if image_index<8 image_index+=0.2
}

with objCop {
if sprite_index=sprCopDryHands {
if image_index<22 image_index+=0.2 else {
objCop.active=1
objCop.sprite_index=sprCopWalkUnarmed
objCop.y+=3
}
}
}
