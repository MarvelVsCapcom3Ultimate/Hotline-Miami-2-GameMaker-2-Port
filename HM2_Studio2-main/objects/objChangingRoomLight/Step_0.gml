if !surface_exists(surf) {
surf=surface_create(x2-x1,y2-y1)
}

draw_set_color(c_white)
draw_set_alpha(1)
surface_set_target(surf) 
draw_rectangle(0,0,x2-x1,y2-y1,0)
draw_set_blend_mode(bm_subtract)
global.x1=x1
global.y1=y1
with objStripClubRunway {
draw_sprite_ext(sprite_index,1,x-global.x1,y-global.y1,1,1,0,c_ltgray,1)
}
with objStripClubEntryPodium {
draw_sprite_ext(sprite_index,1,x-global.x1,y-global.y1,1,1,0,c_ltgray,1)
}
with objStripClubPodium {
draw_sprite_ext(sprite_index,1,x-global.x1,y-global.y1,1,1,0,c_ltgray,1)
}
surface_reset_target()
draw_set_blend_mode(bm_normal)
