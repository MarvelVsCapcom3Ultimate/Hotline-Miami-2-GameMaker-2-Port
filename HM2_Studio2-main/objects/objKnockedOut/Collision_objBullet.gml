if sprite_index=sprEGangGetUpLean {
bullets=0
global.my_id=id
with objBullet {
if place_meeting(x,y,global.my_id) {instance_destroy() global.my_id.bullets+=1}
}
my_id=instance_create(x,y,objDeadBody)
my_id.image_angle=image_angle
if bullets>1 {
my_id.sprite_index=sprEGangDeadLeanShotgun
} else my_id.sprite_index=sprEGangDeadLeanMachinegun
scrBloodShot(x,y)
instance_destroy()
}

if sprite_index=sprEMafiaGetUpLean {
bullets=0
global.my_id=id
with objBullet {
if place_meeting(x,y,global.my_id) {instance_destroy() global.my_id.bullets+=1}
}
my_id=instance_create(x,y,objDeadBody)
my_id.image_angle=image_angle
if bullets>1 {
my_id.sprite_index=sprEMafiaDeadLeanShotgun
} else my_id.sprite_index=sprEMafiaDeadLeanMachinegun
scrBloodShot(x,y)
instance_destroy()
}


if sprite_index=sprPoliceGetUpLean {
bullets=0
global.my_id=id
with objBullet {
if place_meeting(x,y,global.my_id) {instance_destroy() global.my_id.bullets+=1}
}
my_id=instance_create(x,y,objDeadBody)
my_id.image_angle=image_angle
if bullets>1 {
my_id.sprite_index=sprPoliceDeadLeanShotgun
} else my_id.sprite_index=sprPoliceDeadLeanShot
scrBloodShot(x,y)
instance_destroy()
}


if sprite_index=sprColombianGetUpLean {
bullets=0
global.my_id=id
with objBullet {
if place_meeting(x,y,global.my_id) {instance_destroy() global.my_id.bullets+=1}
}
my_id=instance_create(x,y,objDeadBody)
my_id.image_angle=image_angle
if bullets>1 {
my_id.sprite_index=sprColombianDeadLeanShotgun
} else my_id.sprite_index=sprColombianDeadLeanMachinegun
scrBloodShot(x,y)
instance_destroy()
}

if sprite_index=sprGuardGetUpLean {
bullets=0
global.my_id=id
with objBullet {
if place_meeting(x,y,global.my_id) {instance_destroy() global.my_id.bullets+=1}
}
my_id=instance_create(x,y,objDeadBody)
my_id.image_angle=image_angle
if bullets>1 {
my_id.sprite_index=sprGuardDeadLeanShotgun
} else my_id.sprite_index=sprGuardDeadLeanShot
scrBloodShot(x,y)
instance_destroy()
}

objEffector.roomkills++;
