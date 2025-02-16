if keyboard_check_direct(vk_shift) {if objPlayer.sprite_index=sprNickeWalkSniper or objPlayer.sprite_index=sprNickeAttackSniper factor=2.2 else factor=1.8} else factor=1
if scrMovingPlayerExists() {
if objPlayer.active=1 {
global.mousex=objPlayer.x+((display_mouse_get_x()-width*0.5)*(__view_get( e__VW.WView, 0 )/width))*factor
global.mousey=objPlayer.y+((display_mouse_get_y()-height*0.5)*(__view_get( e__VW.HView, 0 )/height))*factor
if global.mousex<__view_get( e__VW.XView, 0 ) global.mousex=__view_get( e__VW.XView, 0 )
if global.mousey<__view_get( e__VW.YView, 0 ) global.mousey=__view_get( e__VW.YView, 0 )
if global.mousex>__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ) global.mousex=__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )
if global.mousey>__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ) global.mousey=__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )
x=global.mousex
y=global.mousey
if instance_exists(global.enemy) {
global.mousex=global.enemy.x
global.mousey=global.enemy.y
} else global.enemy=-1234
scrDrawArrows()
draw_sprite_ext(sprite_index,image_index,global.mousex+1,global.mousey+1,1,1,-__view_get( e__VW.Angle, 0 ),c_black,0.5)
draw_set_blend_mode(bm_add)
draw_sprite_ext(sprite_index,image_index,global.mousex,global.mousey,1,1,-__view_get( e__VW.Angle, 0 ),c_white,1)
} else {
display_mouse_set(width*0.5+lengthdir_x(96,objPlayer.dir),height*0.5+lengthdir_y(96,objPlayer.dir))
}
}
global.dir+=1
draw_set_blend_mode(bm_normal)
if instance_number(objLSD)+instance_number(objStorm)=0 {
d3d_set_projection_ortho(0,0,__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 ),0)
scrDrawJungleSun()
drawrestart=0
if instance_exists(objPlayerDead) {drawrestart=scrCheckRestart()}
if instance_exists(objMaskMenu) or instance_exists(objDirector) or instance_exists(objCobraMaskMenu) or instance_exists(objDirectorWalk) drawrestart=0
if instance_exists(objHenchmanCouch) {if objHenchmanCouch.state<5 drawrestart=0}
if drawrestart and global.hud {
if text_y<64 text_y+=4
draw_set_font(fntRestart)
draw_set_halign(fa_center)
draw_set_valign(fa_center)
draw_set_color(c_black)
draw_rectangle(64+string_width(string_hash_to_newline("PRESS R TO RESTART"))+8,__view_get( e__VW.HView, 0 )+32-text_y-14,56,__view_get( e__VW.HView, 0 )+32-text_y+14,0)
draw_set_color(merge_color(c_orange,c_maroon,0.5+lengthdir_x(0.5,coldir*2.71)))
draw_text_transformed(64+string_width(string_hash_to_newline("PRESS R TO RESTART"))*0.5,__view_get( e__VW.HView, 0 )+31-text_y+lengthdir_x(1,coldir*3),string_hash_to_newline("PRESS R TO RESTART"),1,1,lengthdir_x(2,coldir*4-20))
draw_set_color(merge_color(c_aqua,c_fuchsia,0.5+lengthdir_x(0.5,coldir*3.21)))
draw_text_transformed(64+string_width(string_hash_to_newline("PRESS R TO RESTART"))*0.5,__view_get( e__VW.HView, 0 )+30-text_y+lengthdir_x(1,coldir*3),string_hash_to_newline("PRESS R TO RESTART"),1,1,lengthdir_x(2,coldir*4))
}






draw_set_blend_mode(bm_subtract)
my_y=random(32)
my_x=random(32)
draw_sprite_tiled(sprNoise,0,-my_x,-my_y)

draw_set_blend_mode(bm_subtract)
draw_circle_color(__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.HView, 0 )/2,370+random(34),c_black,merge_color(c_gray,merge_color(c_aqua,c_navy,0.1+random(0.4)),0.15+random(0.15)),0)
draw_set_blend_mode(bm_normal)

