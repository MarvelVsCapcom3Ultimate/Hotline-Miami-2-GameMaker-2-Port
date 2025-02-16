if keyboard_check(ord("U")) {
if sprite_exists(floor1) draw_sprite_ext(floor1,0,128,128,1,1,0,c_red,1)
if surface_exists(surf) draw_surface_ext(surf,128,128,1,1,0,c_red,1)
}

if gridon=1 {
i=0
draw_set_color(c_ltgray)
repeat (room_width/16) {
if frac(i*0.5)>0 draw_set_alpha(0.15) else draw_set_alpha(0.25)
draw_line(i*16,0,i*16,room_height)
draw_line(0,i*16,room_width,i*16)
i+=1
}
draw_set_alpha(1)
}
if !mouse_check_button(mb_right) {
if select=0 {
if tilewall=0 {
if tiledraw=0 {
if fill=0 and capsuletile=0 and sample=0 and !instance_exists(objEditorWindow) and objTopMenu.on=0 {
if keyboard_check(vk_control) {
draw_set_color(c_black)
draw_rectangle(mouse_x-1,mouse_y-1,mouse_x+16,mouse_y+16,0)
draw_background_part(tileset[currenttileset],tilex[currenttileset],tiley[currenttileset],16,16,mouse_x,mouse_y)
} else {
draw_set_color(c_black)
draw_rectangle(floor(mouse_x*(1/16))*16-1,floor(mouse_y*(1/16))*16-1,floor(mouse_x*(1/16))*16+16,floor(mouse_y*(1/16))*16+16,0)
draw_background_part(tileset[currenttileset],tilex[currenttileset],tiley[currenttileset],16,16,floor(mouse_x*(1/16))*16,floor(mouse_y*(1/16))*16)
}
}
}
}
}

if select=0 {
if tilewall=1 {
if !instance_exists(objEditorWindow) and objTopMenu.on=0 draw_sprite(wall[currentwall],0,floor(mouse_x*(1/32))*32,floor(mouse_y*(1/32))*32)
}
}
}

//OBJECTS

if select=1 and !instance_exists(objEditorWindow) and objTopMenu.on=0 {
mousex=mouse_x
mousey=mouse_y
if keyboard_check(vk_shift) {
scrEditorFurnitureSnap()
}
if mouse_x<room_width*0.75 and global.moveid<0 draw_sprite_ext(objWindowList.mysprite,objWindowList.index,mousex,mousey,1,1,enemydir,c_white,1)
}

//enemies 
if select=2 and !instance_exists(objEditorWindow) and objTopMenu.on=0 {
if mouse_x<room_width*0.75 and global.moveid<0 draw_sprite_ext(enemy[currentetype,currentenemy],0,mouse_x,mouse_y,1,1,enemydir,c_white,1)
}

//LEVEL

if select=4 and !instance_exists(objEditorWindow) and objTopMenu.on=0 {
if placeplayer=1 {if player[global.player]>0 draw_sprite_ext(player[global.player],0,mouse_x,mouse_y,1,1,enemydir,c_white,1) else placeplayer=0}
if placecar=1 {if car[global.player]>0 draw_sprite_ext(car[global.player],0,mouse_x,mouse_y,1,1,enemydir,c_white,1) else placecar=0}
}

