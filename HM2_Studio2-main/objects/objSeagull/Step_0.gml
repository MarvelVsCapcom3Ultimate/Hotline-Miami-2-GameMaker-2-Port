if sprite_index=sprELisSeagull or sprite_index=sprSeagullIdle2 {
if instance_exists(objBullet) or instance_exists(objEBullet) {
direction=image_angle
sprite_index=sprSeagullFly
speed=1.5
gravity=0.1
gravity_direction=direction-10+random(20)
}
}

if sprite_index=sprSeagullFly {
if speed>4.5 speed=4.5
image_index+=speed*0.075
}
