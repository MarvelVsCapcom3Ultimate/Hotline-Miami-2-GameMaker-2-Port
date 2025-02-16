global.my_id=id
with objCheckbox {if type=global.my_id.type on=0}
on=1

if objEditor.select=2 {
with objEditor {
i=0 
repeat checkboxes {
if checkbox[i].on=1 enemy[currentetype,currentenemy]=checkbox[i].sprite
i+=1
}
}
}


if objEditor.select=0 {
with objEditor {
i=0
repeat (tiles+1) {
if checkbox[i].on=1 currenttileset=i
i+=1
}
}
}
