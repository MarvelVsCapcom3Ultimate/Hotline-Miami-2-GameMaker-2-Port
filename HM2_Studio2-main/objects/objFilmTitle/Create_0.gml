myx=0
dir=0
surf=surface_create(room_width,room_height)
textx=0
texty=0
credita[0]="Devolver Digital"
credita[1]="a film by"
creditb[0]="presents"
creditb[1]="Rouven Blankenfeld"
wait=30
current=0
alarm[0]=300
creditx=320
credity=18
alpha=0
//scrInitMusic()
//scrPlaySong(working_directory+"\Detection.mp3")
on=1
amount=0

i=0
repeat (72) {
starx[i]=random(room_width)
stary[i]=random(room_height/2)
starsize[i]=random(2)*random(1)
starintensity[i]=random(1)
i+=1
}
flash=1
