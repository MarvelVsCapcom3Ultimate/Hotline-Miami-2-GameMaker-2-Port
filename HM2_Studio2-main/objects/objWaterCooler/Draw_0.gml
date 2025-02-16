if life>0 {
i=0
repeat (shots) {
if life>height[i] {
draw_sprite_ext(sprWaterCoolerStream,index[i],x+lengthdir_x(6,shotdir[i])+0.5,y+lengthdir_y(6,shotdir[i])+0.5,1.5,1,shotdir[i],c_black,0.25)
draw_sprite_ext(sprWaterCoolerStream,index[i],x+lengthdir_x(6,shotdir[i]),y+lengthdir_y(6,shotdir[i]),1.5,1,shotdir[i],c_white,1)
index[i]+=0.2
life-=0.1
}
i+=1
}
}
if sprite_index=sprWaterCoolerBroken {
draw_sprite_ext(sprite_index,image_index,x+1,y+1,image_xscale,image_yscale,image_angle,c_black,0.5)
draw_sprite_ext(sprite_index,0,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
draw_sprite_ext(sprite_index,1,x,y,image_xscale,image_yscale,image_angle,image_blend,0.5)
} else {
draw_sprite_ext(sprite_index,image_index,x+1,y+1,image_xscale,image_yscale,image_angle,c_black,0.5)
draw_sprite_ext(sprWaterCoolerEmpty,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,life*(1/100))
}
