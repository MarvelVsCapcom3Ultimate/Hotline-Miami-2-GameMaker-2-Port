record=0
i=0
repeat (shards) {
if instance_exists(shard[i]) {
if shard[i].speed>0 record=1
}
i+=1
}

if record=1 {
i=0
repeat (shards) {
shardx[i,frames]=shard[i].x
shardy[i,frames]=shard[i].y
shardangle[i,frames]=shard[i].image_angle
i+=1
}
frames+=1
}

if rewind=1 {
if frames>0 {
i=0
frames-=1
repeat (shards) {
shard[i].x=shardx[i,frames]
shard[i].y=shardy[i,frames]
shard[i].image_angle=shardangle[i,frames]
i+=1
}
} else {
i=0 
repeat (shards) {
with shard[i] instance_destroy()
i+=1
}
rewind=0 
shards=0 
image_index=0
if x<room_width/2 {myx=x-85 dir=0 scale=1} else {myx=x+85 dir=180 scale=-1}
if objPlayer.sprite_index=sprSonFiddleMagnumLSD nothing=1 else {
my_id=instance_create(myx,y+32,objZebraBoss)
my_id.direction=dir
my_id.image_angle=dir
my_id.speed=6
my_id.image_yscale=scale
}
}
}
