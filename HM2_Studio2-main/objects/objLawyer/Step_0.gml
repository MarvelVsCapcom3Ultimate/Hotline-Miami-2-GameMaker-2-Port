if instance_exists(objConversation) {
if objConversation.sprite=sprFaceLawyer {
image_speed=0.15
} else {
image_speed=0
image_index=0
}
}

if sprite_index=sprLawyerSit {
global.targety=y+6
with objCourtChair {
if place_meeting(x,y,objLawyer) {
if y>global.targety y-=1
}
}
}
