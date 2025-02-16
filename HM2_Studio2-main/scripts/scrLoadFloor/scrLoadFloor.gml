function scrLoadFloor() {
	if file_exists("tempsave") 
	{
		scrResetGore(); 
		game_load("tempsave");
	}
}
