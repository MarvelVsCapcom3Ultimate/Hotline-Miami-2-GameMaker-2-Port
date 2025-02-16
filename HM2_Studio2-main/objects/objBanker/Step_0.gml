if state=1 {
if round(random(60))=2 state=2
}
if state=2 and sprite_index=sprBankerGiveUp {
if image_index<4 image_index+=0.15
}
