if h<255 h+=1 else h=0
scale=-0.1+lengthdir_x(0.25,dir)//0.5+lengthdir_x(2,dir)
if instance_exists(objTigerAttack) {
if objTigerAttack.dead=1 scale=-objTigerAttack.shake*4
}
if instance_exists(objSwanBossBody) {
if objSwanBossBody.state=2 scale=-1.5+(objSwanBossBody.image_xscale-1)*8
}
if room=rmLSDRoof {
if objPlayer.y<room_height-128 scale=-((room_height-128)-objPlayer.y)*0.015 else scale=-0.5
}
if !surface_exists(surf) {
surf=surface_create(__view_get( e__VW.WPort, 0 ),__view_get( e__VW.HPort, 0 ))
surface_set_target(surf) 
draw_clear_alpha(c_black,0)
surface_reset_target()
}
if !surface_exists(surf2) {
surf2=surface_create(__view_get( e__VW.WPort, 0 ),__view_get( e__VW.HPort, 0 ))
surface_set_target(surf2) 
draw_clear_alpha(c_black,0)
surface_reset_target()
}

surface_copy(surf2,0,0,surf)
surface_set_target(surf)
draw_clear_alpha(c_white,0)
d3d_set_projection_ortho(0,0,__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 ),0)
texture_set_interpolation(1)

if abs(scale)=0 draw_surface_ext(surf2,-0.5+random(1),-0.5+random(1),1,1,0,c_white,0.999) else draw_surface_ext(surf2,screenx-__view_get( e__VW.XView, 0 )+scale*0.5+(-0.5+random(1))*(1/3),screeny-__view_get( e__VW.YView, 0 )+scale*0.5+(-0.5+random(1))*(1/3),(1+abs((scale/(surface_get_width(surf2)*(1/3)))*2))*(1/3),(1+abs((scale/(surface_get_height(surf2)*(1/3)))*2))*(1/3),0,merge_color(c_white,make_color_hsv(h,255,255),0.1),0.999)
texture_set_interpolation(0)
if room=rmLSDRoof nothing=1 else {
draw_set_blend_mode(bm_subtract)
repeat (60) {
draw_sprite_ext(sprDisappear,random(7),round(random(__view_get( e__VW.WView, 0 ))),round(random(__view_get( e__VW.HView, 0 ))),0.25+random(0.25),0.25+random(0.25),random(360),c_white,1)
}
draw_set_blend_mode(bm_normal)
}

with objRainbow {
draw_set_blend_mode(bm_add)
i=0
repeat (7) {
if i=0 color=c_red
if i=1 color=c_orange
if i=2 color=c_yellow
if i=3 color=c_lime
if i=4 color=c_aqua
if i=5 color=c_blue
if i=6 color=c_fuchsia
mycolor1=merge_color(merge_color(color,merge_color(c_aqua,c_purple,0.5+lengthdir_x(0.5,dir*0.1)),0.35),c_black,0.95+lengthdir_x(0.05,dir+i*20))
mycolor2=merge_color(merge_color(color,merge_color(c_aqua,c_purple,0.5+lengthdir_x(0.5,dir*0.1)),0.35),c_black,0.95+lengthdir_x(0.05,dir+90+i*20))
draw_rectangle_color(x1-__view_get( e__VW.XView, 0 )+i*16,y1-__view_get( e__VW.YView, 0 ),x1-__view_get( e__VW.XView, 0 )+i*16+16,y2-__view_get( e__VW.YView, 0 ),c_black,c_black,mycolor1,mycolor2,0)
addx=random(16)
draw_line_color(x1-__view_get( e__VW.XView, 0 )+i*16+addx,y2-__view_get( e__VW.YView, 0 ),x1-__view_get( e__VW.XView, 0 )+i*16+addx,(y2*(0.4+random(0.3)))-__view_get( e__VW.YView, 0 ),merge_color(mycolor1,c_black,0.7+random(0.1)),c_black)
i+=1
}
/*draw_rectangle_color(x1,y2*0.3,x1+7*16,y2*0.55,c_black,c_black,c_dkgray,c_dkgray,0)
draw_set_color(c_dkgray)
draw_rectangle(x1,y2*0.55,x1+7*16,y2*0.65,0)
draw_rectangle_color(x1,y2*0.65,x1+7*16,y2*0.9,c_dkgray,c_dkgray,c_black,c_black,0)*/
draw_set_blend_mode(bm_normal)
dir+=4
}

