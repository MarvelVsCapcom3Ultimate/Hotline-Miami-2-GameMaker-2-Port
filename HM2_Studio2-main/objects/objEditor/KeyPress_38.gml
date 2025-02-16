exit
if keyboard_check(vk_shift) {scrEditorTilesPushUp() exit}

if currenttileset>0 currenttileset-=1 else currenttileset=tiles
with objCheckbox {if type=0 on=0}
checkbox[currenttileset].on=1