//draw_set_color(merge_color(c_white,c_yellow,0.5+lengthdir_x(0.5,dir*3)))
//draw_rectangle(floor(mouse_x*(1/16))*16,floor(mouse_y*(1/16))*16,floor(mouse_x*(1/16))*16+15,floor(mouse_y*(1/16))*16+15,1)
//TILES
if select=0  {
if tilewall=0 {
if tiledraw=1 {
if currenttileset=9 {//and (abs(tilestartx-tileendx)>16 and abs(tilestarty-tileendy)>16) {
scrDrawEdges()
} else {
i=0
if tilestartx<tileendx {tstartx=tilestartx tendx=tileendx} else {tstartx=tileendx if capsuletile=1 tendx=tilestartx+32 else tendx=tilestartx+16}
if tilestarty<tileendy {tstarty=tilestarty tendy=tileendy} else {tstarty=tileendy if capsuletile=1 tendy=tilestarty+32 else tendy=tilestarty+16}
repeat abs((tstartx-tendx)*(1/16)) {
ii=0
repeat abs((tstarty-tendy)*(1/16)) {
draw_background_part(tileset[currenttileset],tilex[currenttileset],tiley[currenttileset],16,16,tstartx+i*16,tstarty+ii*16)
ii+=1
}
i+=1
}
}
if capsuletile=1 {
//horizontal
//walls
scrEditorDrawTileCapsule()
}
}
}
}
//WALLS
if select=0 {
if tilewall=1 {
if walldraw=1 {
i=0
if frac(currentwall*0.5)=0 {wallvsprite=wall[currentwall] wallhsprite=wall[currentwall+1]} else {wallvsprite=wall[currentwall-1] wallhsprite=wall[currentwall]}
if frac(currentwall*0.5)=0 wallhor=0 else wallhor=1

if wallcapsule=1 {
scrEditorDrawWallCapsule()
} else {
if wallhor=1 {

times=abs(ceil((wallstartx-wallendx)*(1/32)))
if wallstartx>wallendx times+=1
repeat times {
draw_sprite(wallhsprite,0,wallstartx+i*32,wallstarty)
if wallstartx<wallendx i+=1 else i-=1
}
}

if wallhor=0 {
times=abs(ceil((wallstarty-wallendy)*(1/32)))
if wallstarty>wallendy times+=1
repeat times {
draw_sprite(wallvsprite,0,wallstartx,wallstarty+i*32)
if wallstarty<wallendy i+=1 else i-=1
}
}

}
}
}
}
///INTERFACE

if select=0 and !instance_exists(objEditorWindow) and objTopMenu.on=0 and tilewall=0 {
if fill=1 draw_sprite_ext(sprPaintBucket,dir*0.1,mouse_x,mouse_y,1,1,0,c_white,1)
if capsuletile=1 draw_sprite_ext(sprWallCapsule,dir*0.1,floor(mouse_x*1/32)*32,floor(mouse_y*1/32)*32,1,1,0,c_white,1)
if sample=1 draw_sprite_ext(sprPipette,dir*0.1,mouse_x,mouse_y,1,1,0,c_white,1)
}

if mouse_check_button(mb_right) and !keyboard_check(vk_control) and !keyboard_check(vk_shift) {
draw_sprite_ext(sprEraser,dir*0.1,mouse_x,mouse_y,1,1,0,c_white,1)
}

