if hspeed>0 {
objEffector.whitealpha=1
instance_create(room_width/2,y,objSwanBossBody)
instance_create(objSwanBossBody.x-16,objSwanBossBody.y,objSwanGunHead)
instance_create(objSwanBossBody.x+16,objSwanBossBody.y,objSwanChainsawHead)
}
instance_destroy()
