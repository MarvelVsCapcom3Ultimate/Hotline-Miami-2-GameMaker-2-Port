i=0
repeat (1000) {
if surface_exists(i) surface_free(i)
}
dir=0
i=0
repeat (138) {
mydir[i]=random(360)
i+=1
}
wait=1

surf=surface_create(room_width,room_height)

i=0 
repeat (10) {
stunt[i]=choose("Exposure","3x Combo","4x Combo","5x Combo","Long Shot","Execution")
i+=1
}
tree=0

amount=0
fade=0

i=0
repeat (1000) {
if path_exists(i) path_delete(i)
}

scrClearBlood()
