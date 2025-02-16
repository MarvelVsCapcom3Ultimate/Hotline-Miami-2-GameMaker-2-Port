function scrDrawTimeChange() {
	repeat (20) {
	scrDrawDate()
	//screen_refresh()
	sleep_hack(1000/90)
	if factor<1 factor+=0.05
	}

	wait1=30
	wait2=20
	wait3=20
	wait4=20
	wait5=20
	wait6=20

	while wait6>0 {
	if wait1>0 wait1-=1 
	if wait1=0 {if wait2>0 wait2-=1 else hour=global.hour2}
	if wait2=0 {if wait3>0 wait3-=1 else minute=global.minute2}
	if wait3=0 {if wait4>0 wait4-=1 else month=global.month2}
	if wait4=0 {if wait5>0 wait5-=1 else day=global.day2}
	if wait5=0 {if wait6>1 wait6-=1 else {wait6=0 year=global.year2}}
	scrDrawDate()
	//screen_refresh()
	sleep_hack(1000/90)
	}



}
