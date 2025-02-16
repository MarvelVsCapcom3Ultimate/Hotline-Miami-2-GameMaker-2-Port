if !surface_exists(surf) {
surf=surface_create(__view_get( e__VW.WPort, 0 ),__view_get( e__VW.HPort, 0 ))
}
//set_automatic_draw(false)
surface_set_target(surf)
//screen_redraw()
surface_reset_target()
//draw_surface_ext(surf,0,0,1,1,0,c_white,1)
if !instance_exists(objPlayerDead) {
if scrMovingPlayerExists() targetamount=5+(abs(objPlayer.myxspeed)+abs(objPlayer.myyspeed)) else targetamount=5
} else tragetamount=5
if amount<targetamount amount+=0.025 else amount=targetamount
if amount>targetamount amount-=0.005 else amount=targetamount
d3d_set_projection_ortho(0,0,__view_get( e__VW.WView, 0 )*0.9,__view_get( e__VW.HView, 0 )*0.9,0)
scrDrawLSD(1)
scrDrawCredits()
if room=rmTigersDen {
draw_set_blend_mode(bm_subtract)
//repeat (1) draw_circle_color(objPlayer.x-view_xview[0],objPlayer.y-view_yview[0],view_wview[0]*0.67,c_black,c_white,0)
draw_set_blend_mode(bm_normal)
}
if black=1 {
draw_clear(c_black)
black=0
}
//screen_refresh()
dir+=1

