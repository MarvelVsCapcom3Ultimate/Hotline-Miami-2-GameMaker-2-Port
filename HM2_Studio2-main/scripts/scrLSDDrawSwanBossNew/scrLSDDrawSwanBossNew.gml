function scrLSDDrawSwanBossNew() {


	with objSwanBossBody {
	if state=2 {
	myx=-(image_xscale-1)*8+random(image_xscale-1)*16
	myy=-(image_xscale-1)*8+random(image_xscale-1)*16
	} else {
	myx=0
	myy=0
	}
	draw_sprite_ext(sprite_index,image_index,x-__view_get( e__VW.XView, 0 )+myx,y-__view_get( e__VW.YView, 0 )+myy,image_xscale,image_yscale,image_angle,image_blend,image_alpha)

	with objSwanChainsawHead {
	i=0 
	mydir=point_direction(objSwanBossBody.x+16,objSwanBossBody.y,x,y)
	myx=objSwanBossBody.x+16
	myy=objSwanBossBody.y
	tempdir=dir+(3*(1-dead))
	dist=point_distance(objSwanBossBody.x+16,objSwanBossBody.y,x,y)
	if init=0 {
	while point_distance(myx,myy,x,y)>22 and i<ceil(point_distance(x,y,objSwanBossBody.x+16,objSwanBossBody.y)*(1/22))+4 {
	if i=0 index=1 else index=0
	mydist=point_distance(myx,myy,x,y)
	factor=mydist*(1/(dist*2))
	if factor>1 factor=1
	addir=lengthdir_x(sway,dir)*factor//20+lengthdir_x(10,dir*0.1)
	mydir=point_direction(myx,myy,x,y)
	draw_sprite_ext(sprSwanNeck,index,myx-__view_get( e__VW.XView, 0 ),myy-__view_get( e__VW.YView, 0 ),1,1,mydir+addir,c_white,1)
	myx+=lengthdir_x(22,mydir+addir)
	myy+=lengthdir_y(22,mydir+addir)
	if dead=0 dir+=20
	i+=1
	}
	} else {
	repeat (times) {
	if i=0 index=1 else index=0
	if i=times-1 index=2
	mydist=point_distance(myx,myy,x,y)
	factor=mydist*(1/(dist*2))
	if factor>1 factor=1
	addir=lengthdir_x(sway,dir)*factor//20+lengthdir_x(10,dir*0.1)
	mydir=point_direction(myx,myy,x,y)
	draw_sprite_ext(sprSwanNeck,index,myx-__view_get( e__VW.XView, 0 ),myy-__view_get( e__VW.YView, 0 ),1,1,mydir+addir,c_white,1)
	myx+=lengthdir_x(22,mydir+addir)
	myy+=lengthdir_y(22,mydir+addir)
	if dead=0 dir+=20
	i+=1
	}
	}
	if init=0 draw_sprite_ext(sprSwanNeck,0,myx-__view_get( e__VW.XView, 0 ),myy-__view_get( e__VW.YView, 0 ),point_distance(myx,myy,x,y)*(1/22),1,point_direction(myx,myy,x,y),c_white,1)
	dir=tempdir
	}

	with objSwanGunHead {
	i=0 
	mydir=point_direction(objSwanBossBody.x-16,objSwanBossBody.y,x,y)
	myx=objSwanBossBody.x-16
	myy=objSwanBossBody.y
	tempdir=dir+(4*(1-dead))
	dist=point_distance(objSwanBossBody.x-16,objSwanBossBody.y,x,y)
	if init=0 {
	while point_distance(myx,myy,x,y)>22 and i<ceil(point_distance(x,y,objSwanBossBody.x-16,objSwanBossBody.y)*(1/22))+4 {
	if i=0 index=1 else index=0
	mydist=point_distance(myx,myy,x,y)
	factor=mydist*(1/dist)
	if factor>1 factor=1
	addir=lengthdir_x(sway,dir)*factor//20+lengthdir_x(10,dir*0.1)
	mydir=point_direction(myx,myy,x,y)
	draw_sprite_ext(sprSwanNeck,index,myx-__view_get( e__VW.XView, 0 ),myy-__view_get( e__VW.YView, 0 ),1,1,mydir+addir,c_white,1)
	myx+=lengthdir_x(22,mydir+addir)
	myy+=lengthdir_y(22,mydir+addir)
	if dead=0 dir+=20
	i+=1
	}
	draw_sprite_ext(sprSwanNeck,0,myx-__view_get( e__VW.XView, 0 ),myy-__view_get( e__VW.YView, 0 ),point_distance(myx,myy,x,y)*(1/22),1,point_direction(myx,myy,x,y),c_white,1)
	} else {
	repeat (times) {
	if i=0 index=1 else index=0
	if i=times-1 index=2
	mydist=point_distance(myx,myy,x,y)
	factor=mydist*(1/(dist*2))
	if factor>1 factor=1
	addir=lengthdir_x(sway,dir)*factor//20+lengthdir_x(10,dir*0.1)
	mydir=point_direction(myx,myy,x,y)
	draw_sprite_ext(sprSwanNeck,index,myx-__view_get( e__VW.XView, 0 ),myy-__view_get( e__VW.YView, 0 ),1,1,mydir+addir,c_white,1)
	myx+=lengthdir_x(22,mydir+addir)
	myy+=lengthdir_y(22,mydir+addir)
	if dead=0 dir+=20
	i+=1
	}
	}
	dir=tempdir
	}


	if image_xscale>1 {
	draw_set_blend_mode(bm_add)
	if state<2 d3d_set_fog(1,merge_color(c_black,c_white,(image_xscale-1)*2),0,0) else d3d_set_fog(1,merge_color(c_black,merge_color(c_white,merge_color(c_yellow,c_lime,random(1)),random(1)),(image_xscale-1)*0.5),0,0)
	draw_sprite_ext(sprite_index,image_index,x+myx-__view_get( e__VW.XView, 0 ),y+myy-__view_get( e__VW.YView, 0 ),image_xscale,image_yscale,image_angle,image_blend,image_alpha) 
	d3d_set_fog(0,0,0,0)
	draw_set_blend_mode(bm_normal)
	if state<2 {
	image_yscale-=0.025
	image_xscale-=0.025
	}
	}

	}


	with objSwanChainsawHead {

	draw_sprite_ext(sprite_index,image_index,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),image_xscale,image_yscale,image_angle,image_blend,image_alpha)
	if blink<8 {
	draw_sprite_ext(sprSwanEyesBlink,blink,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),image_xscale,image_yscale,image_angle,image_blend,image_alpha)
	blink+=0.5
	}

	if image_xscale>1 {
	draw_set_blend_mode(bm_add)
	d3d_set_fog(1,merge_color(c_black,c_white,(image_xscale-1)*2),0,0)
	draw_sprite_ext(sprite_index,image_index,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),image_xscale,image_yscale,image_angle,image_blend,image_alpha)
	d3d_set_fog(0,0,0,0)
	draw_set_blend_mode(bm_normal)
	image_yscale-=0.025
	image_xscale-=0.025
	}
	}

	with objSwanGunHead {

	draw_sprite_ext(sprite_index,image_index,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),image_xscale,image_yscale,image_angle,image_blend,image_alpha)
	if blink<8 {
	draw_sprite_ext(sprSwanEyesBlink,blink,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),image_xscale,image_yscale,image_angle,image_blend,image_alpha)
	blink+=0.5
	}

	if image_xscale>1 {
	draw_set_blend_mode(bm_add)
	d3d_set_fog(1,merge_color(c_black,c_white,(image_xscale-1)*2),0,0)
	draw_sprite_ext(sprite_index,image_index,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),image_xscale,image_yscale,image_angle,image_blend,image_alpha)
	d3d_set_fog(0,0,0,0)
	draw_set_blend_mode(bm_normal)
	image_yscale-=0.025
	image_xscale-=0.025
	}
	}

	with objSwanBullet {
	draw_sprite_ext(sprite_index,image_index,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),image_xscale,image_yscale,image_angle,image_blend,image_alpha)
	}

	with objSwanShadow {
	draw_sprite_ext(sprite_index,image_index,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),image_xscale,image_yscale,image_angle,image_blend,image_alpha)
	}



}
