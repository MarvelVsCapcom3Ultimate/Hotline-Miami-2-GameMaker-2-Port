function scrEditorDrawTileCapsule() {
	vwall=sprWallV hwall=sprWallH
	if currentwall=2 or currentwall=3 {vwall=sprBrickWallV hwall=sprBrickWallH}
	if currentwall=4 or currentwall=5 {vwall=sprSoftWallV hwall=sprSoftWallH}
	if tilestartx<tileendx and tilestarty<tileendy {
	i=0
	repeat abs(ceil((tilestartx-tileendx)*(1/32))) {
	draw_sprite(hwall,0,tilestartx+i*32,tilestarty)
	draw_sprite(hwall,0,tilestartx+i*32,tileendy)
	i+=1
	}
	} 
	//UP RIGHT
	if tilestartx<tileendx and tilestarty>tileendy {
	i=0
	repeat abs(ceil((tilestartx-tileendx)*(1/32))) {
	draw_sprite(hwall,0,tilestartx+i*32,tilestarty+32)
	draw_sprite(hwall,0,tilestartx+i*32,tileendy)
	i+=1
	}
	} 
	//LEFT DOWN
	if tilestartx>tileendx and tilestarty<tileendy {
	i=0
	repeat abs(ceil((tilestartx-tileendx)*(1/32)))+1 {
	draw_sprite(hwall,0,tilestartx-i*32,tilestarty)
	draw_sprite(hwall,0,tilestartx-i*32,tileendy)
	i+=1
	}
	} 
	//LEFT UP
	if tilestartx>tileendx and tilestarty>tileendy {
	i=0
	repeat abs(ceil(((tilestartx-tileendx)-32)*(1/32)))+2 {
	draw_sprite(hwall,0,tilestartx-i*32,tilestarty+32)
	draw_sprite(hwall,0,tilestartx-i*32,tileendy)
	i+=1
	}
	}
	//vertical
	//DOWN RIGHT
	if tilestarty<tileendy and tilestartx<tileendx {
	i=0
	repeat abs(ceil((tilestarty-tileendy)*(1/32))) {
	draw_sprite(vwall,0,tilestartx,tilestarty+i*32)
	draw_sprite(vwall,0,tileendx,tilestarty+i*32)
	i+=1
	}
	} 
	//DOWN LEFT
	if tilestarty<tileendy and tilestartx>tileendx {
	i=0
	repeat abs(ceil((tilestarty-tileendy)*(1/32))) {
	draw_sprite(vwall,0,tilestartx+32,tilestarty+i*32)
	draw_sprite(vwall,0,tileendx,tilestarty+i*32)
	i+=1
	}
	} 
	//UP RIGHT
	if tilestarty>tileendy and tilestartx<tileendx {
	i=0
	repeat abs(ceil((tilestarty-tileendy)*(1/32)))+1 {
	draw_sprite(vwall,0,tilestartx,tilestarty-i*32)
	draw_sprite(vwall,0,tileendx,tilestarty-i*32)
	i+=1
	}
	} 
	//UP LEFT
	if tilestarty>tileendy and tilestartx>tileendx {
	i=0
	repeat abs(ceil(((tilestarty-tileendy))*(1/32)))+1 {
	draw_sprite(vwall,0,tilestartx+32,tilestarty-i*32)
	draw_sprite(vwall,0,tileendx,tilestarty-i*32)
	i+=1
	}
	}



}
