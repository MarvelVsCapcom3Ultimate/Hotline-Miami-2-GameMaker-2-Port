if enemydir>270 enemydir-=360
if enemydir<0 enemydir+=360

if currenttileset>7 {fill=0 sample=0}

if instance_exists(objEditorWindow) or objTopMenu.on=1 wait=10 else {
if wait>0 wait-=1
}

x=mouse_x
y=mouse_y
if select=3 {

}

if select=1 {
if global.moveid>-1 and keyboard_check(vk_control) {global.moveid.x=mousex global.moveid.y=mousey global.moveid.image_angle=enemydir}
}

if select=2 {
if global.moveid>-1 and keyboard_check(vk_control) {global.moveid.x=x global.moveid.y=y global.moveid.image_angle=enemydir}
}

/*
if select=1 {
if currentenemy<3 {
if checkbox[0].on=1 enemy[currentenemy]=sprEM16
if checkbox[1].on=1 enemy[currentenemy]=sprEShotgun
if checkbox[2].on=1 enemy[currentenemy]=sprEDoubleBarrel
if checkbox[3].on=1 enemy[currentenemy]=sprESilencer
} else {
if checkbox[0].on=1 enemy[currentenemy]=sprEBat
if checkbox[1].on=1 enemy[currentenemy]=sprEClub
if checkbox[2].on=1 enemy[currentenemy]=sprEKnife
if checkbox[3].on=1 enemy[currentenemy]=sprEPipe
}
}
*/

if select=3 {

}

if select=1 {

}
/* */
/*  */
