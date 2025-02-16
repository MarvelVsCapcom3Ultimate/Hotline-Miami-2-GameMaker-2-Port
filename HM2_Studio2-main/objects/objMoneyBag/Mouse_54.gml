if on=0 exit
if instance_exists(objEnemy) or instance_exists(objEBullet) or instance_exists(objKnockedOut) exit
if point_distance(x,y,objPlayer.x,objPlayer.y)<40 {
instance_destroy()
sound_play(sndPickUpWeapon)
objPlayer.sprite_index=sprHenchmanWalkBag
objPlayer.image_speed=0
global.done=1
}
