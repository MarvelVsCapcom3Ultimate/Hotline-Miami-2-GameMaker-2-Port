exit
if keyboard_check(vk_shift) {scrEditorTilesPushDown() exit}

if currenttileset<tiles currenttileset+=1 else currenttileset=0
with objCheckbox {if type=0 on=0}
checkbox[currenttileset].on=1
