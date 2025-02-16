if talked=0 {
if objPlayer.x>objWeaponTable.x and objPlayer.y>objWeaponTable.y-24 and objPlayer.x<objWeaponTable.x+80 and objPlayer.y<objWeaponTable.y {
scrGetMessage(0)
talked=1
}
}
if talked=1 and !instance_exists(objConversation) objWeaponTable.on=1

if instance_exists(objConversation) {
image_speed=0.1
} else {
image_speed=0
sprite_index=sprGeneral1Idle
}

