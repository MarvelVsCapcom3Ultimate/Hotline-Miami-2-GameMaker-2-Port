if sprite_index=sprFansVanStart {
addx=-0.5+random(1)
addy=-0.5+random(1)
} else {
addx=0
addy=0
}
draw_sprite_ext(sprite_index,image_index,x+addx,y+addy,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
