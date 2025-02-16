my_id=instance_create(x,y,objDeadBody)
my_id.sprite_index=sprColombianHenchmanDead
my_id.direction=other.direction-10+random(20)
my_id.image_angle=my_id.direction
my_id.speed=1.5
my_id.friction=0.15
scrMeleeBlood(x,y)
scrMeleeBlood(x,y)

my_id=instance_create(x+4,y+43,objDeadBody)
my_id.sprite_index=sprColombianDogDead
my_id.direction=other.direction-10+random(20)
my_id.image_angle=my_id.direction
my_id.speed=1.5
my_id.friction=0.15
my_id.image_index=1
scrMeleeBlood(x+4,y+43)

my_id=instance_create(x-8,y+41,objDeadBody)
my_id.sprite_index=sprColombianDogDead
my_id.direction=other.direction-10+random(20)
my_id.image_angle=my_id.direction
my_id.speed=1.5
my_id.friction=0.15
my_id.image_index=0
scrMeleeBlood(x-8,y+41)

with other instance_destroy()
instance_destroy()
