function scrEditorCorrectEnemyType(argument0) {
	if argument0=1 {
	while global.available[currentetype]=0 {
	if currentetype<etypes currentetype+=1 else currentetype=0
	}
	} else {
	while global.available[currentetype]=0 {
	if currentetype>0 currentetype-=1 else currentetype=etypes
	}
	}



}
