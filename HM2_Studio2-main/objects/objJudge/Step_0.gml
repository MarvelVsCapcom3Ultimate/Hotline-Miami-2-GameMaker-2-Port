if state=0 {
if __view_get( e__VW.YView, 0 )>0 __view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) - (1) ) else state=1
}

if state=1 {
scrGetMessage(0)
state=2
}

if state=2 {
if instance_exists(objConversation) {
scrCameraPan(objProsecutor.x+64,objProsecutor.y)
} else {
scrGetMessage(1) state=3
}
}

if state=3 {
if instance_exists(objConversation) {
scrCameraPan(objInspectorWitness.x,objInspectorWitness.y)
} else {
scrGetMessage(2) state=4
}
}

if state=4 {
if instance_exists(objConversation) {
scrCameraPan(objProsecutor.x+64,objProsecutor.y)
} else {
scrGetMessage(3) state=5
}
}

if state=5 {
if instance_exists(objConversation) {
scrCameraPan(objInspectorWitness.x,objInspectorWitness.y)
} else {
scrGetMessage(4) state=6
}
}

if state=6 {
if instance_exists(objConversation) {
scrCameraPan(objProsecutor.x+64,objProsecutor.y)
} else {
scrGetMessage(5) state=7
}
}

if state=7 {
if instance_exists(objConversation) {
scrCameraPan(objInspectorWitness.x,objInspectorWitness.y)
} else {
scrGetMessage(6) state=8
}
}

if state=8 {
if instance_exists(objConversation) {
scrCameraPan(objProsecutor.x+64,objProsecutor.y)
} else {
scrGetMessage(7) state=9
objLawyer.sprite_index=sprLawyer
with objCourtChair {
if place_meeting(x,y,objLawyer) {vspeed=1 friction=0.1}
}
objProsecutor.sprite_index=sprProsecutorSit
}
}

if state=9 {
if instance_exists(objConversation) {
scrCameraPan(objLawyer.x,objLawyer.y)
} else {
scrGetMessage(8) state=10
}
}

if state=10 {
if instance_exists(objConversation) {
scrCameraPan(objInspectorWitness.x,objInspectorWitness.y)
} else {
scrGetMessage(9) state=11
}
}

if state=11 {
if instance_exists(objConversation) {
scrCameraPan(objLawyer.x,objLawyer.y)
} else {
scrGetMessage(10) state=12
}
}

if state=12 {
if instance_exists(objConversation) {
scrCameraPan(objInspectorWitness.x,objInspectorWitness.y)
} else {
scrGetMessage(11) state=13
}
}

if state=13 {
if instance_exists(objConversation) {
scrCameraPan(objLawyer.x,objLawyer.y)
} else {
scrGetMessage(12) state=14
}
}

if state=14 {
if instance_exists(objConversation) {
scrCameraPan(objInspectorWitness.x,objInspectorWitness.y)
} else {
scrGetMessage(13) state=15
}
}

if state=15 {
if instance_exists(objConversation) {
scrCameraPan(objLawyer.x,objLawyer.y)
} else {
scrGetMessage(14) state=16
}
}

if state=16 {
if instance_exists(objConversation) {
scrCameraPan(objInspectorWitness.x,objInspectorWitness.y)
} else {
scrGetMessage(15) state=17
}
}

if state=17 {
if instance_exists(objConversation) {
scrCameraPan(objLawyer.x,objLawyer.y)
} else {
scrGetMessage(16) state=18
objLawyer.sprite_index=sprLawyerSit
}
}

if state=18 {
if instance_exists(objConversation) {
scrCameraPan(objJudge.x+32,objJudge.y)
} else {
//let player move
state=19
wait=120
}
}

if state=19 {
scrCameraPan(objWriterCourt.x,objWriterCourt.y)
if wait>0 {
with objWriterCourt {
if amount<1 amount+=0.05 else amount=1
image_blend=merge_color(color,c_white,amount)
} 
objWriterCourt.image_speed=0.125 wait-=1} else state=20
}

if state=20 {
if objWriterCourt.sprite_index=sprWriterWrite {
if objWriterCourt.image_speed=0 {
objWriterCourt.sprite_index=sprWriterStand
objWriterCourt.image_index=0
state=21
}
}
}

if state=21 {
if objWriterCourt.image_index<5 objWriterCourt.image_index+=0.125 else {
objWriterCourt.sprite_index=sprWriterWalk
objWriterCourt.y-=5
objWriterCourt.image_angle=90
state=22
}
}


if state=22 {
scrCameraPan(objWriterCourt.x,objWriterCourt.y)
if objWriterCourt.x<462 {objWriterCourt.x+=1 objWriterCourt.image_index+=0.15 objWriterCourt.image_angle=scrRotate(objWriterCourt.image_angle,0,10)} else state=23
}

if state=23 {
scrCameraPan(objWriterCourt.x,objWriterCourt.y)
if objWriterCourt.y<236 {objWriterCourt.y+=1 objWriterCourt.image_index+=0.15 objWriterCourt.image_angle=scrRotate(objWriterCourt.image_angle,270,10)} else {
state=24
with objWriterCourt {
instance_create(x,y,objWriter)
instance_destroy()
}
}
}
