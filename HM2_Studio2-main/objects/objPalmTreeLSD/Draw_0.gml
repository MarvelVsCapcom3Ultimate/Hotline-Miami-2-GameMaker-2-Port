if on=1 {
i=0
repeat (branches) {
draw_sprite_ext(sprPalmTreeLeafLSD,branchindex[i],x+lengthdir_x(10,branchdir[i]),y+lengthdir_y(10,branchdir[i]),1+lengthdir_x(0.05,branchsway[i]*0.87),branchscale[i],branchdir[i]+lengthdir_x(branchangle[i],branchsway[i]),merge_color(blend[i],merge_color(c_blue,c_white,0.5),0.25+lengthdir_x(0.25,branchsway[i]*4)),1)
branchsway[i]+=0.5+lengthdir_x(0.25,sway)
i+=1
}
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale+lengthdir_x(0.025,sway*0.71),image_yscale+lengthdir_x(0.025,sway*0.71),image_angle+lengthdir_x(2,sway),merge_color(merge_color(c_teal,c_purple,0.2),merge_color(c_blue,c_white,0.5),0.5+lengthdir_x(0.25,sway*4)),image_alpha)
sway+=0.78
}
