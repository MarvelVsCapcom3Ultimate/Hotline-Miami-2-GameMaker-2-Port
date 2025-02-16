image_xscale=10
if place_meeting(x,y,objPlayer) {
if image_angle=0 {
i=0 
repeat (20) {
if y+4+shirtpos[i]<objPlayer.y+10 and y+4+shirtpos[i]>objPlayer.y-10 {
if objPlayer.y<y+4+shirtpos[i] targetshirtdir[i]=-10+((y+4+shirtpos[i])-objPlayer.y) else targetshirtdir[i]=10-(objPlayer.y-(y+4+shirtpos[i]))
} else targetshirtdir[i]=0
i+=1
}
}

if image_angle=90 {
i=0 
repeat (20) {
if x+4+shirtpos[i]<objPlayer.x+10 and x+4+shirtpos[i]>objPlayer.x-10 {
if objPlayer.x<x+4+shirtpos[i] targetshirtdir[i]=-10+((x+4+shirtpos[i])-objPlayer.x) else targetshirtdir[i]=10-(objPlayer.x-(x+4+shirtpos[i]))
} else targetshirtdir[i]=0
i+=1
}
}

if image_angle=180 {

}

if image_angle=270 {

}

} else {
i=0
repeat (20) {
targetshirtdir[i]=0
i+=1
}
}
image_xscale=1

i=0 repeat (20) {
if shirtdir[i]<targetshirtdir[i] shirtdir[i]+=2
if shirtdir[i]>targetshirtdir[i] shirtdir[i]-=2
i+=1
}
