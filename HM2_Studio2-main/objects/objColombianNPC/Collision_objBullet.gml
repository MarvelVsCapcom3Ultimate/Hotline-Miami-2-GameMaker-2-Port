if instance_exists(objColombianBoss) {
if objColombianBoss.state<2 exit
}
my_id=instance_create(x,y,objDeadBody)
my_id.sprite_index=choose(sprColombianDeadMachinegun,sprColombianDeadShotgun)
my_id.image_index=random(1000)
my_id.direction=other.direction-10+random(20)
my_id.image_angle=my_id.direction
my_id.speed=1.5
my_id.friction=0.15
scrMeleeBlood(x,y)
scrMeleeBlood(x,y)
instance_destroy()
