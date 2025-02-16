draw_set_font(fntRestart)
draw_set_halign(fa_center)
draw_set_valign(fa_center)
draw_set_color(merge_color(c_orange,c_maroon,0.5+lengthdir_x(0.5,coldir*2.71)))
draw_text_transformed(__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.HView, 0 )*0.7+lengthdir_x(1,coldir*3),string_hash_to_newline("PRESS R TO RESTART DEMO"),1,1,lengthdir_x(2,coldir*4-20))
draw_set_color(merge_color(c_aqua,c_fuchsia,0.5+lengthdir_x(0.5,coldir*3.21)))
draw_text_transformed(__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.HView, 0 )*0.7+lengthdir_x(1,coldir*3),string_hash_to_newline("PRESS R TO RESTART DEMO"),1,1,lengthdir_x(2,coldir*4))
coldir+=1

draw_set_font(fntGameOver)
draw_set_color(merge_color(c_fuchsia,c_maroon,0.5+lengthdir_x(0.5,coldir*6)))
draw_text_transformed(__view_get( e__VW.WView, 0 )/2+3,__view_get( e__VW.HView, 0 )*0.4+lengthdir_x(1,coldir*3)+3,string_hash_to_newline("GAME OVER"),1,1,1)
draw_set_color(merge_color(c_aqua,c_teal,0.5+lengthdir_x(0.5,coldir*3.21+180)))
draw_text_transformed(__view_get( e__VW.WView, 0 )/2+1,__view_get( e__VW.HView, 0 )*0.4+lengthdir_x(1,coldir*3+45)+1,string_hash_to_newline("GAME OVER"),1,1,1)
draw_set_color(merge_color(c_aqua,c_teal,0.5+lengthdir_x(0.5,coldir*3.21)))
draw_text_transformed(__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.HView, 0 )*0.4+lengthdir_x(1,coldir*3+45),string_hash_to_newline("GAME OVER"),1,1,1)

draw_set_blend_mode(bm_subtract)
my_y=random(32)
my_x=random(32)
draw_sprite_tiled(sprNoise,0,-my_x,-my_y)

draw_set_blend_mode(bm_subtract)
draw_circle_color(__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.HView, 0 )/2,370+random(34),c_black,merge_color(c_gray,merge_color(c_aqua,c_navy,0.1+random(0.4)),0.15+random(0.15)),0)
draw_set_blend_mode(bm_normal)

if fade=0 {
if amount<180 {
amount+=1
color1=merge_color(c_black,merge_color(c_aqua,c_white,0.5+lengthdir_x(0.5,amount)),0.5+lengthdir_x(0.5,amount))
if amount>90 color2=merge_color(c_black,merge_color(c_fuchsia,c_white,abs(lengthdir_y(1,amount))),abs(lengthdir_y(1,amount))) else color2=c_white
draw_set_blend_mode(bm_subtract)
draw_rectangle_color(-10,-10,__view_get( e__VW.WView, 0 )+10,__view_get( e__VW.HView, 0 )+10,color1,color2,color2,color1,0)
draw_set_blend_mode(bm_normal)
}
}

if fade=1 {
if amount>0 amount-=2.5
color1=merge_color(c_black,merge_color(c_aqua,c_white,0.5+lengthdir_x(0.5,amount)),0.5+lengthdir_x(0.5,amount))
if amount>90 color2=merge_color(c_black,merge_color(c_fuchsia,c_white,abs(lengthdir_y(1,amount))),abs(lengthdir_y(1,amount))) else color2=c_white
draw_set_blend_mode(bm_subtract)
draw_rectangle_color(-10,-10,__view_get( e__VW.WView, 0 )+10,__view_get( e__VW.HView, 0 )+10,color2,color1,color1,color2,0)
draw_set_blend_mode(bm_normal)
}
