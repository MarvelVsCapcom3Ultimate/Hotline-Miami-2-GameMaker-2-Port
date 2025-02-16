function scrCreateCheckboxes() {
	with objCheckbox instance_destroy()
	with objButtons instance_destroy()
	with objWindowList instance_destroy()
	with objNextButton instance_destroy()
	if select=1 {
	instance_create(room_width*0.75+32,64,objWindowList)
	my_id=instance_create(room_width*0.75+64,588,objNextButton)
	my_id.index=0
	my_id=instance_create(room_width-80,588,objNextButton)
	my_id.index=1
	my_id.image_index=1
	}

	if select=2 {
	my_id=instance_create(room_width*0.75+56,64,objNextButton)
	my_id.index=0
	my_id=instance_create(room_width-72,64,objNextButton)
	my_id.index=1
	my_id.image_index=1
	scrCreateEnemyCheckboxes(currentetype,currentenemy)
	}

	if select=0 {
	/*checkbox[0]=instance_create(room_width*0.75+112,64,objCheckbox)
	checkbox[0].label="Floor"
	checkbox[1]=instance_create(room_width*0.75+112,82,objCheckbox)
	checkbox[1].label="Rugs"
	checkbox[2]=instance_create(room_width*0.75+112,100,objCheckbox)
	checkbox[2].label="Tile"
	checkbox[3]=instance_create(room_width*0.75+112,118,objCheckbox)
	checkbox[3].label="Toilet"
	checkbox[4]=instance_create(room_width*0.75+204,64,objCheckbox)
	checkbox[4].label="Stairs"
	checkbox[5]=instance_create(room_width*0.75+204,82,objCheckbox)
	checkbox[5].label="Asphalt"
	checkbox[6]=instance_create(room_width*0.75+204,100,objCheckbox)
	checkbox[6].label="Blood"
	checkbox[7]=instance_create(room_width*0.75+204,118,objCheckbox)
	checkbox[7].label="Edges"
	if currenttileset=0 checkbox[0].on=1 else checkbox[0].on=0
	if currenttileset=1 checkbox[1].on=1 else checkbox[1].on=0
	if currenttileset=2 checkbox[2].on=1 else checkbox[2].on=0
	if currenttileset=3 checkbox[3].on=1 else checkbox[3].on=0
	if currenttileset=4 checkbox[4].on=1 else checkbox[4].on=0
	if currenttileset=5 checkbox[5].on=1 else checkbox[5].on=0
	if currenttileset=6 checkbox[6].on=1 else checkbox[6].on=0
	if currenttileset=7 checkbox[7].on=1 else checkbox[7].on=0*/

	i=0
	ii=0
	iii=0
	repeat tiles+1 {
	checkbox[i]=instance_create(room_width*0.75+126+ii*104,64+iii*16,objCheckbox)
	checkbox[i].label=tilename[i]
	iii+=1 
	if iii>ceil(tiles)*0.5 {iii=0 ii+=1}
	i+=1
	}

	my_id=instance_create(room_width*0.75+32,140,objButtons)
	my_id=instance_create(room_width*0.75+64,140,objButtons)
	my_id.image_index=1
	my_id=instance_create(room_width*0.75+96,140,objButtons)
	my_id.image_index=2
	my_id=instance_create(room_width*0.75+32,492,objButtons)
	my_id.image_index=3

	i=0
	repeat (tiles+1) {
	checkbox[i].type=0
	i+=1
	}


	}



}
