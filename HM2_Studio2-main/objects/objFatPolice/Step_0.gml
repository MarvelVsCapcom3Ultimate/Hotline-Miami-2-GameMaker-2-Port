global.factor+=sign(alert)
if path_index>0 {
image_speed=0.2
if path_position=1 path_end()
} else {if killed=0 image_speed=speed*0.1}
if !instance_exists(objPlayer) {alert=0 speed=0 exit}
scrSoldierFatKnifeStep()
if sprite_index=sprFatPoliceDying exit
if energie<5 {
if life>0 life-=1 else {
sprite_index=sprFatPoliceDying
image_index=1
image_speed=0
if path_index>0 path_end()
}
if round(random(16-(4-energie)))=2 instance_create(x,y,objSplat)
}