with objGore draw_surface_ext(surf,-__view_get( e__VW.XView, 0 ),-__view_get( e__VW.YView, 0 ),0.5,0.5,0,c_white,1)
with objLSDBushVines draw_sprite_ext(sprite_index,image_index,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),image_xscale,image_yscale,image_angle,image_blend,image_alpha)
with objShard draw_sprite_ext(sprite_index,image_index,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),image_xscale,image_yscale,image_angle,image_blend,image_alpha)
with objZebraShard draw_sprite_ext(sprite_index,image_index,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),image_xscale,image_yscale,image_angle,image_blend,image_alpha)
with objZebraParts draw_sprite_ext(sprite_index,image_index,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),image_xscale,image_yscale,image_angle,image_blend,image_alpha)
with objSwanChunks draw_sprite_ext(sprite_index,image_index,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),image_xscale,image_yscale,image_angle,image_blend,image_alpha)
with objSwanBrainChunk draw_sprite_ext(sprite_index,image_index,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),image_xscale,image_yscale,image_angle,image_blend,image_alpha)
with objIntestine draw_sprite_ext(sprite_index,image_index,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),image_xscale,image_yscale,image_angle,image_blend,image_alpha)
with objBrains draw_sprite_ext(sprite_index,image_index,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),image_xscale,image_yscale,image_angle,image_blend,image_alpha)
with objPlayerDead draw_sprite_ext(sprite_index,image_index,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),image_xscale,image_yscale,image_angle,image_blend,image_alpha)
with objBodyPiece draw_sprite_ext(sprite_index,image_index,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),image_xscale,image_yscale,image_angle,image_blend,image_alpha)
with objDeadBody {
visible=0
draw_sprite_ext(sprite_index,image_index,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),image_xscale,image_yscale,image_angle,image_blend,image_alpha)
}
with objPlayerDead {
draw_sprite_ext(sprite_index,image_index,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),image_xscale,image_yscale,image_angle,image_blend,image_alpha)
}
with objEMafia {
draw_sprite_ext(sprEMafiaLegs,image_index*2,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),image_xscale,image_yscale,image_angle,image_blend,image_alpha)
draw_sprite_ext(sprite_index,image_index,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),image_xscale,image_yscale,image_angle,image_blend,image_alpha)
}
with objFatMafiaLSD {
angle=direction
if speed>0 or path_index>=0 draw_sprite_ext(sprEMafiaFatLegs,image_index*2,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),image_xscale,image_yscale,direction,image_blend,1)
draw_sprite_ext(sprite_index,image_index,x-__view_get( e__VW.XView, 0 )+1,y-__view_get( e__VW.YView, 0 )+1,image_xscale,left,angle,c_black,0.5)
draw_sprite_ext(sprite_index,image_index,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),image_xscale,left,angle,image_blend,image_alpha)
}
with objDog {
if speed>1 {
if instance_exists(objLSD) sprite_index=sprDogRunLSD else sprite_index=sprDogRun
} else {
if instance_exists(objLSD) sprite_index=sprDogWalkLSD else sprite_index=sprDogRun
}
draw_sprite_ext(sprite_index,image_index,x-__view_get( e__VW.XView, 0 )+1,y-__view_get( e__VW.YView, 0 )+1,image_xscale,image_yscale,direction,c_black,0.5)
draw_sprite_ext(sprite_index,image_index,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),image_xscale,image_yscale,direction,image_blend,image_alpha)
}
with objSonLSD {
legsprite=sprSonLegsLSD
if aimon=1 {
dir=point_direction(x,y,global.mousex,global.mousey)
}

draw_sprite_ext(legsprite,legindex,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),image_xscale,image_yscale,legdir,image_blend,image_alpha)
draw_sprite_ext(sprite_index,image_index,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),image_xscale,left,dir,image_blend,image_alpha)
if reload>0 reload-=1
if light>3 light-=3
sprite=-1234
if sprite_index=sprSonWalkShotgunLSD sprite=sprSonShotgunLSD
if sprite_index=sprSonAttackShotgunLSD sprite=sprSonShotgunAttackLSD
if sprite_exists(sprite) {
amount=-1+lengthdir_x(2,walkdir*0.25)
if amount<0 amount=0
color1=merge_color(merge_color(c_dkgray,c_black,0.5),make_color_hsv(h1,random(127+lengthdir_x(127,walkdir*3.25)),255),amount)
color2=merge_color(merge_color(c_dkgray,c_black,0.5),make_color_hsv(h2,random(127+lengthdir_x(127,walkdir*4)),255),amount)
if h1<251 h1+=4 else h1=0
if h2<248 h2+=7 else h2=0
draw_sprite_general(sprite,image_index,0,0,sprite_get_width(sprite),sprite_get_height(sprite),x+scrPosDirX(-sprite_get_xoffset(sprite),-sprite_get_yoffset(sprite),dir)-__view_get( e__VW.XView, 0 ),y+scrPosDirY(-sprite_get_xoffset(sprite),-sprite_get_yoffset(sprite),dir)-__view_get( e__VW.YView, 0 ),image_xscale,left,dir,color1,color2,color2,color1,image_alpha)
}
}
with objZebraBoss draw_sprite_ext(sprite_index,image_index,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),image_xscale,image_yscale,image_angle,image_blend,image_alpha)

