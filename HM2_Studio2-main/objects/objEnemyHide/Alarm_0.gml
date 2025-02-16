with objEnemy {
my_id=instance_create(x,y,objEnemySpawn)
my_id.object=object_index
my_id.dir=direction
my_id.sprite=sprite_index
if object_index=objEGangRandom or object_index=objEGangStatic or object_index=objEGangPatrol my_id.ammo=ammo
instance_destroy()
}
