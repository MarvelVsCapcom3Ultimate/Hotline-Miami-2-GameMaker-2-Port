function scrInitSoldierStatic() {
	ammo=0
	reload=15
	alert=0
	checkreload=random(30)
	lookreload=random(10)
	path=path_add()
	path_set_closed(path,false)
	check=1
	startx=x
	starty=y
	startdir=direction
	image_speed=0
	returning=0
	armed=1
	turn=0
	alertwait=-1
	left=1
	killed=0
	chasereload=-1
	energie=1
	seen=1
	angle=direction



}
