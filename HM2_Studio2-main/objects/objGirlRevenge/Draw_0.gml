event_inherited()
if instance_number(objEnemy)+instance_number(objKnockedOut)+instance_number(objKeys)=0 {
mydir+=4
with objEditorDoorH {
if solid=1 and x=640 {
if objPlayer.sprite_index=sprPigUnlock nothing=1 else draw_sprite_ext(sprArrow,1,x+16,y+8+lengthdir_x(2,objGirlRevenge.mydir),1,1,0,c_white,1)
}
}
}
