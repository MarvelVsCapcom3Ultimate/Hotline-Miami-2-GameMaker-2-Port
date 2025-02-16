if wait>0 exit

if select=0 {
if tilewall=1 {
if keyboard_check(vk_control) {
if frac(currentwall*0.5)=0 currentwall+=1 else currentwall-=1
}
}
}

if select=1 {
if keyboard_check(vk_control) enemydir+=90 
}

if select=4 {
if keyboard_check(vk_control) enemydir+=90 
}

if select=2 {
if keyboard_check(vk_control) enemydir+=90 else {
global.test=0
with objEditorEnemy {
if global.test=0 {
if place_meeting(x,y,objEditor) {instance_destroy() global.test=1}
}
}
}
}
