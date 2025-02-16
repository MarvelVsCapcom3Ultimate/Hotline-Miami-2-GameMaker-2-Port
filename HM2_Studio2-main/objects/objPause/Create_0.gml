surf1 = surface_create(room_width,room_height)
surf2 = surface_create(room_width,room_height)
baseheight = room_height * 0.2;
top = room_height * 0.6;
i = 0;
lines = 10; 
repeat (lines) {
	liney[i] = random(room_height);
	i += 1;
}
state=0
symbol=4

rewline=0

rewind=choose(0,1)

wait=120
symbol=4
alpha=1

surf3=surface_create(room_width,room_height)
surface_set_target(surf3)
draw_sprite_ext(global.sprite,0,0,0,1/3,1/3,0,c_white,1)
surface_reset_target()

i=0
dists=3
firsty=random(room_height*0.3)
repeat (dists) {
disty[i]=firsty
distheight[i]=10+random(10)
firsty+=random(room_height*0.3)
i+=1
}

factor=0

on=1
sound_loop(sndStaticVHS)
