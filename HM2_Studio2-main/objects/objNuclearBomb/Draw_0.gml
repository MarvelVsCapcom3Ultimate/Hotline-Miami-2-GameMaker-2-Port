if on=1 {
amount2=amount+amount
if amount2>1 amount2=1
draw_set_blend_mode(bm_add)
draw_rectangle_color(__view_get( e__VW.XView, 0 )-10,__view_get( e__VW.YView, 0 )-10,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )+10,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )+10,merge_color(c_black,c_white,amount2),merge_color(c_black,c_white,amount),merge_color(c_black,c_white,amount),merge_color(c_black,c_white,amount2),0)
draw_set_blend_mode(bm_normal)
addx=-(add-1)*6+random((add-1)*12)
addy=-(add-1)*6+random((add-1)*12)
draw_surface_ext(surf,__view_get( e__VW.XView, 0 )+addx,__view_get( e__VW.YView, 0 )+addy,1/3,1/3,0,c_white,1)
d3d_set_fog(1,c_white,0,0)
draw_surface_ext(surf,__view_get( e__VW.XView, 0 )+addx,__view_get( e__VW.YView, 0 )+addy,1/3,1/3,0,c_white,amount*amount)
d3d_set_fog(0,0,0,0)
if amount<1 amount+=0.0025 else amount=1

d3d_set_projection_ortho(0,0,__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 ),0)
draw_set_blend_mode(bm_subtract)
my_y=random(32)
my_x=random(32)
draw_sprite_tiled(sprNoise,0,-my_x,-my_y)

draw_set_blend_mode(bm_subtract)
draw_circle_color(__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.HView, 0 )/2,370+random(34),c_black,merge_color(c_gray,merge_color(c_aqua,c_navy,0.1+random(0.4)),0.15+random(0.15)),0)
draw_set_blend_mode(bm_normal)

}