if global.hud {
if instance_exists(objNicke) or instance_exists(objPlayerBear) scrNickeDrawAmmo() else scrDrawAmmo()
scrDrawTutorial()
}
scrDrawFloorCleared()
scrDrawLevelCleared()
scrDrawConversation()
scrDrawMaskMenu()
scrDrawCobraMaskMenu()
scrDrawSonStyleMenu()
scrDrawWriterBerserk()
scrDrawCaveLight()

if fade=0 {
if amount<180 {
if wait>0 wait-=1 else amount+=5
color1=merge_color(c_black,merge_color(c_aqua,c_white,0.5+lengthdir_x(0.5,amount)),0.5+lengthdir_x(0.5,amount))
if amount>90 color2=merge_color(c_black,merge_color(c_fuchsia,c_white,abs(lengthdir_y(1,amount))),abs(lengthdir_y(1,amount))) else color2=c_white
draw_set_blend_mode(bm_subtract)
draw_rectangle_color(-10,-10,__view_get( e__VW.WView, 0 )+10,__view_get( e__VW.HView, 0 )+10,color1,color2,color2,color1,0)
draw_set_blend_mode(bm_normal)
}
}

if fade=1 {
if newsong=1 or restart=1 or stopsong=1 {if amount>0 scrSongVolume(amount/180)}
color1=merge_color(c_black,merge_color(c_aqua,c_white,0.5+lengthdir_x(0.5,amount)),0.5+lengthdir_x(0.5,amount))
if amount>90 color2=merge_color(c_black,merge_color(c_fuchsia,c_white,abs(lengthdir_y(1,amount))),abs(lengthdir_y(1,amount))) else color2=c_white
draw_set_blend_mode(bm_subtract)
draw_rectangle_color(-10,-10,__view_get( e__VW.WView, 0 )+10,__view_get( e__VW.HView, 0 )+10,color2,color1,color1,color2,0)
draw_set_blend_mode(bm_normal)
}
coldir+=1
if whitealpha>0 {
draw_set_blend_mode(bm_add)
draw_set_color(merge_color(c_black,c_white,whitealpha))
draw_rectangle(-10,-10,__view_get( e__VW.WView, 0 )+10,__view_get( e__VW.HView, 0 )+10,0)
draw_set_blend_mode(bm_normal)
whitealpha-=0.1
}
scrDrawNoise()
}
/*
if instance_exists(objPlayerMouse) {
view_xview[0]=vlastx
view_yview[0]=vlasty
}

if blackx>0 {
draw_set_color(c_black)
draw_rectangle(0,0,view_wview[0],blackx,0)
draw_rectangle(0,view_hview[0],view_wview[0],view_hview[0]-blackx*1.5,0)
blackx-=3
}
*/
if scratch>0 {
draw_set_blend_mode(bm_add)
repeat (scratch) {
draw_sprite_ext(sprSmallWhiteDistortion,random(4),random(__view_get( e__VW.WView, 0 )),random(__view_get( e__VW.HView, 0 )),1,1,0,merge_color(c_black,c_gray,random(1)),1)
}
repeat (30) {
draw_sprite_ext(sprMediumWhiteDistortion,random(4),random(__view_get( e__VW.WView, 0 )),__view_get( e__VW.HView, 0 )+20-random(6)-abs(scratch)*0.5,1+random(2),1,0,merge_color(c_black,c_gray,random(1)),1)
}
repeat (30) {
draw_sprite_ext(sprMediumWhiteDistortion,random(4),random(__view_get( e__VW.WView, 0 )),__view_get( e__VW.HView, 0 )+40-random(6)-abs(scratch)*0.6,1+random(2),1,0,merge_color(c_black,c_gray,random(1)),1)
}
my_y=random(32)
my_x=random(32)
draw_sprite_tiled_ext(sprNoise,0,-my_x,-my_y,1,1,merge_color(c_black,c_white,scratch*0.01),1)
my_y=random(32)
my_x=random(32)
draw_sprite_tiled_ext(sprNoise,0,-my_x,-my_y,1,1,merge_color(c_black,c_white,scratch*0.01),1)
draw_set_blend_mode(bm_normal)
scratch-=2
}



/* */
/*  */
