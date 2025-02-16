if wait>0 exit
if select=0 {
if tilewall=0 {
if sample=1 and mouse_x<room_width*0.75 {
mytile=tile_layer_find(1001,mouse_x,mouse_y)
if tile_exists(mytile) {
//show_message("FOUND TILE:"+string(mytile))
bg=tile_get_background(mytile)
currenttileset=0
while tileset[currenttileset]<bg or tileset[currenttileset]>bg currenttileset+=1
tilex[currenttileset]=tile_get_left(mytile)
tiley[currenttileset]=tile_get_top(mytile)
}
sample=0
exit
}

if fill=1 {
if currenttileset<8 scrEditorFillTiles(floor((mouse_x*(1/16)))*16,floor((mouse_y*(1/16)))*16,tilex[currenttileset],tiley[currenttileset],tileset[currenttileset],1001) else scrEditorFillTiles(floor((mouse_x*(1/16)))*16,floor((mouse_y*(1/16)))*16,tilex[currenttileset],tiley[currenttileset],tileset[currenttileset],1000)
}
if keyboard_check(vk_control) {
if currenttileset<8 ds_list_add(tilelist,tile_add(tileset[currenttileset],tilex[currenttileset],tiley[currenttileset],16,16,mouse_x,mouse_y,1001)) else ds_list_add(tilelist,tile_add(tileset[currenttileset],tilex[currenttileset],tiley[currenttileset],16,16,mouse_x,mouse_y,1000))
}
if keyboard_check(vk_shift) {
mytile=tile_layer_find(1001,mouse_x,mouse_y)
if tile_exists(mytile) {
//show_message("FOUND TILE:"+string(mytile))
bg=tile_get_background(mytile)
show_message(background_get_name(bg))
currenttileset=0
while tileset[currenttileset]<bg or tileset[currenttileset]>bg currenttileset+=1
tilex[currenttileset]=tile_get_left(mytile)
tiley[currenttileset]=tile_get_top(mytile)
}
exit
}
}
}


//OBJECTS

if select=1 {
if mouse_x<room_width*0.75 {
if keyboard_check(vk_control) {
global.moveid=-1
with objEditorObjects {
if place_meeting(x,y,objEditor) {if global.moveid=-1 {global.moveid=id objEditor.enemydir=image_angle}}
}
} else {
if keyboard_check(vk_shift) my_id=instance_create(mousex,mousey,objEditorObjects) else my_id=instance_create(mouse_x,mouse_y,objEditorObjects)
my_id.sprite_index=objWindowList.mysprite
my_id.image_angle=enemydir
my_id.object=objWindowList.myobject
my_id.image_speed=0
my_id.image_index=objWindowList.index
}
}
}

//ENEMIES
if select=2 {
if mouse_x>room_width*0.75 and mouse_x<room_width {
nothing=1
} else {
if keyboard_check(vk_control) {
global.moveid=-1
with objEditorEnemy {
if place_meeting(x,y,objEditor) {if global.moveid=-1 {global.moveid=id objEditor.enemydir=image_angle}}
}
} else {
my_id=instance_create(mouse_x,mouse_y,objEditorEnemy)
my_id.sprite_index=enemy[currentetype,currentenemy]
my_id.image_angle=enemydir
my_id.object=etype[currentetype,currentenemy]
}
}
}

if select=0 {
if tilewall=1 { 
if mouse_x<room_width*0.75 {
if currentwall=6 or currentwall=7 or currentwall=14 or currentwall=15 {
if currentwall=6 {instance_create(floor(mouse_x*(1/32))*32,floor(mouse_y*(1/32))*32,wallobj[currentwall])}
if currentwall=7 {instance_create(floor(mouse_x*(1/32))*32,floor(mouse_y*(1/32))*32,wallobj[currentwall])}
if currentwall=14 {instance_create(floor(mouse_x*(1/32))*32,floor(mouse_y*(1/32))*32,wallobj[currentwall])}
if currentwall=15 {instance_create(floor(mouse_x*(1/32))*32,floor(mouse_y*(1/32))*32,wallobj[currentwall])}
}
}
}
}

if select=4 {
if mouse_x<room_width*0.75 {
if placeplayer=1 and player[global.player]>0 {
with objEditorPlayer instance_destroy()
my_id=instance_create(mouse_x,mouse_y,objEditorPlayer)
my_id.sprite_index=player[global.player]
my_id.object=playerobject[global.player]
my_id.image_angle=enemydir
placeplayer=0
}
if placecar=1 and car[global.player]>0 {
with objEditorCar instance_destroy()
my_id=instance_create(mouse_x,mouse_y,objEditorCar)
my_id.sprite_index=car[global.player]
my_id.object=carobject[global.player]
my_id.image_angle=enemydir
placecar=0
}
}
}
