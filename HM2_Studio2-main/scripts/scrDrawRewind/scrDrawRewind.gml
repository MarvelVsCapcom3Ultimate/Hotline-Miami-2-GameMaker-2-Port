function scrDrawRewind() {
	repeat (20) {
	scrDrawDate()
	//screen_refresh()
	sleep_hack(1000/60)
	if factor<1 factor+=0.05
	}

	if global.year1+global.month1*0.01>global.year2+global.month2*0.01 rewind=1 else rewind=0

	if rewind=0 {
	while day<global.day2-timespeed or month<global.month2 or year<global.year2 {
	if timespeed<7.31 timespeed+=0.1
	hour=floor(random(23))
	minute=floor(random(60))
	if day<days[month]-timespeed day+=timespeed else {
	day=1
	month+=1
	if month>11 {
	month=0
	year+=1
	}
	}
	scrDrawDate()
	//screen_refresh()
	sleep_hack(1000/60)
	} 
	day=global.day2
	month=global.month2 
	year=global.year2
	hour=global.hour2
	minute=global.minute2
	}



}