draw_set_color(c_teal)
color1=merge_color(merge_color(c_teal,c_fuchsia,0.5+lengthdir_x(0.5,dir*0.6436)),c_aqua,0.25+lengthdir_y(0.25,dir*0.3234))
color2=merge_color(merge_color(c_aqua,c_teal,0.5+lengthdir_x(0.5,dir*0.55)),c_purple,0.4+lengthdir_x(0.4,dir*0.567))
draw_rectangle_color(room_width*0.75,32,room_width+1,room_height,color1,color1,color2,color2,0)
//draw_rectangle(room_width*0.75,32,room_width+1,room_height,0)
draw_set_color(c_black)
draw_rectangle(room_width*0.75,32,room_width+1,room_height,1)
draw_set_font(fntLabel)
i=0
repeat (5) {
if select=i draw_sprite_ext(sprLabels,1,room_width*0.75+i*58+4,16,1,1,0,color1,1) else draw_sprite_ext(sprLabels,0,room_width*0.75+i*58+4,16,1,1,0,color1,1)
draw_set_color(c_black)
draw_text(room_width*0.75+i*58+12,19,label[i])
if select=i draw_set_color(c_white) else draw_set_color(c_yellow)
draw_text(room_width*0.75+i*58+10,17,label[i])
i+=1
}
draw_set_font(fntEditor)
if select=0 {
//menu
draw_set_font(fntEditor)
draw_set_halign(fa_left)
draw_set_color(merge_color(c_navy,c_purple,0.5+lengthdir_x(0.5,dir)))
draw_text(room_width*0.75+32,62,tilename[currenttileset])
draw_set_color(merge_color(c_aqua,c_fuchsia,0.5+lengthdir_x(0.5,dir)))
draw_text(room_width*0.75+30,60,tilename[currenttileset])

//zoom
draw_set_color(c_black)
draw_background_part_ext(tileset[currenttileset],tilex[currenttileset],tiley[currenttileset],16,16,room_width*0.75+32,80,3,3,c_white,1)
draw_rectangle(room_width*0.75+32,80,room_width*0.75+32+48,128,1)





draw_set_color(merge_color(c_teal,c_black,0.5+lengthdir_x(0.1,dir)))
draw_rectangle(room_width*0.75+32,174,room_width*0.75+32+background_get_width(tileset[currenttileset]),174+background_get_height(tileset[currenttileset]),0)
draw_background(tileset[currenttileset],room_width*0.75+32,174)
if tilewall=0 draw_set_color(merge_color(c_yellow,c_white,0.5+lengthdir_x(0.5,dir))) else draw_set_color(c_black)
draw_rectangle(room_width*0.75+32,174,room_width*0.75+32+background_get_width(tileset[currenttileset]),174+background_get_height(tileset[currenttileset]),1)
draw_set_color(merge_color(c_white,c_yellow,0.5+lengthdir_x(0.5,dir*3)))
draw_rectangle(room_width*0.75+33+tilex[currenttileset],175+tiley[currenttileset],room_width*0.75+32+tilex[currenttileset]+14,176+tiley[currenttileset]+14,1)
draw_set_font(fntHelp)
draw_set_color(c_dkgray)
draw_text(room_width*0.75+33,174+17+background_get_height(tileset[currenttileset]),help[select])
draw_set_color(c_yellow)
draw_text(room_width*0.75+32,174+16+background_get_height(tileset[currenttileset]),help[select])
}

if select=1 {
draw_set_font(fntHelp)
draw_set_color(c_dkgray)
draw_text(room_width*0.75+34,626,help[select])
draw_set_color(c_yellow)
draw_text(room_width*0.75+32,624,help[select])
draw_set_font(fntEditor)
}

