function scrEditorInitWeapons(argument0, argument1) {
	weapons=0
	if argument0=0 {
	if argument1=0 {
	weaponlabel[0,0]="M16"
	weaponlabel[0,1]="Shotgun"
	weaponlabel[0,2]="Double Barrel"
	weaponlabel[0,3]="Kalashnikov"
	weaponlabel[0,4]="Silencer"
	weaponsprite[0,0]=sprEMafiaWalkM16
	weaponsprite[0,1]=sprEMafiaWalkShotgun
	weaponsprite[0,2]=sprEMafiaWalkDoubleBarrel
	weaponsprite[0,3]=sprEMafiaWalkKalashnikov
	weaponsprite[0,4]=sprEMafiaWalkSilencer
	weapons=5
	}
	if argument1=1 {
	weaponlabel[0,0]="Bat"
	weaponlabel[0,1]="Club"
	weaponlabel[0,2]="Knife"
	weaponlabel[0,3]="Pipe"
	weaponsprite[0,0]=sprEMafiaWalkBat
	weaponsprite[0,1]=sprEMafiaWalkClub
	weaponsprite[0,2]=sprEMafiaWalkKnife
	weaponsprite[0,3]=sprEMafiaWalkPipe
	weapons=4
	}
	}

	if argument0=1 {
	if argument1=0 {
	weaponlabel[0,0]="Uzi"
	weaponlabel[0,1]="Shotgun"
	weaponlabel[0,2]="9mm"
	weaponsprite[0,0]=sprEGangWalkUzi
	weaponsprite[0,1]=sprEGangWalkShotgun
	weaponsprite[0,2]=sprEGangWalk9mm
	weapons=3
	}
	if argument1=1 {
	weaponlabel[0,0]="Bat"
	weaponlabel[0,1]="Chain"
	weaponlabel[0,2]="Knife"
	weaponlabel[0,3]="Pipe"
	weaponsprite[0,0]=sprEGangWalkBat
	weaponsprite[0,1]=sprEGangWalkChain
	weaponsprite[0,2]=sprEGangWalkKnife
	weaponsprite[0,3]=sprEGangWalkPipe
	weapons=4
	}
	}

	if argument0=2 {
	if argument1=0 {
	weaponlabel[0,0]="Famae"
	weaponlabel[0,1]="Mendoza"
	weaponlabel[0,2]="Shotgun"
	weaponlabel[0,3]="Silencer"
	weaponsprite[0,0]=sprColombianWalkFamae
	weaponsprite[0,1]=sprColombianWalkMendoza
	weaponsprite[0,2]=sprColombianWalkShotgun
	weaponsprite[0,3]=sprColombianWalkSilencer
	weapons=4
	}
	if argument1=1 {
	weaponlabel[0,0]="Knife"
	weaponlabel[0,1]="Machete"
	weaponlabel[0,2]="Pipe"
	weaponsprite[0,0]=sprColombianWalkKnife
	weaponsprite[0,1]=sprColombianWalkMachete
	weaponsprite[0,2]=sprColombianWalkPipe
	weapons=3
	}
	}

	if argument0=3 {
	if argument1=0 {
	weaponlabel[0,0]="Shotgun"
	weaponlabel[0,1]="9mm"
	weaponsprite[0,0]=sprPoliceWalkShotgun
	weaponsprite[0,1]=sprPoliceWalk9mm
	weapons=2
	}
	if argument1=1 {
	weaponlabel[0,0]="Baton"
	weaponsprite[0,0]=sprPoliceWalkStick
	weapons=1
	}
	}

	if argument0=4 {
	if argument1=0 {
	weaponlabel[0,0]="Kalashnikov"
	weaponsprite[0,0]=sprSoldierWalkKalashnikov
	weapons=1
	}
	if argument1=1 {
	weaponlabel[0,0]="Machete"
	weaponsprite[0,0]=sprSoldierWalkMachete
	weapons=1
	}
	}

	if argument0=5 {
	if argument1=0 {
	weaponlabel[0,0]="Shotgun"
	weaponlabel[0,1]="Magnum"
	weaponsprite[0,0]=sprGuardWalkShotgun
	weaponsprite[0,1]=sprGuardWalkMagnum
	weapons=2
	}
	if argument1=1 {
	weaponlabel[0,0]="Baton"
	weaponsprite[0,0]=sprGuardWalkStick
	weapons=1
	}
	}



}
