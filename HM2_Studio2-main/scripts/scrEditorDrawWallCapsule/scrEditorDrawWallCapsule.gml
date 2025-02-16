function scrEditorDrawWallCapsule() {
	vwall=sprWallV hwall=sprWallH
	if currentwall=2 or currentwall=3 {vwall=sprBrickWallV hwall=sprBrickWallH}
	if currentwall=4 or currentwall=5 {vwall=sprSoftWallV hwall=sprSoftWallH}
	if currentwall=8 or currentwall=9 {vwall=sprSewerWallV hwall=sprSewerWallH}
	if currentwall=10 or currentwall=11 {vwall=sprPorchWallV hwall=sprPorchWallH}
	if currentwall=12 or currentwall=13 {vwall=sprWoodWallV hwall=sprWoodWallH}
	wstartx=wallstartx
	wstarty=wallstarty
	wendy=wallendy
	wendx=wallendx

	if wallendx<wallstartx {
	wstartx=wallendx-32
	wendx=wallstartx+32
	}
	if wallendy<wallstarty {
	wstarty=wallendy-32
	wendy=wallstarty+32
	}

	if wstartx<wendx and wstarty<wendy {
	i=0
	repeat abs(ceil((wstartx-wendx)*(1/32))) {
	draw_sprite(hwall,0,wstartx+i*32,wstarty)
	draw_sprite(hwall,0,wstartx+i*32,wendy)
	i+=1
	}
	} 
	//UP RIGHT
	if wstartx<wendx and wstarty>wendy {
	i=0
	repeat abs(ceil((wstartx-wendx)*(1/32))) {
	draw_sprite(hwall,0,wstartx+i*32,wstarty+32)
	draw_sprite(hwall,0,wstartx+i*32,wendy)
	i+=1
	}
	} 
	//LEFT DOWN
	if wstartx>wendx and wstarty<wendy {
	i=0
	repeat abs(ceil((wstartx-wendx)*(1/32)))+1 {
	draw_sprite(hwall,0,wstartx-i*32,wstarty)
	draw_sprite(hwall,0,wstartx-i*32,wendy)
	i+=1
	}
	} 
	//LEFT UP
	if wstartx>wendx and wstarty>wendy {
	i=0
	repeat abs(ceil(((wstartx-wendx)-32)*(1/32)))+2 {
	draw_sprite(hwall,0,wstartx-i*32,wstarty+32)
	draw_sprite(hwall,0,wstartx-i*32,wendy)
	i+=1
	}
	}
	//vertical
	//DOWN RIGHT
	if wstarty<wendy and wstartx<wendx {
	i=0
	repeat abs(ceil((wstarty-wendy)*(1/32))) {
	draw_sprite(vwall,0,wstartx,wstarty+i*32)
	draw_sprite(vwall,0,wendx,wstarty+i*32)
	i+=1
	}
	} 
	//DOWN LEFT
	if wstarty<wendy and wstartx>wendx {
	i=0
	repeat abs(ceil((wstarty-wendy)*(1/32))) {
	draw_sprite(vwall,0,wstartx+32,wstarty+i*32)
	draw_sprite(vwall,0,wendx,wstarty+i*32)
	i+=1
	}
	} 
	//UP RIGHT
	if wstarty>wendy and wstartx<wendx {
	i=0
	repeat abs(ceil((wstarty-wendy)*(1/32)))+1 {
	draw_sprite(vwall,0,wstartx,wstarty-i*32)
	draw_sprite(vwall,0,wendx,wstarty-i*32)
	i+=1
	}
	} 
	//UP LEFT
	if wstarty>wendy and wstartx>wendx {
	i=0
	repeat abs(ceil(((wstarty-wendy))*(1/32)))+1 {
	draw_sprite(vwall,0,wstartx+32,wstarty-i*32)
	draw_sprite(vwall,0,wendx,wstarty-i*32)
	i+=1
	}
	}



}
