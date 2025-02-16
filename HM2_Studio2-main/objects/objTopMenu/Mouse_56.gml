if instance_exists(objEditorWindow) exit
if windowopen=0 {
if select>-1 {
windowopen=1
exit
}
} else {
windowopen=0 
if mselect>-1 scrTopMenuSelect(select,mselect)
}
