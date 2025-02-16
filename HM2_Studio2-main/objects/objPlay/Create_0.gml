surf1=surface_create(room_width,room_height)
surf2=surface_create(room_width,room_height)
top=room_height*0.1+random(room_height*0.2)
baseheight=room_height*0.3+random(room_height*0.2)
i=0
lines=floor(random(4)) 
repeat (lines) {
liney[i]=random(room_height)
i+=1
}
state=0
symboltimer=59
symbol=0

rewline=0

rewind=global.rewind

wait=120
symbol=2
sound_play(sndPressStop)
alpha=1
