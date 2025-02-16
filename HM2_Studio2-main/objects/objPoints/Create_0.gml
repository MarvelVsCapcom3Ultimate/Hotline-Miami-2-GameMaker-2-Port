if room=rmTutorialFloor1 or room=rmTutorialFloor2 {
instance_destroy()
exit
}

str = choose(string(ceil(random(10)))+"X COMBO",string(ceil(random(20))*100)+"pts")
dir = 90
amount = 0
surface = surface_create(128,128)

global.combotime=180
global.combo+=1
