if on=1 {
if alpha<1 alpha+=0.05 else {
if index<12 index+=0.5 else {if amount<1 amount+=0.05}
}
} else {
if amount>0 amount-=0.1 else {
if index>0 index-=1 else {if alpha>0 alpha-=0.1}
}
}
draw_set_alpha(amount)
color1=merge_color(c_red,c_black,0.3+lengthdir_x(0.15,dir))
color2=merge_color(c_maroon,c_black,0.3+lengthdir_x(0.15,dir))
dir+=5
draw_rectangle_color(__view_get( e__VW.XView, 0 )-20,__view_get( e__VW.YView, 0 )-20,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )+20,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )+20,color1,color1,color2,color2,0)
draw_set_alpha(1)
draw_set_blend_mode(bm_subtract)
if alpha>0 draw_sprite_ext(sprRapeLight,index,x,y,1.2,1.2,__view_get( e__VW.Angle, 0 ),merge_color(c_black,c_white,alpha),1)
draw_set_blend_mode(bm_normal)

if on=0 and alpha<=0 {
if stage=0 {
dist=point_distance(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),objDirector.x-__view_get( e__VW.WView, 0 )/2,objDirector.y-160)
dir=point_direction(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),objDirector.x-__view_get( e__VW.WView, 0 )/2,objDirector.y-160)
__view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) + (lengthdir_x(dist*0.05,dir)) )
__view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) + (lengthdir_y(dist*0.05,dir)) )
if wait2>0 wait2-=1 else {with objFilmCrew {visible=1} scrGetMessage(0) stage=1 wait2=60 done=1 sound_play(sndDirector)}
}
if stage=1 {
if !instance_exists(objConversation) {
dist=point_distance(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),objTVParty4.x-__view_get( e__VW.WView, 0 )/2+64,objTVParty4.y-__view_get( e__VW.HView, 0 )/2.5)
dir=point_direction(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),objTVParty4.x-__view_get( e__VW.WView, 0 )/2+64,objTVParty4.y-__view_get( e__VW.HView, 0 )/2.5)
__view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) + (lengthdir_x(dist*0.05,dir)) )
__view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) + (lengthdir_y(dist*0.05,dir)) )
if wait2>0 wait2-=1 else stage=2
}
}




}
if done=0 draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
