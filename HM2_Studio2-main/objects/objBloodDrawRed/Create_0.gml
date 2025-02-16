dir=0
index1=0
index2=22
start_y=0
alarm[0]=240
i=0
repeat (12) {
tree[i]=random(4)
i+=1
}
myx=0

repeat (32) {
myy=random(48)
instance_create(random(room_width),room_height/2+random(48),objSeaGlimmer)
}


fade=0
c_amount=0
camount=0

wait=40
reload=16
i=0
repeat (10) {
instance_create(0+i*128,room_height/2,objPalmTrees)
i+=1
}



sea=1
seax1=0
seax2=48
i=0 repeat (ceil(room_width/160)+1) {
instance_create(i*160,room_height/2-64,objSkyline1)
instance_create(i*160,room_height/2-64,objSkyline2)
i+=1
}
