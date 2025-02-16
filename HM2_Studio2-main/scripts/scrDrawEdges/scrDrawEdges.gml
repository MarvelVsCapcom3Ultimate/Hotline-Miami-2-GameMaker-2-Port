function scrDrawEdges() {
	var startx,starty,endx,endy;

	startx=tilestartx
	endx=tileendx
	starty=tilestarty
	endy=tileendy

	if tilestartx>tileendx {startx=tileendx endx=tilestartx}
	if tilestarty>tileendy {starty=tileendy endy=tilestarty}


	if tiley[currenttileset]<128 {
	eleft=floor(tilex[currenttileset]*(1/64))*64
	eright=floor(tilex[currenttileset]*(1/64))*64+16
	ebottom=floor(tilex[currenttileset]*(1/64))*64+48
	etop=floor(tilex[currenttileset]*(1/64))*64+32


	i=0 
	repeat abs(starty-endy)*(1/16) {
	draw_background_part(tileset[currenttileset],eright,tiley[currenttileset],16,16,startx-16,starty+i*16)
	draw_background_part(tileset[currenttileset],eleft,tiley[currenttileset],16,16,endx,starty+i*16)
	i+=1
	}


	i=0 
	repeat abs(startx-endx)*(1/16) {
	draw_background_part(tileset[currenttileset],etop,tiley[currenttileset],16,16,startx+i*16,starty-16)
	draw_background_part(tileset[currenttileset],ebottom,tiley[currenttileset],16,16,startx+i*16,endy)
	i+=1
	}
	} else {
	eright=floor(tilex[currenttileset]*(1/64))*64
	eleft=floor(tilex[currenttileset]*(1/64))*64+16
	etop=floor(tilex[currenttileset]*(1/64))*64+48
	ebottom=floor(tilex[currenttileset]*(1/64))*64+32

	i=0 
	repeat abs(starty-endy)*(1/16) {
	draw_background_part(tileset[currenttileset],eright,tiley[currenttileset],16,16,startx,starty+i*16)
	draw_background_part(tileset[currenttileset],eleft,tiley[currenttileset],16,16,endx-16,starty+i*16)
	i+=1
	}


	i=0 
	repeat abs(startx-endx)*(1/16) {
	draw_background_part(tileset[currenttileset],etop,tiley[currenttileset],16,16,startx+i*16,starty)
	draw_background_part(tileset[currenttileset],ebottom,tiley[currenttileset],16,16,startx+i*16,endy-16)
	i+=1
	}
	}




}
