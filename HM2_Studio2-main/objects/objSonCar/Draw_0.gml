if sprite_index=sprSonCarStart {
addx=-0.5+random(1)
addy=-0.5+random(1)
} else {
addx=0
addy=0
}
draw_sprite_ext(sprite_index,image_index,x+addx,y+addy,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
draw_sprite_ext(sprSonCarDoor,image_index,x+addx+scrPosDirX(9,-19,image_angle),y+addy+scrPosDirY(9,-19,image_angle),image_xscale,image_yscale,image_angle-doorangle,image_blend,image_alpha)
