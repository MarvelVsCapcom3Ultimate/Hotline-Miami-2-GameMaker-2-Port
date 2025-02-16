//draw_sprite_ext(sprLabels,i+6,room_width*0.75+i*48+4,16,1,1,0,color1,1)
if wait>0 exit
if mouse_x>room_width*0.75 and mouse_x<room_width and mouse_y>16 and mouse_y<32 {
select=floor((mouse_x-room_width*0.75)*(1/58))
if select>4 select=4
scrCreateCheckboxes()
exit
}




if select=0 {

/*if sample=1 and mouse_x<room_width*0.75 {
mytile=tile_layer_find(1001,mouse_x,mouse_y)
if tile_exists(mytile) {
bg=tile_get_background(mytile)
currenttileset=0
while tileset[currenttileset]!=bg currenttileset+=1
tilex[currenttileset]=tile_get_left(mytile)
tiley[currenttileset]=tile_get_top(mytile)
}
sample=0
exit
}*/

if mouse_x>room_width*0.75+32 and mouse_x<room_width*0.75+32+background_get_width(tileset[currenttileset]) and mouse_y>175 and mouse_y<174+background_get_height(tileset[currenttileset]) and tiledraw=0 {
tilex[currenttileset]=floor((mouse_x-(room_width*0.75+32))*(1/16))*16
tiley[currenttileset]=floor((mouse_y-175)*(1/16))*16
tilewall=0
} else {
if tilewall=0 {
if mouse_x<room_width*0.75-16 {
if fill=1 exit
if !keyboard_check(vk_control) and !keyboard_check(vk_shift) and !sample {
if tiledraw=0 {
if capsuletile=0 {
tilestartx=floor((mouse_x)*(1/16))*16
tilestarty=floor((mouse_y)*(1/16))*16
} else {
tilestartx=floor((mouse_x)*(1/32))*32
tilestarty=floor((mouse_y)*(1/32))*32
}
}
tiledraw=1
if capsuletile=0 {
tileendx=floor((mouse_x+16)*(1/16))*16
tileendy=floor((mouse_y+16)*(1/16))*16
} else {
tileendx=floor((mouse_x+16)*(1/32))*32
tileendy=floor((mouse_y+16)*(1/32))*32
}
}
}
}
}
}


if select=0 {
//draw_sprite_ext(wall[i+ii*8],0,room_width*0.75+18+i*32+addx,128+ii*32+addy,1,1,0,c_white,1)
if mouse_x>room_width*0.75+32 and mouse_y>128+396 and mouse_x<room_width*0.75+32+256 and mouse_y<192+396 {
tilewall=1
currentwall=floor((mouse_x-(room_width*0.75+32))*(1/32))+floor((mouse_y-(128+396))*(1/32))*8
if currentwall>15 currentwall=15
} else {
if tilewall=1 {
if mouse_x<room_width*0.75 {
if currentwall<15 {
if walldraw=0 {
wallstartx=floor((mouse_x)*(1/32))*32
wallstarty=floor((mouse_y)*(1/32))*32
}
walldraw=1
wallendx=floor((mouse_x+32)*(1/32))*32
wallendy=floor((mouse_y+32)*(1/32))*32
}
}
}
}
}

if select=4 {
if mouse_x>room_width*0.75+32 and mouse_y>80 and mouse_x<room_width*0.75+96 and mouse_y<144 and player[global.player]>0 placeplayer=1 else {
if mouse_x>room_width*0.75 placeplayer=0
}
if mouse_x>room_width*0.75+112 and mouse_y>80 and mouse_x<room_width*0.75+256 and mouse_y<144 and car[global.player]>0 placecar=1 else {
if mouse_x>room_width*0.75 placecar=0
}
}


if select=2 {
//draw_rectangle(room_width*0.75+32,128,room_width*0.75+9+266,128+224,1)
if mouse_x>room_width*0.75+48 and mouse_x<room_width*0.75+48+240 and mouse_y>96 and mouse_y<96+224 {
currentenemy=floor(((mouse_x-(room_width*0.75+48))*(1/80)))+floor(((mouse_y-96)*(1/72)))*3
if currentenemy>6 currentenemy=6
scrCreateCheckboxes()
} else {

}
}
/* */
/*  */
