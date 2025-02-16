scrMoveSolidOn()

global.my_id=id
with objEditorDoorV {
if place_meeting(x,y,global.my_id) {
global.my_id.target=id
with global.my_id {
if target.swinger=1 and abs(target.swingspeed)>1 {
if target.object_index=objEditorDoorV or object_get_parent(target.object_index)=objEditorDoorV {
if target.x>x dir=180-20+random(40) else dir=-20+random(40)
}
if target.object_index=objEditorDoorH or object_get_parent(target.object_index)=objEditorDoorH {
if target.y>y dir=90-20+random(40) else dir=270-20+random(40)
}
if object_index=objSoldierFatGun or object_index=objSoldierFatKnife or object_index=objEMafiaFat or object_get_parent(object_index)=objDog or object_index=objFatPolice or object_index=objFatMafiaLSD nothing=1 else {
sound_play(sndDoorHit)
sound_play(sndPunch)
scrEnemyGetKnockedOut(object_index,dir)
}
}
}
}
}
