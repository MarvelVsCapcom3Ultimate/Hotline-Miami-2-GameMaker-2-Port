function scrInitLSD() {
	centerx=__view_get( e__VW.WView, 0 )*0.45
	centery=__view_get( e__VW.HView, 0 )*0.45
	i=0
	repeat (30) {
	myx[i]=centerx+lengthdir_x(360,i*12)
	myy[i]=centery+lengthdir_y(360,i*12)
	/*if myx[i]>640 myx[i]=640
	if myx[i]<0 myx[i]=0
	if myy[i]>480 myy[i]=480
	if myy[i]<0 myy[i]=0*/
	i+=1
	}
	xfactor=0
	yfactor=0



}
