function scrCreateEnemyCheckboxes(argument0, argument1) {
	var myx,myy;
	//scrCreateEnemyCheckboxes(currentetype,currentenemy)

	with objCheckbox instance_destroy()
	checkboxes=0
	myx=0
	myy=0
	//GUNS
	if argument1<3 {
	i=0
	repeat guns[argument0]+1 {
	checkbox[i]=instance_create(room_width*0.75+32+myx,room_height/2-40+myy,objCheckbox)
	checkbox[i].label=gunname[argument0,i]
	checkbox[i].sprite=gun[argument0,i]
	if myx=0 myx=160 else {myy+=20 myx=0}
	if enemy[argument0,currentenemy]=gun[argument0,i] checkbox[i].on=1 else checkbox[i].on=0
	i+=1
	}
	checkboxes=i
	}
	//MELEE
	if argument1>=3 and argument1<5{
	i=0
	repeat melees[argument0]+1 {
	checkbox[i]=instance_create(room_width*0.75+32+myx,room_height/2-40+myy,objCheckbox)
	checkbox[i].label=meleename[argument0,i]
	checkbox[i].sprite=melee[argument0,i]
	if myx=0 myx=160 else {myy+=20 myx=0}
	if enemy[argument0,currentenemy]=melee[argument0,i] checkbox[i].on=1 else checkbox[i].on=0
	i+=1
	}
	checkboxes=i
	}
	//FAT

	//DOG

	//Special



}
