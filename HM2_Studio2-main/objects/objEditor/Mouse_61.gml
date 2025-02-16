if wait>0 exit
if select=3 {
if tilewall=0 {
if tilex[currenttileset]<background_get_width(tileset[currenttileset])-16 tilex[currenttileset]+=16 else {
tilex[currenttileset]=0
if tiley[currenttileset]<background_get_height(tileset[currenttileset])-16 tiley[currenttileset]+=16 else tiley[currenttileset]=0
}
}
}
