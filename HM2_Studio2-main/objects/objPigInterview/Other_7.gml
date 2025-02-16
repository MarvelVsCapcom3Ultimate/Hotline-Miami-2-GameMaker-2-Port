if sprite_index=sprPigInterviewStand {
my_id=instance_create(x+3,y+10,objPigInterviewStand)
my_id.image_angle=15
sprite_index=sprPigChair
exit
}
if sprite_index=sprPigChair exit

if round(random(3))=2 {
sprite_index=choose(sprPigTalk1,sprPigTalk2,sprPigTalk3)
}

