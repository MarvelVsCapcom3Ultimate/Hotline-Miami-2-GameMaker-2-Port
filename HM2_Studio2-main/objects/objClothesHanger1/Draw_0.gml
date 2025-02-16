i=0
repeat (20) {
draw_sprite_ext(sprShirtsHanger,shirtindex[i],x+lengthdir_x(4+shirtpos[i],image_angle-90)+1,y+lengthdir_y(4+shirtpos[i],image_angle-90)+1,1,1,image_angle+shirtdir[i],c_black,0.5)
draw_sprite_ext(sprShirtsHanger,shirtindex[i],x+lengthdir_x(4+shirtpos[i],image_angle-90),y+lengthdir_y(4+shirtpos[i],image_angle-90),1,1,image_angle+shirtdir[i],c_white,1)
i+=1
}
draw_sprite_ext(sprite_index,image_index,x+1,y+1,image_xscale,image_yscale,image_angle,c_black,0.5)
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
