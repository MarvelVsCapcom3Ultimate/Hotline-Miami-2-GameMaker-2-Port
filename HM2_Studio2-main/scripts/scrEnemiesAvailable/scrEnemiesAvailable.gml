function scrEnemiesAvailable(argument0) {
	i=0
	repeat (6) {
	available[i]=0
	i+=1
	}

	//FANS
	if argument0=0 {
	available[1]=1
	}

	//DETECTIVE
	if argument0=1 {
	available[1]=1
	}

	//WRITER
	if argument0=2 {
	available[0]=1
	available[1]=1
	}

	//SOLDIER
	if argument0=3 {
	available[4]=1
	}

	//SON
	if argument0=4 {
	available[2]=1
	available[5]=1
	}

	//RAT
	if argument0=5 {
	available[0]=1
	}

	//COBRA
	if argument0=6 {
	available[0]=1
	}

	//BUTCHER
	if argument0=7 {
	available[3]=1
	}

	//HENCHMAN
	if argument0=8 {
	available[1]=1
	}



}
