if instance_exists(objConversation) {
if objConversation.sprite=sprFaceProsecutor {
image_speed=0.15
} else {
image_speed=0
image_index=0
}
}

if sprite_index=sprProsecutorSit {
global.targety=y+6
with objCourtChair {
if place_meeting(x,y,objProsecutor) {
if y>global.targety y-=1
}
}
}
