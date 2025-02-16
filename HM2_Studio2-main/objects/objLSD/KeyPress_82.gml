if !instance_exists(objPlayerDead) exit
if file_exists("tempsave") {scrResetActiveSurfaces() scrLoadFloor()} else game_restart()
