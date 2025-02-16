draw_rectangle_color(-20,-20,room_width+20,room_height+20,color,color,merge_color(c_maroon,c_black,0.5+lengthdir_x(0.5,dir*0.2)),merge_color(c_maroon,c_black,0.5+lengthdir_x(0.5,dir*0.2+30)),0)
draw_set_blend_mode(bm_add)
if size<0.99 size+=0.01 else size=1
i=0.5
repeat (16) {
draw_line_width_color(room_width/2,room_height,room_width/2+lengthdir_x((200+lengthdir_x(64,dir*0.2+i*96))*size,i*(180/16)),room_height+lengthdir_y((200+lengthdir_x(64,dir*0.2+i*96))*size,i*(180/16)),3,merge_color(c_black,c_maroon,size),c_black)
i+=1
}
draw_set_blend_mode(bm_add)
draw_circle_color(room_width/2,room_height,30*size,merge_color(c_black,c_yellow,size),c_black,0)
draw_set_blend_mode(bm_normal)
with objBird draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
draw_set_blend_mode(bm_subtract)

draw_set_blend_mode(bm_normal)
if surface_exists(surf) {
draw_surface_ext(surf,-1,0,0.5,0.5,0,c_black,1)
draw_surface_ext(surf,1,0,0.5,0.5,0,c_black,1)
draw_surface_ext(surf,0,-1,0.5,0.5,0,c_black,1)
draw_surface_ext(surf,0,1,0.5,0.5,0,c_black,1)
draw_surface_ext(surf,0,0,0.5,0.5,0,c_white,1)
}
draw_set_blend_mode(bm_subtract)
my_y=random(32)
my_x=random(32)
draw_sprite_tiled_ext(sprNoise,0,-my_x,-my_y,1,1,c_white,1)
draw_circle_color(room_width/2,room_height/2,room_width*0.6+random(10),c_black,c_lime,0)
draw_set_blend_mode(bm_normal)
