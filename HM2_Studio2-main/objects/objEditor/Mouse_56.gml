if wait>0 exit

global.moveid=-1

if tiledraw=1 {
if currenttileset<8 {

if tileendx<tilestartx {
tendx=tileendx
tstartx=tilestartx
tilestartx=tendx
if capsuletile=1 tileendx=tstartx+32 else tileendx=tstartx+16
}
if tileendy<tilestarty {
tendy=tileendy
tstarty=tilestarty
tilestarty=tendy
if capsuletile=1 tileendy=tstarty+32 else tileendy=tstarty+16
}
i=0
repeat abs((tilestartx-tileendx)*(1/16)) {
ii=0
repeat abs((tilestarty-tileendy)*(1/16)) {
tile_layer_delete_at(1001,tilestartx+i*16,tilestarty+ii*16)
ds_list_add(tilelist,tile_add(tileset[currenttileset],tilex[currenttileset],tiley[currenttileset],16,16,tilestartx+i*16,tilestarty+ii*16,1001))
if tilestarty<tileendy ii+=1 else ii-=1
}
if tilestartx<tileendx i+=1 else i-=1
}


if capsuletile {
//horizontal
vwall=objEditorWallV hwall=objEditorWallH
if currentwall=2 or currentwall=3 {vwall=objEditorBrickWallV hwall=objEditorBrickWallH}
if currentwall=4 or currentwall=5 {vwall=objEditorSoftWallV hwall=objEditorSoftWallH}
if currentwall=8 or currentwall=9 {vwall=objSewerWallV hwall=objSewerWallH}
if currentwall=10 or currentwall=11 {vwall=objEditorPorchWallV hwall=objEditorPorchWallH}
if currentwall=12 or currentwall=13 {vwall=objWoodWallV hwall=objWoodWallH}

//DOWN RIGHT
//if tilestartx<tileendx 

if tilestartx<tileendx and tilestarty<tileendy {
i=0
repeat abs(ceil((tilestartx-tileendx)*(1/32))) {
my_id=instance_create(tilestartx+i*32,tilestarty,hwall)
with my_id {if place_meeting(x,y,objEditorBrickWallH) or place_meeting(x,y,objEditorWallH) or place_meeting(x,y,objEditorSoftWallH) or place_meeting(x,y,objEditorPorchWallH) or place_meeting(x,y,objWoodWallH) or place_meeting(x,y,objSewerWallH) instance_destroy()}
my_id=instance_create(tilestartx+i*32,tileendy,hwall)
with my_id {if place_meeting(x,y,objEditorBrickWallH) or place_meeting(x,y,objEditorWallH) or place_meeting(x,y,objEditorSoftWallH) or place_meeting(x,y,objEditorPorchWallH) or place_meeting(x,y,objWoodWallH) or place_meeting(x,y,objSewerWallH) instance_destroy()}
i+=1
}
} 



if tilestarty<tileendy and tilestartx<tileendx {
i=0
repeat abs(ceil((tilestarty-tileendy)*(1/32))) {
my_id=instance_create(tilestartx,tilestarty+i*32,vwall)
with my_id {if place_meeting(x,y,objEditorBrickWallV) or place_meeting(x,y,objEditorWallV) or place_meeting(x,y,objEditorSoftWallV) or place_meeting(x,y,objEditorPorchWallV) or place_meeting(x,y,objWoodWallV) or place_meeting(x,y,objSewerWallV) instance_destroy()}
my_id=instance_create(tileendx,tilestarty+i*32,vwall)
with my_id {if place_meeting(x,y,objEditorBrickWallV) or place_meeting(x,y,objEditorWallV) or place_meeting(x,y,objEditorSoftWallV) or place_meeting(x,y,objEditorPorchWallV) or place_meeting(x,y,objWoodWallV) or place_meeting(x,y,objSewerWallV) instance_destroy()}
i+=1
}
} 


scrAddCorners()
}

}
else {
if currenttileset=9 and (abs(tilestartx-tileendx)>16 and abs(tilestarty-tileendy)>16) {
scrAddEdges()
} else {
i=0
repeat abs((tilestartx-tileendx)*(1/16)) {
ii=0
repeat abs((tilestarty-tileendy)*(1/16)) {
//tile_layer_delete_at(1000,tilestartx+i*16,tilestarty+ii*16)
ds_list_add(tilelist,tile_add(tileset[currenttileset],tilex[currenttileset],tiley[currenttileset],16,16,tilestartx+i*16,tilestarty+ii*16,1000))
if tilestarty<tileendy ii+=1 else ii-=1
}
if tilestartx<tileendx i+=1 else i-=1
}
}
}

}
tiledraw=0

