function scrEditorFurnitureSnap() {
	mask=mask_index
	if global.moveid>0 {
	image_index=global.moveid.image_index
	mask_index=global.moveid.sprite_index
	image_angle=global.moveid.image_angle
	} else {
	image_index=objWindowList.index
	mask_index=objWindowList.mysprite
	image_angle=enemydir
	}
	if place_free(mousex,mousey) {
	myleft=place_free(mousex-8,mousey)
	myright=place_free(mousex+8,mousey)
	if myleft=0 {
	while place_free(mousex-1,mousey) mousex-=1
	} else {
	if myright=0 {
	while place_free(mousex+1,mousey) mousex+=1
	}
	}
	myup=place_free(mousex,mousey-8)
	mydown=place_free(mousex,mousey+8)
	if myup=0 {
	while place_free(mousex,mousey-1) mousey-=1
	} else {
	if mydown=0 {
	while place_free(mousex,mousey+1) mousey+=1
	}
	}
	} else {
	myleft=place_free(mousex-8,mousey)
	myright=place_free(mousex+8,mousey)
	if myleft=1 {
	while !place_free(mousex-1,mousey) mousex-=1
	} else {
	if myright=1 {
	while !place_free(mousex+1,mousey) mousex+=1
	}
	}
	myup=place_free(mousex,mousey-8)
	mydown=place_free(mousex,mousey+8)
	if myup=1 {
	while !place_free(mousex,mousey-1) mousey-=1
	} else {
	if mydown=1 {
	while !place_free(mousex,mousey+1) mousey+=1
	}
	}
	}
	mask_index=mask
	image_angle=0



}
