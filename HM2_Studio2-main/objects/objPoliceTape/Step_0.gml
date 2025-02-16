if image_index=0 {
if place_meeting(x+8,y,objCop) {
if objCop.active=1 {
if objCop.y>y-4 and objCop.y<y+4 {
visible=0 
solid=0
objCop.x=x
objCop.y=y
objCop.sprite_index=sprCopRipTape
objCop.active=0
objCop.aimon=0
objCop.dir=180
objCop.image_index=0
objCop.legindex=0
}
}
}
}
