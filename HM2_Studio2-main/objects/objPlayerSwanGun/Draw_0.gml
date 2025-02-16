/*draw_set_blend_mode(bm_add)
draw_circle_color(x,y,48+random(6)+light,make_color_hsv(0,0,30+light*2),c_black,0)
draw_set_blend_mode(bm_normal)*/
legsprite=sprSwanLegs
if reload>0 wait=100
if active=1 {
if wait>0 {
dir=point_direction(x,y,global.mousex,global.mousey)
wait-=1
} else {dir=direction}
if instance_exists(global.enemy) dir=point_direction(x,y,global.enemy.x,global.enemy.y)
}
draw_sprite_ext(legsprite,legindex,x+1,y+1,image_xscale,image_yscale,direction,c_black,0.5)
draw_sprite_ext(sprite_index,image_index,x+1,y+1,image_xscale,left,dir,c_black,0.5)
draw_sprite_ext(legsprite,legindex,x,y,image_xscale,image_yscale,direction,image_blend,image_alpha)
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,left,dir,image_blend,image_alpha)
if reload>0 reload-=1
//if light>3 light-=3
/* */
/*  */
