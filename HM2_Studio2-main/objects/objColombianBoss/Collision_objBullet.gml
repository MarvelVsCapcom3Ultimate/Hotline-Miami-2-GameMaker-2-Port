if objColombianBoss.state<2 exit
my_id=instance_create(x,y,objDeadBody)
my_id.sprite_index=sprColombianBossDead
my_id.direction=other.direction
my_id.image_angle=other.direction
my_id.speed=1.5
vspeed-=0.25
my_id.friction=1.5
scrMeleeBlood(x,y)
scrMeleeBlood(x,y)
global.falldir=other.direction
with objColombianBossChair {
image_index=1
direction=global.falldir
speed=1
friction=0.1
}

instance_destroy()
