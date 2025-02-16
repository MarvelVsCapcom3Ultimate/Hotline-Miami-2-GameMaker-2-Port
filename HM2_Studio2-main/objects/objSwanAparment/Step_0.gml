if state=0 {
if point_distance(objPlayer.x,objPlayer.y,400,112)<12 {
objPlayer.active=0
objPlayer.aimon=0
objPlayer.dir=180
objPlayer.sprite_index=sprCopKnock
objPlayer.image_index=0
objPlayer.y=112
with objPlayer move_contact_solid(180,32)
state=1
}
}

if state=1 {
if objPlayer.image_index<23 objPlayer.image_index+=0.2 else {
with objPlayer {
my_id=instance_create(x,y,objNPC)
my_id.sprite_index=sprCopWalkUnarmed
my_id.image_angle=dir
my_id.image_speed=0
instance_destroy()
}
with objSwanTowel {
my_id=instance_create(x,y,objPlayerSwan1)
my_id.sprite_index=sprSwan1WalkTowel
my_id.dir=image_angle
instance_destroy()
}
state=2
}
}

if state>=2 and state<5 {
if point_distance(objPlayer.x,objPlayer.y,objNPC.x,objNPC.y)<40 {
if state<5 {
objPlayer.active=0
objPlayer.aimon=0
objPlayer.dir=point_direction(objPlayer.x,objPlayer.y,objNPC.x,objNPC.y)
if !instance_exists(objConversation) {
scrGetMessage(state-2)
state+=1
}
}
}
}

if state=5 {
if !instance_exists(objConversation) {
objPlayer.active=1
objPlayer.aimon=1
}
if !instance_exists(objSwanClothes) {with objSwanOutfit on=1 state=6} else {
with objSwanClothes on=1
}
}

if objPlayer.sprite_index=sprSwan1HideClothes {
if objPlayer.image_index<sprite_get_number(objPlayer.sprite_index)-1 objPlayer.image_index+=0.2 else {
objPlayer.sprite_index=sprSwan1WalkTowel
objPlayer.image_index=0
objPlayer.active=1
objPlayer.aimon=1
}
}

if state=6 {
if !instance_exists(objSwanOutfit) {
state=7
objNPC.x=460
objNPC.y=204
objNPC.image_angle=90
with objEditorDoorV {
solid=0 
if y=96 and x>360 image_angle=-30
}
}
}

if state>=7 and state<14 {
if objPlayer.x>384 and objPlayer.y>160 and objPlayer.y<288 and objPlayer.x<512 {
objPlayer.active=0
objPlayer.aimon=0
objPlayer.legindex=0
objPlayer.dir=point_direction(objPlayer.x,objPlayer.y,objNPC.x,objNPC.y)
scrCameraPan((objPlayer.x+objNPC.x+64)/2,(objPlayer.y+objNPC.y)/2)
if !instance_exists(objConversation) {
scrGetMessage(state-4)
state+=1
}
}
}

if state=14 {
if !instance_exists(objConversation) {
state=15
global.done=1
with objPlayer {
my_id=instance_create(x,y,objNPC)
my_id.sprite_index=sprite_index
my_id.image_angle=dir
my_id.image_index=image_index
my_id.image_speed=0
instance_destroy()
}
with objNPC {
if sprite_index=sprCopWalkUnarmed {
my_id=instance_create(x,y,objCop)
my_id.dir=image_angle
instance_destroy()
}
}
}
}
