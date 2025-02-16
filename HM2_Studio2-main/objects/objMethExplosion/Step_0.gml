if on=1 {
if current_time-starttime>4000 {
if vol<1 {vol+=0.01 scrSongVolume(vol)}
}
}

if index>6 and heard=0 {
heard=1
scrHearSomething(x+77,y+75)
}
