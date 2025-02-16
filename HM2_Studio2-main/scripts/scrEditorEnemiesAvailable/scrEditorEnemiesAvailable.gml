function scrEditorEnemiesAvailable(argument0) {
	i=0
	repeat (6) {
	global.available[i]=0
	i+=1
	}

	//FANS
	if argument0=0 {
	global.available[1]=1
	}

	//DETECTIVE
	if argument0=1 {
	global.available[1]=1
	}

	//WRITER
	if argument0=2 {
	global.available[0]=1
	global.available[1]=1
	}

	//SOLDIER
	if argument0=3 {
	global.available[4]=1
	}

	//SON
	if argument0=4 {
	global.available[2]=1
	global.available[5]=1
	}

	//RAT
	if argument0=5 {
	global.available[0]=1
	}

	//COBRA
	if argument0=6 {
	global.available[0]=1
	}

	//BUTCHER
	if argument0=7 {
	global.available[3]=1
	}

	//HENCHMAN
	if argument0=8 {
	global.available[1]=1
	}



}