with objLSDSmoke {
if depth=1 draw_sprite_ext(sprite_index,image_index,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),image_xscale,image_yscale,image_angle,image_blend,image_alpha)
}

with objTigerAttack {
if dead=1 {
myx=-shake+random(shake*2)
myy=-shake+random(shake*2)
d3d_set_fog(1,c_white,0,0)
draw_sprite_ext(sprite_index,image_index,x-__view_get( e__VW.XView, 0 )+myx,y-__view_get( e__VW.YView, 0 )+myy,image_xscale+shake*0.2,image_yscale+shake*0.2,image_angle,image_blend,image_alpha)
draw_sprite_ext(sprTigerBossHeadAttack,index,x-__view_get( e__VW.XView, 0 )+myx,y-__view_get( e__VW.YView, 0 )+myy,image_xscale+shake*0.2,image_yscale+shake*0.2,image_angle,image_blend,image_alpha)
d3d_set_fog(0,0,0,0)
}
draw_sprite_ext(sprite_index,image_index,x-__view_get( e__VW.XView, 0 )+height*0.5,y-__view_get( e__VW.YView, 0 )+height,image_xscale,image_yscale,image_angle,c_black,image_alpha*0.5)
draw_sprite_ext(sprite_index,image_index,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),image_xscale,image_yscale,image_angle,image_blend,image_alpha)
draw_sprite_ext(sprTigerBossHeadAttack,index,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),image_xscale,image_yscale,image_angle,image_blend,image_alpha)
if dead=1 {
amount=(shake-8)*0.5
if amount<0 amount=0
d3d_set_fog(1,make_color_hsv(random(255),random(255)*((10-shake)*0.1),255),0,0)
draw_sprite_ext(sprite_index,image_index,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),image_xscale+shake*0.1,image_yscale+shake*0.1,image_angle,image_blend,1)
draw_sprite_ext(sprTigerBossHeadAttack,index,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),image_xscale+shake*0.1,image_yscale+shake*0.1,image_angle+shake*2,image_blend,1)
d3d_set_fog(0,0,0,0)
draw_set_alpha(1)
}
}
with objTigerHead {
draw_sprite_ext(sprite_index,image_index,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),image_xscale,image_yscale,image_angle,image_blend,image_alpha)
}


scrLSDDrawSwanBossNew()

with objLSDSmoke {
if depth=-1 draw_sprite_ext(sprite_index,image_index,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),image_xscale,image_yscale,image_angle,image_blend,image_alpha)
}
with objLSDBush draw_sprite_ext(sprite_index,image_index,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),image_xscale,image_yscale,image_angle,image_blend,image_alpha)
with objPalmTreeLSD {
if on=1 {
i=0
repeat (branches) {
draw_sprite_ext(sprPalmTreeLeafLSD,branchindex[i],x-__view_get( e__VW.XView, 0 )+lengthdir_x(10,branchdir[i]),y-__view_get( e__VW.YView, 0 )+lengthdir_y(10,branchdir[i]),1+lengthdir_x(0.05,branchsway[i]*0.87),branchscale[i],branchdir[i]+lengthdir_x(branchangle[i],branchsway[i]),merge_color(blend[i],merge_color(c_blue,c_white,0.5),0.25+lengthdir_x(0.25,branchsway[i]*4)),1)
branchsway[i]+=0.5+lengthdir_x(0.25,sway)
i+=1
}
draw_sprite_ext(sprite_index,image_index,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),image_xscale+lengthdir_x(0.025,sway*0.71),image_yscale+lengthdir_x(0.025,sway*0.71),image_angle+lengthdir_x(2,sway),merge_color(merge_color(c_teal,c_purple,0.2),merge_color(c_blue,c_white,0.5),0.5+lengthdir_x(0.25,sway*4)),image_alpha)
sway+=0.78
}
}
with objBigTreeLSD {
if on {
draw_sprite_ext(sprite_index,image_index,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),image_xscale+lengthdir_x(0.025,sway*0.71),image_yscale+lengthdir_x(0.025,sway*0.71),image_angle+lengthdir_x(2,sway),merge_color(merge_color(c_teal,c_aqua,0.2),merge_color(c_blue,c_white,0.5),0.5+lengthdir_x(0.25,sway*4)),image_alpha)
sway+=0.78
}
}
with objLSDParticle {
draw_sprite_ext(sprite_index,image_index,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),image_xscale,image_yscale,image_angle,image_blend,image_alpha)
}
with objSwanShadowDive {
draw_sprite_ext(sprite_index,image_index,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),image_xscale,image_yscale,image_angle,image_blend,image_alpha)
}
surface_reset_target()

dir+=0.5
d3d_set_projection_ortho(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 ),__view_get( e__VW.Angle, 0 ))

screenx=__view_get( e__VW.XView, 0 )
screeny=__view_get( e__VW.YView, 0 )
/* */
/*  */
