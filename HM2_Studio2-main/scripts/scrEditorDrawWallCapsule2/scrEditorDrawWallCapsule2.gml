function scrEditorDrawWallCapsule2() {
	vwall=sprWallV hwall=sprWallH
	if currentwall=2 or currentwall=3 {vwall=sprBrickWallV hwall=sprBrickWallH}
	if currentwall=4 or currentwall=5 {vwall=sprSoftWallV hwall=sprSoftWallH}
	if currentwall=8 or currentwall=9 {vwall=sprSewerWallV hwall=sprSewerWallH}
	if currentwall=10 or currentwall=11 {vwall=sprPorchWallV hwall=sprPorchWallH}
	if currentwall=12 or currentwall=13 {vwall=sprWoodWallV hwall=sprWoodWallH}
	if wallstartx<wallendx and wallstarty<wallendy {
	i=0
	repeat abs(ceil((wallstartx-wallendx)*(1/32))) {
	draw_sprite(hwall,0,wallstartx+i*32,wallstarty)
	draw_sprite(hwall,0,wallstartx+i*32,wallendy)
	i+=1
	}
	} 
	//UP RIGHT
	if wallstartx<wallendx and wallstarty>wallendy {
	i=0
	repeat abs(ceil((wallstartx-wallendx)*(1/32))) {
	draw_sprite(hwall,0,wallstartx+i*32,wallstarty+32)
	draw_sprite(hwall,0,wallstartx+i*32,wallendy)
	i+=1
	}
	} 
	//LEFT DOWN
	if wallstartx>wallendx and wallstarty<wallendy {
	i=0
	repeat abs(ceil((wallstartx-wallendx)*(1/32)))+1 {
	draw_sprite(hwall,0,wallstartx-i*32,wallstarty)
	draw_sprite(hwall,0,wallstartx-i*32,wallendy)
	i+=1
	}
	} 
	//LEFT UP
	if wallstartx>wallendx and wallstarty>wallendy {
	i=0
	repeat abs(ceil(((wallstartx-wallendx)-32)*(1/32)))+2 {
	draw_sprite(hwall,0,wallstartx-i*32,wallstarty+32)
	draw_sprite(hwall,0,wallstartx-i*32,wallendy)
	i+=1
	}
	}
	//vertical
	//DOWN RIGHT
	if wallstarty<wallendy and wallstartx<wallendx {
	i=0
	repeat abs(ceil((wallstarty-wallendy)*(1/32))) {
	draw_sprite(vwall,0,wallstartx,wallstarty+i*32)
	draw_sprite(vwall,0,wallendx,wallstarty+i*32)
	i+=1
	}
	} 
	//DOWN LEFT
	if wallstarty<wallendy and wallstartx>wallendx {
	i=0
	repeat abs(ceil((wallstarty-wallendy)*(1/32))) {
	draw_sprite(vwall,0,wallstartx+32,wallstarty+i*32)
	draw_sprite(vwall,0,wallendx,wallstarty+i*32)
	i+=1
	}
	} 
	//UP RIGHT
	if wallstarty>wallendy and wallstartx<wallendx {
	i=0
	repeat abs(ceil((wallstarty-wallendy)*(1/32)))+1 {
	draw_sprite(vwall,0,wallstartx,wallstarty-i*32)
	draw_sprite(vwall,0,wallendx,wallstarty-i*32)
	i+=1
	}
	} 
	//UP LEFT
	if wallstarty>wallendy and wallstartx>wallendx {
	i=0
	repeat abs(ceil(((wallstarty-wallendy))*(1/32)))+1 {
	draw_sprite(vwall,0,wallstartx+32,wallstarty-i*32)
	draw_sprite(vwall,0,wallendx,wallstarty-i*32)
	i+=1
	}
	}



}
