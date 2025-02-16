function scrDrawSonStyleMenu() {
	with objSonStyleMenu {
	draw_set_blend_mode(bm_subtract)
	draw_circle_color(__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.HView, 0 )/2,280,c_black,merge_color(c_black,c_white,alpha),0)
	draw_set_blend_mode(bm_normal)
	draw_set_color(c_black)
	if on=1 {
	i=0
	repeat (8) {
	if i=0 {if line[0]<1 line[0]+=0.05} else {
	if line[i-1]>0.25 {if line[i]<1 line[i]+=0.05}
	}
	draw_set_blend_mode(bm_normal)
	if line[i]>0 draw_rectangle(__view_get( e__VW.WView, 0 )/2-line[i]*__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 )/2-34+i*8,__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 )/2-34+i*8+10,0)
	draw_set_blend_mode(bm_add)
	if line[i]>0 draw_line_width_color(__view_get( e__VW.WView, 0 )/2-line[i]*__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 )/2-31+i*8,__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 )/2-31+i*8,2,merge_color(c_teal,c_black,0.5+lengthdir_x(0.5,dir)),merge_color(c_red,c_black,0.5+lengthdir_x(0.5,dir-45)))
	//draw_set_blend_mode(bm_subtract)
	if line[i]>0 draw_rectangle_color(__view_get( e__VW.WView, 0 )/2-line[i]*__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 )/2-32+i*8,__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 )/2-32+i*8+6,merge_color(c_white,merge_color(c_aqua,c_teal,0.5+lengthdir_x(0.5,dir*2)),alpha),c_black,c_black,merge_color(c_fuchsia,c_purple,0.5+lengthdir_x(0.5,dir*2)),0)
	i+=1
	}
	} else {
	i=0
	repeat (8) {
	if i=0 {if line[0]>0 line[0]-=0.1} else {
	if line[i-1]<0.75 {if line[i]>0 line[i]-=0.1}
	}
	draw_set_blend_mode(bm_normal)
	if line[i]>0 draw_rectangle(-2,__view_get( e__VW.HView, 0 )/2-34+i*8,line[i]*__view_get( e__VW.WView, 0 )+2,__view_get( e__VW.HView, 0 )/2-34+i*8+10,0)
	draw_set_blend_mode(bm_add)
	if line[i]>0 draw_line_width_color(0,__view_get( e__VW.HView, 0 )/2-31+i*8,line[i]*__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 )/2-31+i*8,2,merge_color(c_teal,c_black,0.5+lengthdir_x(0.5,dir)),merge_color(c_red,c_black,0.5+lengthdir_x(0.5,dir-45)))
	//draw_set_blend_mode(bm_subtract)
	if line[i]>0 draw_rectangle_color(0,__view_get( e__VW.HView, 0 )/2-32+i*8,line[i]*__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 )/2-32+i*8+6,merge_color(c_white,merge_color(c_aqua,c_teal,0.5+lengthdir_x(0.5,dir*2)),alpha),c_black,c_black,merge_color(c_fuchsia,c_red,0.5+lengthdir_x(0.5,dir*2)),0)
	i+=1
	}
	if line[7]<=0 instance_destroy()
	}
	draw_set_blend_mode(bm_normal)

	i=0
	repeat (3) {
	if current=i scale=1.6 else scale=1
	if masks[i]=1 color=c_white else color=c_black
	draw_sprite_ext(sprite_index,i,__view_get( e__VW.WView, 0 )/2+addx+i*80+3,__view_get( e__VW.HView, 0 )/2+3,scale,scale,lengthdir_x(5,dir+i*45),c_black,0.5)
	draw_sprite_ext(sprite_index,i,__view_get( e__VW.WView, 0 )/2+addx+i*80,__view_get( e__VW.HView, 0 )/2,scale,scale,lengthdir_x(5,dir+i*45),color,1)
	if current=i {
	blinkamount=-1+lengthdir_x(1.25,dir)
	if blinkamount<0 blinkamount=0
	draw_set_blend_mode(bm_add)
	d3d_set_fog(1,merge_color(c_black,c_gray,blinkamount),0,0)
	draw_sprite_ext(sprite_index,i,__view_get( e__VW.WView, 0 )/2+addx+i*80,__view_get( e__VW.HView, 0 )/2,scale,scale,lengthdir_x(5,dir+i*45),c_white,1)
	d3d_set_fog(0,0,0,0)
	draw_set_blend_mode(bm_normal)
	}
	i+=1
	}
	if on=1 targetx=-current*80 else targetx=480
	addx+=((targetx)-addx)*0.1
	dir+=2
	if surface_exists(surf) {
	draw_surface_ext(surf,0,-1,1,1,0,c_black,1)
	draw_surface_ext(surf,0,1,1,1,0,c_black,1)
	draw_surface_ext(surf,1,0,1,1,0,c_black,1)
	draw_surface_ext(surf,-1,0,1,1,0,c_black,1)
	draw_surface_ext(surf,0,0,1,1,0,c_white,1)
	}
	}



}
