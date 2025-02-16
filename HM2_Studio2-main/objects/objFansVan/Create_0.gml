if sprite_index=sprFansVan image_speed=0
with objPlayerDead instance_destroy()
if !instance_exists(objPlayer) {
my_id=instance_create(x,y,objPlayerDead)
my_id.visible=0
my_id.bled=1
}
bottom=instance_create(x,y,objFansVanBottom)
bottom.image_angle=image_angle
bottom.sprite_index=sprFansVanBottomHQ
done=0
on=0
wait=0
start=30
enter=0
if room=rmPizzaPlace {
on=1
player=objPlayerBear
scrCenterOn(x,y)
}

secondswan=-1234
