draw_sprite_ext(sprElevatorFloor,floorindex,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
draw_sprite_ext(sprite_index,image_index,x+1,y+1,image_xscale,image_yscale,image_angle,c_black,0.5)
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
draw_set_blend_mode(bm_subtract)
draw_sprite_ext(sprElevatorShadow,0,x,y,image_xscale,image_yscale,image_angle,c_gray,image_alpha)
draw_set_blend_mode(bm_normal)
if instance_number(objEnemy)+instance_number(objKnockedOut)=0 and image_index>13.5 {
addx=lengthdir_x(lengthdir_x(2,image_angle-90),dir)
addy=lengthdir_y(lengthdir_y(2,image_angle-90),dir)
draw_sprite_ext(sprGoArrow,1,x+scrPosDirX(36,36,image_angle)+addx,y+scrPosDirY(36,36)+addy,1,1,image_angle,c_white,1)
dir+=4
}
