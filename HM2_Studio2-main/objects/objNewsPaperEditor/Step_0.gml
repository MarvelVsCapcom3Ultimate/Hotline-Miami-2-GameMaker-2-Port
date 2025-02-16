if objPlayer.y<200 and objPlayer.x>384 and objPlayer.x<416 {
if sprite_index=sprEditorTalk {
sprite_index=sprEditorGiveUp
image_speed=0
image_index=0
}
}

if sprite_index=sprEditorGiveUp {
if objPlayer.y>200 {
if image_index>0 image_index-=0.25 else sprite_index=sprEditorTalk
} else {
if image_index<4 image_index+=0.25
}
}
