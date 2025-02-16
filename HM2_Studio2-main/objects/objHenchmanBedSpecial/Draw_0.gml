draw_sprite_ext(sprite_index,0,x,y,1,1,0,c_white,1)
draw_sprite_ext(sprite_index,1,x,y,1,1,0,c_white,1)
draw_set_blend_mode(bm_subtract)
myy=__view_get( e__VW.YView, 0 )*0.1
while myy>51 myy-=51
texture_set_repeat(true)
draw_sprite_general(sprHenchmanBedColor,0,0,myy,54,52,x-27,y-27,1,1,0,c_white,c_white,c_white,c_white,1)
texture_set_repeat(false)
//draw_sprite_general(sprHenchmanBedColor,0,0,52-myy,54,myy,x-27,y-27,1,1,0,c_white,c_white,c_white,c_white,1)
//draw_sprite_general(sprHenchmanBedColor,0,0,0,54,52-myy,x-27,y-27+myy,1,1,0,c_white,c_white,c_white,c_white,1)
draw_set_blend_mode(bm_normal)