if select=2 {
draw_set_color(merge_color(c_teal,c_black,0.5+lengthdir_x(0.1,dir)))
draw_rectangle(room_width*0.75+44,96,room_width*0.75+45+266,96+224,0)
draw_set_color(c_black)
draw_rectangle(room_width*0.75+44,96,room_width*0.75+45+266,96+224,1)
draw_set_font(fntHelp)
draw_set_halign(fa_left)
draw_text(room_width*0.75+48,325,enemydesc[currentenemy])
draw_set_color(merge_color(c_white,c_yellow,0.75+lengthdir_x(0.25,dir)))
draw_text(room_width*0.75+47,324,enemydesc[currentenemy])
i=0
start_x=0
start_y=0
repeat (7) {
addy=0
//if currentenemy=i addy=-abs(lengthdir_x(2,dir*3))
if currentenemy=i {
if currentenemy<6 draw_sprite_ext(legs[currentetype],enemyindex*2,room_width*0.75+78+start_x,96+32+start_y+addy,2,2,0,c_white,1)
if currentenemy<5 draw_sprite_ext(enemy[currentetype,i],enemyindex,room_width*0.75+78+start_x,96+32+start_y+addy,2,2,0,c_white,1) else draw_sprite_ext(enemy[currentetype,i],enemyindex,room_width*0.75+78+start_x+8,96+32+start_y+addy,2,2,0,c_white,1)
} else {
if i<5 draw_sprite_ext(enemy[currentetype,i],0,room_width*0.75+78+start_x,96+32+start_y+addy,2,2,0,c_white,1) else draw_sprite_ext(enemy[currentetype,i],0,room_width*0.75+78+start_x+8,96+32+start_y+addy,2,2,0,c_white,1)
}
draw_set_halign(fa_center)
draw_set_font(fntEditor)
draw_set_color(c_black)
draw_text(room_width*0.75+87+start_x,96+32+start_y+28,enemytype[i])
if currentenemy=i draw_set_color(merge_color(c_white,c_yellow,0.5+lengthdir_x(0.5,dir-i*25))) else draw_set_color(merge_color(c_gray,c_dkgray,0.5+lengthdir_x(0.5,dir-i*25)))
draw_text(room_width*0.75+85+start_x,96+32+start_y+26,enemytype[i])
if start_x<160 start_x+=80 else {start_y+=72 start_x=0}
i+=1
}
draw_set_color(c_black)
draw_text(room_width*0.85+2,64+2,enemygroup[currentetype])
draw_set_color(c_yellow)
draw_text(room_width*0.87,64,enemygroup[currentetype])
draw_set_halign(fa_left)
draw_set_font(fntHelp)
draw_set_color(c_dkgray)
draw_text(room_width*0.75+34,418,help[select])
draw_set_color(c_yellow)
draw_text(room_width*0.75+32,416,help[select])
}

enemyindex+=0.2


if select=0 {
draw_set_color(merge_color(c_teal,c_black,0.5+lengthdir_x(0.1,dir)))
draw_rectangle(room_width*0.75+32,396+127,room_width*0.75+33+256,396+128+64,0)
if tilewall=1 or capsuletile=1 draw_set_color(merge_color(c_yellow,c_white,0.5+lengthdir_x(0.5,dir))) else draw_set_color(c_black)
draw_rectangle(room_width*0.75+32,396+127,room_width*0.75+33+256,396+128+64,1)

i=0
ii=0
repeat (16) {
addx=0
addy=0
if i+ii*8=6 addx=2 
if i+ii*8=7 addy=2
if i+ii*8=8 addx=2
if i+ii*8=11 addy=2
draw_sprite_ext(wall[i+ii*8],0,room_width*0.75+32+i*32+addx,396+128+ii*32+addy,1,1,0,c_white,1)
i+=1
if i>7 {
ii+=1
i=0
}
}

wallx=currentwall
wally=0
if currentwall>7 {wally=1 wallx=currentwall-8}
draw_set_color(merge_color(c_white,c_yellow,0.5+lengthdir_x(0.5,dir*3)))
draw_rectangle(room_width*0.75+32+wallx*32,396+128+wally*32,room_width*0.75+64+wallx*32,396+160+wally*32,1)
draw_set_font(fntHelp)
draw_set_color(c_dkgray)
draw_text(room_width*0.75+34,396+210,help[5])
draw_set_color(c_yellow)
draw_text(room_width*0.75+32,396+208,help[5])
}

