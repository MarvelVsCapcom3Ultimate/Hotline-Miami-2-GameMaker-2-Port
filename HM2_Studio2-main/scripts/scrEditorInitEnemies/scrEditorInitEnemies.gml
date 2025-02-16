function scrEditorInitEnemies() {
	//MAFIA

	enemy[0,0]=sprEMafiaWalkM16
	enemy[0,1]=sprEMafiaWalkShotgun
	enemy[0,2]=sprEMafiaWalkDoubleBarrel
	enemy[0,3]=sprEMafiaWalkBat
	enemy[0,4]=sprEMafiaWalkClub
	enemy[0,5]=sprEMafiaFatWalk
	enemy[0,6]=sprDogWalk

	gun[0,0]=sprEMafiaWalkM16
	gun[0,1]=sprEMafiaWalkKalashnikov
	gun[0,2]=sprEMafiaWalkShotgun
	gun[0,3]=sprEMafiaWalkDoubleBarrel
	gun[0,4]=sprEMafiaWalkSilencer

	gunname[0,0]="M16"
	gunname[0,1]="Kalashnikov"
	gunname[0,2]="Shotgun"
	gunname[0,3]="DoubleBarrel"
	gunname[0,4]="Silencer"

	guns[0]=4

	melee[0,0]=sprEMafiaWalkBat
	melee[0,1]=sprEMafiaWalkClub
	melee[0,2]=sprEMafiaWalkKnife
	melee[0,3]=sprEMafiaWalkPipe

	meleename[0,0]="Bat"
	meleename[0,1]="Club"
	meleename[0,2]="Knife"
	meleename[0,3]="Pipe"

	melees[0]=3

	idle[0,0]=sprEMafiaIdlePhone
	idle[0,1]=sprEMafiaIdleSmoke
	idle[0,2]=sprEMafiaIdlePipe
	idle[0,3]=sprEMafiaIdleSit

	idlename[0,0]="Phone"
	idlename[0,1]="Smoke"
	idlename[0,2]="Pipe"
	idlename[0,3]="Sit"

	idles[0]=3

	//GANG

	enemy[1,0]=sprEGangWalkUzi
	enemy[1,1]=sprEGangWalkShotgun
	enemy[1,2]=sprEGangWalk9mm
	enemy[1,3]=sprEGangWalkBat
	enemy[1,4]=sprEGangWalkPipe
	enemy[1,5]=sprEGangFatWalk
	enemy[1,6]=sprDogWalk

	gun[1,0]=sprEGangWalkUzi
	gun[1,1]=sprEGangWalkShotgun
	gun[1,2]=sprEGangWalk9mm

	gunname[1,0]="Uzi"
	gunname[1,1]="Shotgun"
	gunname[1,2]="9mm"

	guns[1]=2

	melee[1,0]=sprEGangWalkBat
	melee[1,1]=sprEGangWalkChain
	melee[1,2]=sprEGangWalkKnife
	melee[1,3]=sprEGangWalkPipe

	meleename[1,0]="Bat"
	meleename[1,1]="Chain"
	meleename[1,2]="Knife"
	meleename[1,3]="Pipe"

	melees[1]=3

	idle[1,0]=sprEGangIdleKnife
	idle[1,1]=sprEGangIdleSmoke
	idle[1,2]=sprEGangIdlePipe

	idlename[1,0]="Knife"
	idlename[1,1]="Smoke"
	idlename[1,2]="Pipe"

	idles[1]=2

	//COLOMBIANS

	enemy[2,0]=sprColombianWalkSilencer
	enemy[2,1]=sprColombianWalkShotgun
	enemy[2,2]=sprColombianWalkFamae
	enemy[2,3]=sprColombianWalkMachete
	enemy[2,4]=sprColombianWalkKnife
	enemy[2,5]=sprEMafiaFatWalk
	enemy[2,6]=sprDogWalk

	gun[2,0]=sprColombianWalkFamae
	gun[2,1]=sprColombianWalkMendoza
	gun[2,2]=sprColombianWalkShotgun
	gun[2,3]=sprColombianWalkSilencer

	gunname[2,0]="Famae"
	gunname[2,1]="Mendoza"
	gunname[2,2]="Shotgun"
	gunname[2,3]="Silencer"

	guns[2]=3

	melee[2,0]=sprColombianWalkMachete
	melee[2,1]=sprColombianWalkPipe
	melee[2,2]=sprColombianWalkKnife

	meleename[2,0]="Machete"
	meleename[2,1]="Pipe"
	meleename[2,2]="Knife"

	melees[2]=2

	idle[2,0]=sprColombianIdlePipe

	idlename[2,0]="Pipe"

	idles[2]=0


	//POLICE

	enemy[3,0]=sprPoliceWalkShotgun
	enemy[3,1]=sprPoliceWalkShotgun
	enemy[3,2]=sprPoliceWalk9mm
	enemy[3,3]=sprPoliceWalkStick
	enemy[3,4]=sprPoliceWalkStick
	enemy[3,5]=sprFatPoliceWalk
	enemy[3,6]=sprDogWalk

	gun[3,0]=sprPoliceWalk9mm
	gun[3,1]=sprPoliceWalkShotgun

	gunname[3,0]="9mm"
	gunname[3,1]="Shotgun"

	guns[3]=1

	melee[3,0]=sprPoliceWalkStick

	meleename[3,0]="Baton"

	melees[3]=0

	idle[3,0]=sprPoliceTalk

	idlename[3,0]="Talk"

	idles[3]=0

	//SOLDIERS

	enemy[4,0]=sprSoldierWalkKalashnikov
	enemy[4,1]=sprSoldierWalkKalashnikov
	enemy[4,2]=sprSoldierWalkKalashnikov
	enemy[4,3]=sprSoldierWalkMachete
	enemy[4,4]=sprSoldierWalkMachete
	enemy[4,5]=sprFatSoldierWalkGun
	enemy[4,6]=sprDogWalk

	gun[4,0]=sprSoldierWalkKalashnikov

	gunname[4,0]="Kalashnikov"

	guns[4]=0

	melee[4,0]=sprSoldierWalkMachete

	meleename[4,0]="Machete"

	melees[4]=0

	idle[4,0]=sprSoldierIdleRain
	idle[4,1]=sprSoldierIdlePonchoSmoke

	idlename[4,0]="Poncho"
	idlename[4,1]="Smoke"

	idles[4]=0

	//GUARDS

	enemy[5,0]=sprGuardWalkMagnum
	enemy[5,1]=sprGuardWalkShotgun
	enemy[5,2]=sprGuardWalkShotgun
	enemy[5,3]=sprGuardWalkStick
	enemy[5,4]=sprGuardWalkStick
	enemy[5,5]=sprFatPoliceWalk
	enemy[5,6]=sprDogWalk

	gun[5,0]=sprGuardWalkMagnum
	gun[5,1]=sprGuardWalkShotgun

	gunname[5,0]="Magnum"
	gunname[5,1]="Shotgun"

	guns[5]=1

	melee[5,0]=sprGuardWalkStick

	meleename[5,0]="Baton"

	melees[5]=0

	idle[5,0]=sprPoliceTalk

	idlename[5,0]="TALK"

	idles[5]=-1


	enemytype[0]="STATIC"
	enemytype[1]="PATROL"
	enemytype[2]="RANDOM"
	enemytype[3]="PATROL"
	enemytype[4]="RANDOM"
	enemytype[5]="FAT"
	enemytype[6]="DOG"

	enemydesc[0]="Stands still until player is seen"
	enemydesc[1]="Turns 90 degrees left when path is blocked"
	enemydesc[2]="Walks around randomly, occasionally stops"
	enemydesc[3]="Turns 90 degrees left when path is blocked"
	enemydesc[4]="Walks around randomly, occasionally stops"
	enemydesc[5]="Turns 90 degrees left when path is blocked"
	enemydesc[6]="Follows left wall, turns around corners"

	enemygroup[0]="MAFIA"
	enemygroup[1]="GANG"
	enemygroup[2]="COLOMBIAN"
	enemygroup[3]="POLICE"
	enemygroup[4]="SOLDIER"
	enemygroup[5]="GUARD"

	//OBJECTS

	etype[0,0]=objEMafiaStatic
	etype[0,1]=objEMafiaPatrol
	etype[0,2]=objEMafiaRandom
	etype[0,3]=objEMafiaMeleePatrol
	etype[0,4]=objEMafiaMeleeRandom
	etype[0,5]=objEMafiaFat
	etype[0,6]=objDogPatrol

	etype[1,0]=objEGangStatic
	etype[1,1]=objEGangPatrol
	etype[1,2]=objEGangRandom
	etype[1,3]=objEGangMeleePatrol
	etype[1,4]=objEGangMeleeRandom
	etype[1,5]=objEGangFat
	etype[1,6]=objDogPatrol

	etype[2,0]=objColombianStatic
	etype[2,1]=objColombianPatrol
	etype[2,2]=objColombianRandom
	etype[2,3]=objColombianMeleePatrol
	etype[2,4]=objColombianMeleeRandom
	etype[2,5]=objEMafiaFat
	etype[2,6]=objDogPatrol

	etype[3,0]=objEPoliceStatic
	etype[3,1]=objEPolicePatrol
	etype[3,2]=objEPoliceRandom
	etype[3,3]=objEPoliceMeleePatrol
	etype[3,4]=objEPoliceMeleeRandom
	etype[3,5]=objFatPolice
	etype[3,6]=objDogPatrol

	etype[4,0]=objSoldierStatic
	etype[4,1]=objSoldierPatrol
	etype[4,2]=objSoldierRandom
	etype[4,3]=objSoldierMeleeRandom
	etype[4,4]=objSoldierMeleeRandom
	etype[4,5]=objSoldierFatGun
	etype[4,6]=objDogPatrol

	etype[5,0]=objGuardStatic
	etype[5,1]=objGuardPatrol
	etype[5,2]=objGuardRandom
	etype[5,3]=objGuardMeleePatrol
	etype[5,4]=objGuardMeleeRandom
	etype[5,5]=objFatPolice
	etype[5,6]=objDogPatrol

	legs[0]=sprEMafiaLegs
	legs[1]=sprEGangLegs
	legs[2]=sprColombianLegs
	legs[3]=sprPoliceLegs
	legs[4]=sprSoldierLegs
	legs[5]=sprGuardLegs

	etypes=5

	i=0
	repeat (6) {
	global.available[i]=0
	i+=1
	}
	global.available[1]=1

	enemyindex=0
	currentenemy=0
	currentetype=0
	scrEditorCorrectEnemyType(1)
	enemydir=0
	enemysprite=enemy[currentetype,currentenemy]



}
