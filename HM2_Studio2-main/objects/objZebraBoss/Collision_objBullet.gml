
my_id=instance_create(x,y,objDeadBody)
my_id.bled=1
my_id.sprite_index=sprSonDeadExplode

repeat (12) {
my_id=instance_create(x-35+random(70),y-15+random(30),objZebraParts)
my_id.direction=point_direction(x,y,my_id.x,my_id.y)
my_id.speed=1.5+random(3)
my_id.friction=0.1
my_id.sprite_index=sprZebraChunks
my_id.image_angle=random(360)
my_id.image_index=random(100)
scrMeleeBlood(my_id.x,my_id.y)
my_id=instance_create(x-35+random(70),y-15+random(30),objIntestine)
my_id.direction=point_direction(x,y,my_id.x,my_id.y)
my_id.speed=1.5+random(3)
my_id=instance_create(x-35+random(70),y-15+random(30),objSwanBrainChunk)
my_id.direction=point_direction(x,y,my_id.x,my_id.y)
my_id.speed=1.5+random(3)
}

my_id=instance_create(x+lengthdir_x(37,image_angle),y,objZebraParts)
my_id.direction=image_angle
my_id.image_angle=my_id.direction
my_id.speed=2.5
my_id.friction=0.05
my_id.sprite_index=sprZebraHead

my_id=instance_create(x+lengthdir_x(37,image_angle-180),y,objZebraParts)
my_id.direction=image_angle-180
my_id.image_angle=image_angle
my_id.speed=2.5
my_id.friction=0.05
my_id.sprite_index=sprZebraTail

my_id=instance_create(x,y,objZebraParts)
my_id.direction=image_angle
my_id.speed=1.5
my_id.friction=0.02
my_id.image_speed=0.25
my_id.image_angle=my_id.direction
my_id.sprite_index=sprZebraJacket

my_id=instance_create(x+lengthdir_x(25.5,image_angle+10),y+lengthdir_y(25.5,image_angle+10),objZebraParts)
my_id.sprite_index=sprZebraLeg1
my_id.direction=image_angle+45
my_id.speed=2.5
my_id.friction=0.05

my_id=instance_create(x+lengthdir_x(25.5,image_angle+190),y+lengthdir_y(25.5,image_angle+190),objZebraParts)
my_id.sprite_index=sprZebraLeg2
my_id.direction=image_angle+225
my_id.direction=0
my_id.speed=2.5
my_id.friction=0.05

objZebraLauncher.on=0
with objZebraFade instance_destroy()
scrCreateBloodWhirl(x,y)
sound_play(sndLSDTigerDie)

instance_destroy()
