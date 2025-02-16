if !instance_exists(objGore) {instance_create(x,y,objGore) with objGore scrSurfaceTiles()}
/*
if !instance_exists(objBG) {
if instance_exists(objPigButcher) instance_create(x,y,objNewBGPig) 
if instance_exists(objSon) and !instance_exists(objLSD) {if room=rmLSDIntro nothing=1 else instance_create(x,y,objNewBGSon)}
if instance_exists(objLSD) {
if room=rmLSDIntro or room=rmLSDFloor1 instance_create(x,y,objNewBGNormal) else instance_create(x,y,objNewBGTiger)
}
if !instance_exists(objBG) instance_create(x,y,objNewBGNormal)
}*/
scrCreateBackground()
alarm[0]=1
roomkills = 0;
/* */
/*  */
