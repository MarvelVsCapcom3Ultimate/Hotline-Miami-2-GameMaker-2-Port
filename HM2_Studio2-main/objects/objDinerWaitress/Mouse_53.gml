if talked=0 {
if place_meeting(x-40,y,objPlayer) {
talked=1
scrGetMessage(0)
with objPlayer {
active=0
sprite_index=sprCopDrinkCoffee
image_index=0
image_speed=0
dir=point_direction(x,y,objDinerWaitress.x,objDinerWaitress.y)
}
with objDinerCup visible=0
}
}
