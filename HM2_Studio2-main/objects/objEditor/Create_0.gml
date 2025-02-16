instance_create(0,0,objCursor)
image_speed=0
global.hud=1
global.levelname="UNTITLED"
global.player=0
global.mysong=0
songfile = [voyager, 
			Technoir, 
			Divide, 
			Decade, 
			NewWave, 
			evil, 
			Remorse, 
			Sexualizer, 
			Delay, 
			Benjamin, 
			Pursuit, 
			voyager, 
			Quixotic, 
			HotlineTheme,
			voyager, 
			voyager, 
			BurningCoals, 
			AcidSpit, 
			NARC, 
			Fahkeet, 
			Detection];

i=0 repeat (21) {
if !file_exists(songfile[i]) show_message(songfile[i])
i+=1
}

instance_create(0, 0, objTopMenu);
instance_create(0, 0, objSelectPlayer);
select=4
dir=0
tilewall=0
//tiles
tileset[0]=tlFloor
tileset[1]=tlRugs
tileset[2]=tlTile
tileset[3]=tlBathroom
tileset[4]=tlStairs
tileset[5]=tlAsphalt
tileset[6]=tlTrain
tileset[7]=tlSand
tileset[8]=tlDirtBlood
tileset[9]=tlEdges
tilelist=ds_list_create()
tilename[0]="FLOOR"
tilename[1]="RUGS"
tilename[2]="TILE"
tilename[3]="BATHROOM"
tilename[4]="STAIRS"
tilename[5]="ASPHALT"
tilename[6]="TRAIN"
tilename[7]="OUTDOOR"
tilename[8]="LITTER"
tilename[9]="EDGES"
tiles=9
surf=-124314123
currenttileset=0
i=0
repeat (tiles+1) {
tilex[i]=0
tiley[i]=0
i+=1
}
capsuletile=0
sample=0
tilestartx=0
tilestarty=0
tileendx=0
tileendy=0
tiledraw=0

//Wall
walltype=0
wallstartx=0
wallendx=0
wallstarty=0
wallendy=0
wallhor=1
walldraw=0

gridon=1

cursorindex=0

fill=0

label[0]="Build"
label[1]="Items"
label[2]="Enemy"
label[3]="Guns"
label[4]="Level"

wall[0]=sprWallV
wall[1]=sprWallH
wall[2]=sprBrickWallV
wall[3]=sprBrickWallH
wall[4]=sprSoftWallV
wall[5]=sprSoftWallH
wall[6]=sprDoorV
wall[7]=sprDoorH
wall[8]=sprSewerWallV
wall[9]=sprSewerWallH
wall[10]=sprPorchWallV
wall[11]=sprPorchWallH
wall[12]=sprWoodWallV
wall[13]=sprWoodWallH
wall[14]=sprWoodWindowV
wall[15]=sprWoodWindowH
wallobj[0]=objEditorWallV
wallobj[1]=objEditorWallH
wallobj[2]=objEditorBrickWallV
wallobj[3]=objEditorBrickWallH
wallobj[4]=objEditorSoftWallV
wallobj[5]=objEditorSoftWallH
wallobj[6]=objEditorDoorV
wallobj[7]=objEditorDoorH
wallobj[8]=objSewerWallV
wallobj[9]=objSewerWallH
wallobj[10]=objEditorPorchWallV
wallobj[11]=objEditorPorchWallH
wallobj[12]=objWoodWallV
wallobj[13]=objWoodWallH
wallobj[14]=objWoodWindowV
wallobj[15]=objWoodWindowH
currentwall=0
wallcapsule=0

scrEditorInitEnemies()

help[0]="COMMANDS#-Left click to place tile#-Right click to remove tile#-Hold [CTRL] to place tile freely#-Hold [SHIFT] and click to sample tile#-Use [SCROLL WHEEL] to change tile"
help[1]="COMMANDS#-Left click to place object#-Right click to remove object#-Hold [CTRL] and right click to rotate object#-Hold [CTRL] and left click an object to move it"
help[2]="COMMANDS#-Left click to place enemy#-Right click to remove enemy#-Hold [CTRL] and right click to rotate enemy#-Hold [CTRL] and left click an enemy to move it"
help[3]=""
help[4]="COMMANDS#-Left click to place object#-Right click to remove object#-Hold [CTRL] and right click to rotate object"
help[5]="COMMANDS#-Left click to place wall#-Right click to remove wall#-Hold [CTRL] and right click to toggle Vert/Hor"




leveltitle="Untitled"
chapter=1

scrEditorSortFurniture()

floor1=-1244

scrEditorTilesLayerSetVisible()

wait=0

global.moveid=-1

player[0]=-1
player[1]=sprCopWalkUnarmed
player[2]=sprWriterWalkUnarmed
player[3]=sprNickeWalkUnarmed
player[4]=-1
player[5]=sprRatWalkUnarmed
player[6]=sprCobraWalkUnarmed
player[7]=sprPigWalkUnarmed
player[8]=sprHenchmanWalkUnarmed
playerobject[0]=-1
playerobject[1]=objCop
playerobject[2]=objWriter
playerobject[3]=objNicke
playerobject[4]=-1
playerobject[5]=objRat
playerobject[6]=objPlayerCobra
playerobject[7]=objPigButcher
playerobject[8]=objPlayerHenchman
placeplayer=0



car[0]=sprFansVan
car[1]=sprCopCar
car[2]=sprTaxi
car[3]=-1
car[4]=sprSonCar
car[5]=-1
car[6]=sprCobraCar
car[7]=-1
car[8]=sprHenchmanCar
carobject[0]=objFansVan
carobject[1]=objCopCar
carobject[2]=objTaxi
carobject[3]=-1
carobject[4]=objSonCar
carobject[5]=-1
carobject[6]=objCobraCar
carobject[7]=-1
carobject[8]=objHenchmanCar
placecar=0

global.level=-1234
