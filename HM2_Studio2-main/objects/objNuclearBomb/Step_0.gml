if on=1 {
if amount>0.5 {
if amount>0.7 add2+=0.05
add+=0.0025
surface_set_target(surf)
repeat (4+add2*10) {
scale=(0.5+random(0.5))*3+add2*0.1
draw_sprite_ext(sprNuclearSmoke,random(10),(add2*add2*add2*100),random(__view_get( e__VW.HPort, 0 )),scale,scale,random(360),c_white,1)
}
texture_set_interpolation(true)
draw_set_blend_mode(bm_add)
draw_surface_ext(surf,-1+random(2)+(add-1)*(add*10),-1+random(2)-(add-1)*25,add,1+((add-1)*50)/surface_get_height(surf),0,make_color_hsv(random(30),random(255),25),1)
draw_set_blend_mode(bm_normal)
texture_set_interpolation(false)
surface_reset_target()
}
} else {
if objPlayer.x<64 {
objPlayer.active=0
objPlayer.aimon=0
objPlayer.image_angle=180
objPlayer.dir=180
if objPlayer.x>48 {
vol=(objPlayer.x-48)*1/16
scrSongVolume(vol)
objPlayer.x-=0.5
objPlayer.image_index+=0.1
objPlayer.legindex+=0.2
} else {
scrSongVolume(0)
surface_set_target(surf)
d3d_set_projection_ortho(0,0,__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 ),0)
with all {
if sprite_exists(sprite_index) {
if depth>-20 draw_sprite_ext(sprite_index,image_index,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),image_xscale,image_yscale,image_angle,image_blend,image_alpha)
visible=0
}
}
surface_reset_target()
on=1
sound_play(sndBombAlarm)
alarm[0]=180
}
}
}
