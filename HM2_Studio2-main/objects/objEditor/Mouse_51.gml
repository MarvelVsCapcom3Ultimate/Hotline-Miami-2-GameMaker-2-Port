if wait>0 exit

if select=1 {
if keyboard_check(vk_control) {
nothing=1
} else {
with objEditorObjects {
if place_meeting(x,y,objEditor) {instance_destroy()}
}
}
}

if select=4 {
if keyboard_check(vk_control) {
nothing=1
} else {
with objEditorPlayer {
if place_meeting(x,y,objEditor) {instance_destroy()}
}
with objEditorCar {
if place_meeting(x,y,objEditor) {instance_destroy()}
}
}
}

if select=0 {
if tilewall=0 {
if keyboard_check(vk_control) {
start_x=mouse_x-3
start_y=mouse_y-3
i=0
repeat (6) {
ii=0
repeat (6) {
if currenttileset>=6 tile_layer_delete_at(1000,start_x+i,start_y+ii) else tile_layer_delete_at(1001,start_x+i,start_y+ii)
ii+=1
}
i+=1
}
} else {
if currenttileset>=6 tile_layer_delete_at(1000,floor((mouse_x)*(1/16))*16,floor((mouse_y)*(1/16))*16) else tile_layer_delete_at(1001,floor((mouse_x)*(1/16))*16,floor((mouse_y)*(1/16))*16)
}
}
}

if select=0 {
if tilewall=1 {
if keyboard_check(vk_control) {
nothing=1 
} else {
with objWall {
if place_meeting(x,y,objEditor) {instance_destroy() scrAddCorners()}
}
with objEditorDoorV {
if place_meeting(x,y,objEditor) {instance_destroy() scrAddCorners()}
}
with objGlassPanel {
if place_meeting(x,y,objEditor) {instance_destroy() scrAddCorners()}
}
}
}
}

if select=2 {
with objEditorEnemy {
if keyboard_check(vk_control) {
nothing=1
} else {
if place_meeting(x,y,objEditor) {instance_destroy()}
}
}
}
