if room=rmCopApartment3Floor2 {
if place_meeting(x+12,y,objCop) {
if objCop.active=1 {
objCop.active=0
objCop.aimon=0
objCop.sprite_index=sprCopSleepy
objCop.image_index=0
objCop.legindex=0
objCop.dir=180
objEffector.fade=1
objEffector.next=1
objEffector.nextroom=rmCopApartment3Floor2Part2
objEffector.stopsong=1
}
objEffector.amount+=14
if objCop.image_index<24 objCop.image_index+=0.15
}
}
