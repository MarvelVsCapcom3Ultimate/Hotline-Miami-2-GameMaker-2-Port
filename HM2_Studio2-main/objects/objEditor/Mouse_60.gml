if wait>0 exit
if select=0 {
if tilewall=0 {
if tilex[currenttileset]>0 tilex[currenttileset]-=16 else {
tilex[currenttileset]=background_get_width(tileset[currenttileset])-16
if tiley[currenttileset]>0 tiley[currenttileset]-=16 else tiley[currenttileset]=background_get_height(tileset[currenttileset])-16
}
}
}
