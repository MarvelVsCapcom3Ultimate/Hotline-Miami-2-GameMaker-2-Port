function scrDrawNoise() {
	if noise>0 {
	noise-=1
	if nwait>0 nwait-=1 else {
	nx=-round(random(32))*2
	ny=-round(random(32))*2
	nindex=floor(random(4))
	nwait=1
	}
	draw_sprite_tiled_ext(sprStatic,nindex,nx,ny,2,2,c_white,1)
	}



}
