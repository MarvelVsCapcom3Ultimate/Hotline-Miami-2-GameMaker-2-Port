i=0
repeat (40) {
draw_sprite_ext(sprShirtsHanger,shirtindex[i],x+lengthdir_x(24,shirtdir[i]+image_angle)+1,y+lengthdir_y(24,shirtdir[i]+image_angle)+1,1,1,image_angle+shirtdir[i]-diradd*10,c_black,0.5)
draw_sprite_ext(sprShirtsHanger,shirtindex[i],x+lengthdir_x(24,shirtdir[i]+image_angle),y+lengthdir_y(24,shirtdir[i]+image_angle),1,1,image_angle+shirtdir[i]-diradd*10,c_white,1)
i+=1
}
draw_sprite_ext(sprite_index,image_index,x+1,y+1,image_xscale,image_yscale,image_angle,c_black,0.5)
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