if walldraw=1 {
if wallcapsule=1 {
if wallendx<wallstartx {
wendx=wallendx
wstartx=wallstartx
wallstartx=wendx-32
wallendx=wstartx+32
}
if wallendy<wallstarty {
wendy=wallendy
wstarty=wallstarty
wallstarty=wendy-32
wallendy=wstarty+32
}

//horizontal
vwall=objEditorWallV hwall=objEditorWallH
if currentwall=2 or currentwall=3 {vwall=objEditorBrickWallV hwall=objEditorBrickWallH}
if currentwall=4 or currentwall=5 {vwall=objEditorSoftWallV hwall=objEditorSoftWallH}
if currentwall=8 or currentwall=9 {vwall=objSewerWallV hwall=objSewerWallH}
if currentwall=10 or currentwall=11 {vwall=objEditorPorchWallV hwall=objEditorPorchWallH}
if currentwall=12 or currentwall=13 {vwall=objWoodWallV hwall=objWoodWallH}

//DOWN RIGHT
//if tilestartx<tileendx 

if wallstartx<wallendx and wallstarty<wallendy {
i=0
repeat abs(ceil((wallstartx-wallendx)*(1/32))) {
my_id=instance_create(wallstartx+i*32,wallstarty,hwall)
with my_id {if place_meeting(x,y,objEditorBrickWallH) or place_meeting(x,y,objEditorWallH) or place_meeting(x,y,objEditorSoftWallH) or place_meeting(x,y,objEditorPorchWallH) or place_meeting(x,y,objWoodWallH) or place_meeting(x,y,objSewerWallH) instance_destroy()}
my_id=instance_create(wallstartx+i*32,wallendy,hwall)
with my_id {if place_meeting(x,y,objEditorBrickWallH) or place_meeting(x,y,objEditorWallH) or place_meeting(x,y,objEditorSoftWallH) or place_meeting(x,y,objEditorPorchWallH) or place_meeting(x,y,objWoodWallH) or place_meeting(x,y,objSewerWallH) instance_destroy()}
i+=1
}
} 



if wallstarty<wallendy and wallstartx<wallendx {
i=0
repeat abs(ceil((wallstarty-wallendy)*(1/32))) {
my_id=instance_create(wallstartx,wallstarty+i*32,vwall)
with my_id {if place_meeting(x,y,objEditorBrickWallV) or place_meeting(x,y,objEditorWallV) or place_meeting(x,y,objEditorSoftWallV) or place_meeting(x,y,objEditorPorchWallV) or place_meeting(x,y,objWoodWallV) or place_meeting(x,y,objSewerWallV) instance_destroy()}
my_id=instance_create(wallendx,wallstarty+i*32,vwall)
with my_id {if place_meeting(x,y,objEditorBrickWallV) or place_meeting(x,y,objEditorWallV) or place_meeting(x,y,objEditorSoftWallV) or place_meeting(x,y,objEditorPorchWallV) or place_meeting(x,y,objWoodWallV) or place_meeting(x,y,objSewerWallV) instance_destroy()}
i+=1
}
} 


scrAddCorners()
} else {
i=0
if frac(currentwall*0.5)=0 wallhor=0 else wallhor=1
mywall=wallobj[currentwall]
global.mywall=mywall
if wallhor=1 {
times=abs(ceil((wallstartx-wallendx)*(1/32)))
if wallstartx>wallendx times+=2
repeat times {
my_id=instance_create(wallstartx+i*32,wallstarty,mywall) 
with my_id {if place_meeting(x,y,objEditorBrickWallH) or place_meeting(x,y,objEditorWallH) or place_meeting(x,y,objEditorSoftWallH) or place_meeting(x,y,objEditorPorchWallH) or place_meeting(x,y,objWoodWallH) or place_meeting(x,y,objSewerWallH) instance_destroy()}
if wallstartx<wallendx i+=1 else i-=1
}
scrAddCorners()
}

if wallhor=0 {
times=abs((wallstarty-wallendy)*(1/32))
if wallstarty>wallendy times+=2
repeat times {
my_id=instance_create(wallstartx,wallstarty+i*32,mywall)
with my_id {if place_meeting(x,y,objEditorBrickWallV) or place_meeting(x,y,objEditorWallV) or place_meeting(x,y,objEditorSoftWallV) or place_meeting(x,y,objEditorPorchWallV) or place_meeting(x,y,objWoodWallV) or place_meeting(x,y,objSewerWallV) instance_destroy()}
if wallstarty<wallendy i+=1 else i-=1
}
scrAddCorners()
}
}
}

