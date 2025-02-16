if objEditor.select=2 {
if index=0 {
with objEditor {
if currentetype>0 currentetype-=1 else currentetype=etypes
scrEditorCorrectEnemyType(0)
scrCreateCheckboxes()
}
}
if index=1 {
with objEditor {
if currentetype<etypes currentetype+=1 else currentetype=0
scrEditorCorrectEnemyType(1)
scrCreateCheckboxes()
}
}
}

if objEditor.select=1 {
if index=0 {
with objWindowList {
if index>0 index-=1 else index=sprite_get_number(mysprite)-1
}
}
if index=1 {
with objWindowList {
if index<sprite_get_number(mysprite)-1 index+=1 else index=0
}
}
}