if select=4 {
if sprite_exists(player[global.player]) {
draw_set_color(merge_color(c_teal,c_black,0.5+lengthdir_x(0.1,dir)))
draw_rectangle(room_width*0.75+32,80,room_width*0.75+96,144,0)
if placeplayer=1 draw_set_color(c_yellow) else draw_set_color(c_black)
draw_rectangle(room_width*0.75+32,80,room_width*0.75+96,144,1)
if placeplayer=1 draw_sprite_ext(player[global.player],enemyindex,room_width*0.75+64,112,2,2,0,c_white,1) else draw_sprite_ext(player[global.player],0,room_width*0.75+64,112,2,2,0,c_white,1)
draw_set_font(fntEditor)
draw_set_halign(fa_left)
draw_set_color(c_dkgray)
draw_text(room_width*0.75+34,58,"PLAYER")
draw_set_color(c_yellow)
draw_text(room_width*0.75+32,56,"PLAYER")
} else {
draw_set_color(merge_color(c_teal,c_black,0.5+lengthdir_x(0.1,dir)))
draw_rectangle(room_width*0.75+32,80,room_width*0.75+96,144,0)
if placeplayer=1 draw_set_color(c_yellow) else draw_set_color(c_black)
draw_rectangle(room_width*0.75+32,80,room_width*0.75+96,144,1)
//if placeplayer=1 draw_sprite_ext(player[global.player],enemyindex,room_width*0.75+64,96,2,2,0,c_white,1) else draw_sprite_ext(player[global.player],0,room_width*0.75+64,96,2,2,0,c_white,1)
draw_set_font(fntEditor)
draw_set_halign(fa_left)
draw_set_color(c_dkgray)
draw_text(room_width*0.75+34,58,"NONE")
draw_set_color(c_yellow)
draw_text(room_width*0.75+32,56,"NONE")
draw_set_font(fntHelp)
draw_set_color(c_dkgray)
draw_text(room_width*0.75+34,150,help[select])
draw_set_color(c_yellow)
draw_text(room_width*0.75+32,150,help[select])
}

if sprite_exists(car[global.player]) {
draw_set_color(merge_color(c_teal,c_black,0.5+lengthdir_x(0.1,dir)))
draw_rectangle(room_width*0.75+112,80,room_width*0.75+256,144,0)
if placecar=1 draw_set_color(c_yellow) else draw_set_color(c_black)
draw_rectangle(room_width*0.75+112,80,room_width*0.75+256,144,1)
draw_sprite(car[global.player],0,room_width*0.75+184+sprite_get_xoffset(car[global.player])-sprite_get_width(car[global.player])/2,112)
draw_set_font(fntEditor)
draw_set_halign(fa_left)
draw_set_color(c_dkgray)
draw_text(room_width*0.75+114,58,"VEHICLE")
draw_set_color(c_yellow)
draw_text(room_width*0.75+112,56,"VEHICLE")
} else {
draw_set_color(merge_color(c_teal,c_black,0.5+lengthdir_x(0.1,dir)))
draw_rectangle(room_width*0.75+112,80,room_width*0.75+256,144,0)
if placecar=1 draw_set_color(c_yellow) else draw_set_color(c_black)
draw_rectangle(room_width*0.75+112,80,room_width*0.75+256,144,1)
//draw_sprite(car[global.player],0,room_width*0.75+184+sprite_get_xoffset(car[global.player])-sprite_get_width(car[global.player])/2,96)
draw_set_font(fntEditor)
draw_set_halign(fa_left)
draw_set_color(c_dkgray)
draw_text(room_width*0.75+114,58,"NONE")
draw_set_color(c_yellow)
draw_text(room_width*0.75+112,56,"NONE")
}
}


dir+=2


//if mouse_check_button(mb_left) {if cursorindex<2 cursorindex+=0.2} else {if cursorindex>0 cursorindex-=0.2}

draw_set_blend_mode(bm_add)
draw_circle_color(mouse_x,mouse_y,48+random(8),merge_color(c_dkgray,c_black,0.55+random(0.05)),c_black,0)

draw_set_blend_mode(bm_subtract)
my_y=random(32)
my_x=random(32)
draw_sprite_tiled_ext(sprNoise,0,-my_x,-my_y,1,1,c_white,1)
//draw_sprite_tiled_ext(sprScanlines,0,0,-my_y,3,3,c_white,1)
draw_set_blend_mode(bm_subtract)
//draw_circle_color(room_width/2,room_height/2,room_width*0.73+random(24),c_black,merge_color(c_navy,c_aqua,0.1+random(0.1)),0)
draw_set_blend_mode(bm_normal)