walldraw=0


//Unused code

//UP RIGHT
/*
if tilestartx<tileendx and tilestarty>tileendy {
i=0
repeat abs(ceil((tilestartx-tileendx)*(1/32))) {
my_id=instance_create(tilestartx+i*32,tilestarty+32,hwall)
with my_id {if place_meeting(x,y,objEditorBrickWallH) or place_meeting(x,y,objEditorWallH) or place_meeting(x,y,objEditorSoftWallH) instance_destroy()}
my_id=instance_create(tilestartx+i*32,tileendy,hwall)
with my_id {if place_meeting(x,y,objEditorBrickWallH) or place_meeting(x,y,objEditorWallH) or place_meeting(x,y,objEditorSoftWallH) instance_destroy()}
i+=1
}
} 

//LEFT DOWN

if tilestartx>tileendx and tilestarty<tileendy {
i=0
repeat abs(ceil((tilestartx-tileendx)*(1/32)))+1 {
my_id=instance_create(tilestartx-i*32,tilestarty,hwall)
with my_id {if place_meeting(x,y,objEditorBrickWallH) or place_meeting(x,y,objEditorWallH) or place_meeting(x,y,objEditorSoftWallH) instance_destroy()}
my_id=instance_create(tilestartx-i*32,tileendy,hwall)
with my_id {if place_meeting(x,y,objEditorBrickWallH) or place_meeting(x,y,objEditorWallH) or place_meeting(x,y,objEditorSoftWallH) instance_destroy()}
i+=1
}
} 

//LEFT UP

if tilestartx>tileendx and tilestarty>tileendy {
i=0
repeat abs(ceil(((tilestartx-tileendx)-32)*(1/32)))+2 {
my_id=instance_create(tilestartx-i*32,tilestarty+32,hwall)
with my_id {if place_meeting(x,y,objEditorBrickWallH) or place_meeting(x,y,objEditorWallH) or place_meeting(x,y,objEditorSoftWallH) instance_destroy()}
my_id=instance_create(tilestartx-i*32,tileendy,hwall)
with my_id {if place_meeting(x,y,objEditorBrickWallH) or place_meeting(x,y,objEditorWallH) or place_meeting(x,y,objEditorSoftWallH) instance_destroy()}
i+=1
}
}
//vertical
//DOWN RIGHT

*/


/*
//DOWN LEFT
if tilestarty<tileendy and tilestartx>tileendx {
i=0
repeat abs(ceil((tilestarty-tileendy)*(1/32))) {
my_id=instance_create(tilestartx+32,tilestarty+i*32,vwall)
with my_id {if place_meeting(x,y,objEditorBrickWallV) or place_meeting(x,y,objEditorWallV) or place_meeting(x,y,objEditorSoftWallV) instance_destroy()}
my_id=instance_create(tileendx,tilestarty+i*32,vwall)
with my_id {if place_meeting(x,y,objEditorBrickWallV) or place_meeting(x,y,objEditorWallV) or place_meeting(x,y,objEditorSoftWallV) instance_destroy()}
i+=1
}
} 
//UP RIGHT
if tilestarty>tileendy and tilestartx<tileendx {
i=0
repeat abs(ceil((tilestarty-tileendy)*(1/32)))+1 {
my_id=instance_create(tilestartx,tilestarty-i*32,vwall)
with my_id {if place_meeting(x,y,objEditorBrickWallV) or place_meeting(x,y,objEditorWallV) or place_meeting(x,y,objEditorSoftWallV) instance_destroy()}
my_id=instance_create(tileendx,tilestarty-i*32,vwall)
with my_id {if place_meeting(x,y,objEditorBrickWallV) or place_meeting(x,y,objEditorWallV) or place_meeting(x,y,objEditorSoftWallV) instance_destroy()}
i+=1
}
} 
//UP LEFT
if tilestarty>tileendy and tilestartx>tileendx {
i=0
repeat abs(ceil(((tilestarty-tileendy))*(1/32)))+1 {
my_id=instance_create(tilestartx+32,tilestarty-i*32,vwall)
with my_id {if place_meeting(x,y,objEditorBrickWallV) or place_meeting(x,y,objEditorWallV) or place_meeting(x,y,objEditorSoftWallV) instance_destroy()}
my_id=instance_create(tileendx,tilestarty-i*32,vwall)
with my_id {if place_meeting(x,y,objEditorBrickWallV) or place_meeting(x,y,objEditorWallV) or place_meeting(x,y,objEditorSoftWallV) instance_destroy()}
i+=1
}
}
*/

/* */
/*  */
