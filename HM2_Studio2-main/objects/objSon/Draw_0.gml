//if persistent=1 exit
/*if sprite_index=last_sprite nothing=1 else {
scrUpdateMaskPos(sprite_index)
last_sprite=sprite_index
}*/
draw_set_blend_mode(bm_add)
draw_circle_color(x,y,48+random(6)+light,make_color_hsv(0,0,30+light*2),c_black,0)
draw_set_blend_mode(bm_normal)
legsprite=sprEMafiaLegs

if style=3 {
if sprite_index=last_sprite nothing=1 else {
scrUpdateMaskPos(sprite_index)
last_sprite=sprite_index
}
}

if sprite_index=sprSonWalkSpecial or sprite_index=sprSonTurnSpecial {
if aimon=1 {
dir=point_direction(x,y,global.mousex,global.mousey)+addangle
turn=keyboard_check(vk_shift)
if mouse_check_button(mb_right) {
if armangle<90 armangle+=2.5+2.5*(1-mouse_check_button(mb_left))+turn*2.5
armangle1=dir+armangle
armangle2=dir-armangle
} else {
if armangle>5 armangle-=5 else armangle=0
armangle1=dir+armangle
armangle2=dir-armangle
if armangle=0 {
armangle1=point_direction(x+lengthdir_x(6,dir+90),y+lengthdir_y(6,dir+90),global.mousex,global.mousey)
armangle2=point_direction(x+lengthdir_x(6,dir-90),y+lengthdir_y(6,dir-90),global.mousex,global.mousey)
}
}
addangle=scrRotate(addangle,armangle*(turn)*aimon,10)
} else {
armangle=dir
addangle=0
armangle1=dir
armangle2=dir
}

if turn and mouse_check_button(mb_right) sprite_index=sprSonTurnSpecial else {if addangle<5 sprite_index=sprSonWalkSpecial}
if sprite_index=sprSonTurnSpecial image_index=floor(addangle*(1/31))
draw_sprite_ext(legsprite,legindex,x+1,y+1,image_xscale,image_yscale,legdir,c_black,0.5)
draw_sprite_ext(sprite_index,image_index,x+1,y+1,image_xscale,left,dir,c_black,0.5)
draw_sprite_ext(legsprite,legindex,x,y,image_xscale,image_yscale,legdir,image_blend,image_alpha)
draw_sprite_ext(sprSonArm,index,x+lengthdir_x(8,dir+90),y+lengthdir_y(8,dir+90),image_xscale,image_yscale,armangle1,image_blend,image_alpha)
draw_sprite_ext(sprSonArm,index,x+lengthdir_x(8,dir-90),y+lengthdir_y(8,dir-90),image_xscale,-1,armangle2,image_blend,image_alpha)
if sprite_index=sprSonWalkSpecial {
draw_sprite_ext(sprite_index,0,x,y,image_xscale,image_yscale,dir,image_blend,image_alpha)
draw_sprite_ext(sprite_index,1,x,y,image_xscale,image_yscale,dir,image_blend,image_alpha)
} else {
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,dir,image_blend,image_alpha)
draw_sprite_ext(sprSonWalkSpecial,1,x,y,image_xscale,image_yscale,dir,image_blend,image_alpha)
}

} else {

if aimon=1 {
dir=point_direction(x,y,global.mousex,global.mousey)
}
draw_sprite_ext(legsprite,legindex,x+1,y+1,image_xscale,image_yscale,legdir,c_black,0.5)
draw_sprite_ext(sprite_index,image_index,x+1,y+1,image_xscale,left,dir,c_black,0.5)
draw_sprite_ext(legsprite,legindex,x,y,image_xscale,image_yscale,legdir,image_blend,image_alpha)
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,left,dir,image_blend,image_alpha)
}
if reload>0 reload-=1
if light>3 light-=3

if style=3 {
scrDrawHood()
}
/* */
/*  */
