bullets=0
global.my_id=id 
with objEBullet {
if place_meeting(x,y,global.my_id) global.my_id.bullets+=1
}
if bullets>3 {
repeat (15) {
my_id=instance_create(x,y+random(32),objWoodDebris)
my_id.sprite_index=sprRenovationWallDebris
if other.hspeed>0 my_id.direction=-10+random(20) else my_id.direction=180-10+random(20)
my_id.speed=2+random(3)
}
instance_destroy()
mp_grid_destroy(global.grid)
scrInitPathFinding()
} else {
if round(random(4)) {
my_id=instance_create(x,other.y,objWoodDebris)
my_id.sprite_index=sprRenovationWallDebris
my_id.direction=other.direction-10+random(20)
my_id.speed=2+random(3)
}
}
