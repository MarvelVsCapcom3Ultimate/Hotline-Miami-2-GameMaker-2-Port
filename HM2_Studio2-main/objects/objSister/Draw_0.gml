draw_sprite_ext(sprite_index,image_index,x+1,y+1,image_xscale,image_yscale,image_angle,c_black,0.5)
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)

if instance_number(objEnemy)+instance_number(objKnockedOut)=0 and state=0 {
draw_sprite_ext(sprArrow,1,x,y+32+lengthdir_x(2,dir),1,1,0,c_white,1)
dir+=4
}
