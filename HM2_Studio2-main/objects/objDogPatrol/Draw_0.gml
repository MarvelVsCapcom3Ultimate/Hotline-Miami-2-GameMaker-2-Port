if speed>1 {
sprite_index=sprDogRun
if instance_exists(objLSD) sprite_index=sprDogRunLSD2
if instance_exists(objLSDBlend) sprite_index=sprDogRunLSD
} else {
sprite_index=sprDogWalk
if instance_exists(objLSD) sprite_index=sprDogWalkLSD2
if instance_exists(objLSDBlend) sprite_index=sprDogWalkLSD
}
draw_sprite_ext(sprite_index,image_index,x+1,y+1,image_xscale,image_yscale,direction,c_black,0.5)
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,direction,image_blend,image_alpha)
