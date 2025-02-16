//if level=0 game_end()
if level=1 {
if box[current].addx>0 nothing=1 else {
level=0
i=0 
repeat (9) {
box[i].active=0
i+=1
}
level=0
change=1
}
}
