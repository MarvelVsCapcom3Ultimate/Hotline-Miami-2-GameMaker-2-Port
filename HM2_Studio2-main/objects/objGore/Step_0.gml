if !surface_exists(surf) {
surf=surface_create(room_width*2,room_height*2)
surface_set_target(surf)
draw_clear_alpha(c_black,0)
surface_reset_target()
}
if !surface_exists(tilesurf) or global.loaded=1 {
with objSewerWater reset=1 
if global.loaded=1 alarm[1]=5 
scrRestartMusic() 
global.loaded=0 
scrSurfaceTiles()
}
//surface_copy(surf2,0,0,surf)
surface_set_target(surf)
with objTinyBlood draw_sprite_ext(sprite_index,image_index,x*2-2+random(4),y*2-2+random(4),image_xscale*2,image_yscale*2,image_angle,c_fuchsia,image_alpha)
//draw_surface_ext(surf2,-4,-4,(room_width+8)/room_width,(room_height+8)/room_height,0,c_white,0.99)
//global.test=0 
//with objBlood {if done=0 global.test=1}
//if global.test=0 {
with objWater {if done draw_sprite_ext(sprite_index,image_index,x*2-2+random(4),y*2-2+random(4),image_xscale*2,image_yscale*2,image_angle,c_white,image_alpha)}
with objWater {if done instance_destroy()}
with objBlood {if done draw_sprite_ext(sprite_index,image_index,x*2-2+random(4),y*2-2+random(4),image_xscale*2,image_yscale*2,image_angle,c_fuchsia,image_alpha)}
with objBlood {if done draw_sprite_ext(scrRed(sprite_index),image_index,x*2,y*2,image_xscale*2,image_yscale*2,image_angle,c_fuchsia,image_alpha)}
with objBlood {if done instance_destroy()}
with objTinyBlood {draw_sprite_ext(sprite_index,image_index,x*2-2+random(4),y*2-2+random(4),image_xscale*2,image_yscale*2,image_angle,c_fuchsia,image_alpha) instance_destroy()}
with objFloorBlood {draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha) sprite_delete(sprite_index) visible=0 instance_destroy()}
with objShard {if speed=0 {draw_sprite_ext(sprite_index,image_index,x*2,y*2,image_xscale*2,image_yscale*2,image_angle,image_blend,image_alpha) instance_destroy()}}
with objTVShards {if speed=0 {draw_sprite_ext(sprite_index,image_index,x*2,y*2,image_xscale*2,image_yscale*2,image_angle,image_blend,image_alpha) instance_destroy()}}
with objPlasticShard {if speed=0 {if wait>0 wait-=1 else {draw_sprite_ext(sprite_index,image_index,x*2,y*2,image_xscale*2,image_yscale*2,image_angle,image_blend,image_alpha) instance_destroy()}}}
with objTVBigParts {if speed=0 {draw_sprite_ext(sprite_index,image_index,x*2,y*2,image_xscale*2,image_yscale*2,image_angle,image_blend,image_alpha) instance_destroy()}}
with objComputerMonitorGreyParts {if speed=0 {draw_sprite_ext(sprite_index,image_index,x*2,y*2,image_xscale*2,image_yscale*2,image_angle,image_blend,image_alpha) instance_destroy()}}
with objComputerMonitorBlackParts {if speed=0 {draw_sprite_ext(sprite_index,image_index,x*2,y*2,image_xscale*2,image_yscale*2,image_angle,image_blend,image_alpha) instance_destroy()}}
with objShell {if speed=0 {draw_sprite_ext(sprite_index,image_index,x*2,y*2,image_xscale*2,image_yscale*2,image_angle,image_blend,image_alpha) instance_destroy()}}
with objWoodDebris {if speed=0 {draw_sprite_ext(sprite_index,image_index,x*2,y*2,image_xscale*2,image_yscale*2,image_angle,image_blend,image_alpha) instance_destroy()}}
with objBrains {if speed=0 {if wait>0 wait-=1 else {draw_sprite_ext(sprite_index,image_index,x*2,y*2,image_xscale*2,image_yscale*2,image_angle,image_blend,image_alpha) instance_destroy()}}}
with objIntestine {if speed=0 {if wait>0 wait-=1 else {draw_sprite_ext(sprite_index,image_index,x*2,y*2,image_xscale*2,image_yscale*2,image_angle,image_blend,image_alpha) instance_destroy()}}}
with objHeadPiece {if speed=0 {if wait>0 wait-=1 else {draw_sprite_ext(sprite_index,image_index,x*2,y*2,image_xscale*2,image_yscale*2,image_angle,image_blend,image_alpha) instance_destroy()}}}
//}

surface_reset_target()
/*
if global.loaded=1 and objEffector.scratch>0 {
screen_redraw()
my_id=instance_create(x,y,objGore)
with my_id scrSurfaceTiles()
surface_free(surf)
surface_free(tilesurf)
visible=0
instance_destroy()
}
/* */
/*  */
