dir=0
image_speed=0
sprite_index=choose(sprMafiaCorpse4LSD,sprMafiaCorpse5LSD,sprMafiaCorpse6LSD,sprMafiaCorpse7LSD,sprMafiaCorpse8LSD)
image_angle=random(360)
scrMeleeBlood(x,y)
scrMeleeBlood(x,y)
repeat (4) {
dir=random(360)
dist=5+random(16)
my_id=instance_create(x+lengthdir_x(dist,dir),y+lengthdir_y(dist,dir),objIntestine)
}
